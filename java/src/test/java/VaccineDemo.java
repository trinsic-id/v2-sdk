import com.google.gson.Gson;
import org.junit.jupiter.api.Assertions;
import trinsic.services.universalwallet.v1.UniversalWallet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;

public class VaccineDemo {

    public static void main(String[] args) throws IOException, DidException {
        // Make sure you set the TEST_SERVER_ENDPOINT environment variable
        run();
    }

    public static void run() throws IOException, DidException {
        // createService() {
        var walletService = new TrinsicWalletService(TrinsicUtilities.getTestServerConfig());
        // }

        // setupActors() {
        // Create 3 different profiles for each participant in the scenario
        var allison = walletService.createWallet("");
        var clinic = walletService.createWallet("");
        var airline = walletService.createWallet("");
        // }

        // storeAndRecallProfile() {
        var writeFile = new FileOutputStream("allison.bin");
        writeFile.write(allison.toByteString().toByteArray());
        writeFile.close();

        // Create profile from existing data
        var readFile = new FileInputStream("allison.bin");
        var allisonBin = readFile.readAllBytes();
        readFile.close();
        allison = UniversalWallet.WalletProfile.newBuilder().mergeFrom(allisonBin).build();
        // }

        // issueCredential() {
        // Sign a credential as the clinic and send it to Allison
        walletService.setProfile(clinic);
        var credentialJson = new Gson().fromJson(Files.readString(vaccineCertUnsignedPath()), HashMap.class);
        var credential = walletService.issueCredential(credentialJson);
        System.out.println("Credential: " + credential);
        // }

        // storeCredential() {
        // Alice stores the credential in her cloud wallet.
        walletService.setProfile(allison);
        var itemId = walletService.insertItem(credential);
        System.out.println("item id = " + itemId);
        // }

        // shareCredential() {
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        walletService.setProfile(allison);
        var proofRequestJson = new Gson().fromJson(Files.readString(vaccineCertFramePath()), HashMap.class);
        var credentialProof = walletService.createProof(itemId, proofRequestJson);
        System.out.println("Proof: " + credentialProof);
        // }

        // verifyCredential() {
        // The airline verifies the credential
        walletService.setProfile(airline);
        var isValid = walletService.verifyProof(credentialProof);
        System.out.println("Verification result: " + isValid);
        Assertions.assertTrue(isValid);
        // }
    }

    // pathData() {
    public static String baseTestPath() {
        return Path.of(new File("").getAbsolutePath(), "..", "devops", "testdata").toAbsolutePath().toString();
    }

    public static Path vaccineCertUnsignedPath() {
        return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
    }

    public static Path vaccineCertFramePath() {
        return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
    }
    // }
}
