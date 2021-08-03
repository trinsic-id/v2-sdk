import com.google.gson.Gson;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;

class TrinsicServicesTest {
    private static String baseTestPath() {
        return Path.of(new File("").getAbsolutePath(), "src","test").toAbsolutePath().toString();
    }
    private static Path vaccineCertUnsignedPath() {
        return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
    }

    private static Path vaccineCertFramePath() {
        return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
    }

    @Test
    public void testTrinsicServiceDemo() throws IOException, DidException {
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
    }

}