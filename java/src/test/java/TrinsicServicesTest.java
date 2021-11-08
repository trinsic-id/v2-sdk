import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.ManagedChannel;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;

class TrinsicServicesTest {

    private static String baseTestPath() {
        return Path.of(new File("").getAbsolutePath(), "..", "devops", "testdata").toAbsolutePath().toString();
    }

    private static Path vaccineCertUnsignedPath() {
        return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
    }

    private static Path vaccineCertFramePath() {
        return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
    }

    @Test
    public void testServiceBaseSetProfile() throws InterruptedException {
        var walletService = new TrinsicWalletService(Utilities.getTestServerConfig());

        Assertions.assertThrows(IllegalArgumentException.class, () -> walletService.getMetadata(null));
        walletService.shutdown();
    }

    @Test
    public void testProviderServiceInviteParticipant() throws IOException, InterruptedException {
        var providerService = new TrinsicProviderService(Utilities.getTestServerConfig());

        final var done1 = new CountDownLatch(1);
        providerService.inviteParticipant(ProviderOuterClass.InviteRequest.newBuilder()
                .setParticipant(ProviderOuterClass.ParticipantType.participant_type_individual)
                .setDescription("I dunno")
                .setEmail("scott.phillips@trinsic.id")
                .build(), new TestStreamObserver<>(done1) {
            @Override
            public void onNext(ProviderOuterClass.InviteResponse value) {
                Assertions.assertNotNull(value);
            }
        });
        done1.await();
    }


    @ParameterizedTest
    @ValueSource(strings = {"http://localhost:5000", "https://localhost:5000"})
    public void validUrlsShouldPass(String url) {
        Assertions.assertDoesNotThrow(() -> createAndShutdownChannel(url));
    }

    @ParameterizedTest
    @ValueSource(strings = {"http://localhost", "localhost:5000"})
    public void invalidUrlsShouldFail(String url) {
        Assertions.assertThrows(MalformedURLException.class, () -> createAndShutdownChannel(url));
    }

    private void createAndShutdownChannel(String myAddress) throws MalformedURLException {
        var channel = (ManagedChannel) Utilities.getChannel(Utilities.getConfigFromUrl(myAddress));
        channel.shutdownNow();
    }

    @Test
    public void testTrinsicServiceDemo() throws IOException, DidException, InterruptedException {
        var walletService = new TrinsicWalletService(Utilities.getTestServerConfig());

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        var awaiter = new AwaitService<UniversalWallet.CreateWalletResponse>();
        var allison = TrinsicWalletService.toWalletProfile(awaiter.awaitCall((observer) -> walletService.createWallet("", observer)));
        var clinic = TrinsicWalletService.toWalletProfile(awaiter.awaitCall((observer) -> walletService.createWallet("", observer)));
        var airline = TrinsicWalletService.toWalletProfile(awaiter.awaitCall((observer) -> walletService.createWallet("", observer)));

        // Store profile for later use
        // File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

        // Create profile from existing data
        // var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        walletService.setProfile(clinic);
        var credentialJson = new Gson().fromJson(Files.readString(vaccineCertUnsignedPath()), HashMap.class);
        var result = new AwaitService<VerifiableCredentials.IssueResponse>().awaitCall((observer) -> {
            try {
                walletService.issueCredential(credentialJson, observer);
            } catch (InvalidProtocolBufferException | DidException e) {
                e.printStackTrace();
            }
        });

        var credential = (new Gson()).fromJson(result.getDocument().getJsonString(), HashMap.class);
        System.out.println("Credential: " + credential);

        // STORE CREDENTIAL
        // Alice stores the credential in her cloud wallet.
        walletService.setProfile(allison);
        final String[] itemId = {null};
        final var done3 = new CountDownLatch(1);
        walletService.insertItem(credential, new TestStreamObserver<>(done3) {
            @Override
            public void onNext(UniversalWallet.InsertItemResponse value) {
                itemId[0] = value.getItemId();
            }
        });

        done3.await();

        System.out.println("item id = " + itemId[0]);
        // SHARE CREDENTIAL
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        walletService.setProfile(allison);
        var proofRequestJson = new Gson().fromJson(Files.readString(vaccineCertFramePath()), HashMap.class);
        final var done4 = new CountDownLatch(1);
        final var credentialProof = new HashMap[1];
        walletService.createProof(itemId[0], proofRequestJson, new TestStreamObserver<>(done4) {
            @Override
            public void onNext(VerifiableCredentials.CreateProofResponse value) {
                credentialProof[0] = (new Gson()).fromJson(value.getProofDocument().getJsonString(), HashMap.class);
            }
        });
        done4.await();

        System.out.println("Proof: " + credentialProof[0]);
        // VERIFY CREDENTIAL
        // The airline verifies the credential
        walletService.setProfile(airline);
        final var done5 = new CountDownLatch(1);
        final var isValid = new boolean[1];
        walletService.verifyProof(credentialProof[0], new TestStreamObserver<>(done5) {
            @Override
            public void onNext(VerifiableCredentials.VerifyProofResponse value) {
                isValid[0] = value.getValid();
            }
        });
        done5.await();
        System.out.println("Verification result: " + isValid[0]);
        Assertions.assertTrue(isValid[0]);
    }
}