import com.google.gson.Gson;
import io.grpc.ManagedChannel;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;

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
    public void testProviderServiceInviteParticipant() throws IOException, DidException {
        var walletService = new TrinsicWalletService(Utilities.getTestServerConfig());
        var walletProfile = walletService.createWallet("");
        var providerService = new TrinsicProviderService(Utilities.getTestServerConfig());
        providerService.profile = walletProfile;
        var invitation = ProviderOuterClass.InviteRequest.newBuilder()
                .setParticipant(ProviderOuterClass.ParticipantType.participant_type_individual)
                .setDescription("I dunno")
                .setEmail("scott.phillips@trinsic.id")
                .build();
        var response = providerService.inviteParticipant(invitation);
        Assertions.assertNotNull(response);
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
    public void testTrinsicServiceDemo() throws IOException, DidException {
        var walletService = new TrinsicWalletService(Utilities.getTestServerConfig());

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        var allison = walletService.createWallet("");
        var clinic = walletService.createWallet("");
        var airline = walletService.createWallet("");

        // Store profile for later use
        var writeFile = new FileOutputStream("allison.bin");
        writeFile.write(allison.toByteString().toByteArray());
        writeFile.close();

        // Create profile from existing data
        var readFile = new FileInputStream("allison.bin");
        var allisonBin = readFile.readAllBytes();
        readFile.close();

        allison = UniversalWallet.WalletProfile.newBuilder().mergeFrom(allisonBin).build();

        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        walletService.setProfile(clinic);
        var credentialJson = new Gson().fromJson(Files.readString(vaccineCertUnsignedPath()), HashMap.class);
        var credential = walletService.issueCredential(credentialJson);
        System.out.println("Credential: " + credential);

        // STORE CREDENTIAL
        // Alice stores the credential in her cloud wallet.
        walletService.setProfile(allison);
        var itemId = walletService.insertItem(credential);

        System.out.println("item id = " + itemId);
        // SHARE CREDENTIAL
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        walletService.setProfile(allison);
        var proofRequestJson = new Gson().fromJson(Files.readString(vaccineCertFramePath()), HashMap.class);
        var credentialProof = walletService.createProof(itemId, proofRequestJson);

        System.out.println("Proof: " + credentialProof);
        // VERIFY CREDENTIAL
        // The airline verifies the credential
        walletService.setProfile(airline);
        var isValid = walletService.verifyProof(credentialProof);
        System.out.println("Verification result: " + isValid);
        Assertions.assertTrue(isValid);
    }
}