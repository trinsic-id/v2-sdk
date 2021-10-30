import com.google.gson.Gson;
import io.grpc.ManagedChannel;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.services.common.v1.ProviderOuterClass;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;

class TrinsicServicesTest {

    private static String baseTestPath() {
        return Path.of(new File("").getAbsolutePath(), "..","devops","testdata").toAbsolutePath().toString();
    }
    private static Path vaccineCertUnsignedPath() {
        return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
    }

    private static Path vaccineCertFramePath() {
        return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
    }

    @Test
    public void testServiceBaseSetProfile() throws IOException, DidException, InterruptedException {
        var serverAddress = System.getenv("TRINSIC_SERVER_ADDRESS");
        var walletService = new TrinsicWalletService(serverAddress, null);

        Assertions.assertThrows(IllegalArgumentException.class, walletService::getMetadata);
        var walletProfile = walletService.createWallet("");
        walletService.setProfile(walletProfile);
        Assertions.assertDoesNotThrow(walletService::getMetadata);

        walletService.shutdown();
    }

    @Test
    public void testProviderServiceInviteParticipant() throws IOException, DidException, InterruptedException {
        var serverAddress = System.getenv("TRINSIC_SERVER_ADDRESS");
        var walletService = new TrinsicWalletService(serverAddress, null);
        var providerService = new TrinsicProviderService(serverAddress, null);

        var wallet = walletService.createWallet("");
        var inviteResponse = providerService.inviteParticipant(ProviderOuterClass.InviteRequest.newBuilder()
                        .setParticipant(ProviderOuterClass.ParticipantType.participant_type_individual)
                        .setDescription("I dunno")
                        .setEmail("scott.phillips@trinsic.id")
                .build());
        Assertions.assertNotNull(inviteResponse);
        walletService.shutdown();
        providerService.shutdown();
    }

    @Test
    public void testInvalidURL() {
        var validHttpAddress = "http://localhost:5000";
        var validHttpsAddress = "https://localhost:5000";
        var missingPortAddress = "http://localhost";
        var missingProtocolAddress = "localhost:5000";
        var blankAddress = "";

        final var addresses = new String[] {validHttpAddress, validHttpsAddress, missingPortAddress, missingProtocolAddress, blankAddress};
        final var throwsException = new Boolean[] {false, false, true, true, true};

        for (int ij = 0; ij < addresses.length; ij++) {
            var myAddress = addresses[ij];
            var myMessage = "URL should throw: " + throwsException[ij] + ": " + myAddress;
            if (throwsException[ij])
                Assertions.assertThrows(MalformedURLException.class,  () -> createAndShutdownChannel(myAddress), myMessage);
            else
                Assertions.assertDoesNotThrow( () -> createAndShutdownChannel(myAddress), myMessage);
        }
    }

    private void createAndShutdownChannel(String myAddress) throws MalformedURLException {
        var channel = (ManagedChannel) Utilities.getChannel(myAddress, null);
        channel.shutdownNow();
    }

    @Test
    public void testTrinsicServiceDemo() throws IOException, DidException, InterruptedException {
        var serverAddress = System.getenv("TRINSIC_SERVER_ADDRESS");
        var walletService = new TrinsicWalletService(serverAddress, null);

        // SETUP ACTORS
        // Create 3 different profiles for each participant in the scenario
        var allison = walletService.createWallet("");
        var clinic = walletService.createWallet("");
        var airline = walletService.createWallet("");

        // Store profile for later use
        // File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

        // Create profile from existing data
        // var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

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

        System.out.println("Proof: {credential_proof}");

        // VERIFY CREDENTIAL
        // The airline verifies the credential
        walletService.setProfile(airline);
        var valid = walletService.verifyProof(credentialProof);

        System.out.println("Verification result: " + valid);

        Assertions.assertTrue(valid);

        walletService.shutdown();
    }

}