import com.google.gson.Gson;
import org.junit.jupiter.api.Assertions;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.CredentialsService;
import trinsic.services.WalletService;
import trinsic.services.account.v1.Account;

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
        var serverConfig = TrinsicUtilities.getTestServerConfig();
        var accountService = new AccountService(null, serverConfig);
        // }

        // setupActors() {
        // Create 3 different profiles for each participant in the scenario
        var allison = accountService.signIn(null).getProfile();
        var clinic = accountService.signIn(null).getProfile();
        var airline = accountService.signIn(null).getProfile();
        // }

        // createService() {
        var walletService = new WalletService(allison, serverConfig);
        var credentialsService = new CredentialsService(clinic, serverConfig);
        // }

        // storeAndRecallProfile() {
        var writeFile = new FileOutputStream("allison.bin");
        writeFile.write(allison.toByteString().toByteArray());
        writeFile.close();

        // Create profile from existing data
        var readFile = new FileInputStream("allison.bin");
        var allisonBin = readFile.readAllBytes();
        readFile.close();
        allison = Account.AccountProfile.newBuilder().mergeFrom(allisonBin).build();
        // }

        // issueCredential() {
        // Sign a credential as the clinic and send it to Allison
        var credentialJson = new Gson().fromJson(Files.readString(vaccineCertUnsignedPath()), HashMap.class);
        var credential = credentialsService.issueCredential(credentialJson);
        System.out.println("Credential: " + credential);
        // }

        // storeCredential() {
        // Alice stores the credential in her cloud wallet.
        var itemId = walletService.insertItem(credential);
        System.out.println("item id = " + itemId);
        // }

        // shareCredential() {
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        credentialsService.setProfile(allison);
        var proofRequestJson = new Gson().fromJson(Files.readString(vaccineCertFramePath()), HashMap.class);
        var credentialProof = credentialsService.createProof(itemId, proofRequestJson);
        System.out.println("Proof: " + credentialProof);
        // }

        // verifyCredential() {
        // The airline verifies the credential
        credentialsService.setProfile(airline);
        var isValid = credentialsService.verifyProof(credentialProof);
        System.out.println("Verification result: " + isValid);
        Assertions.assertTrue(isValid);
        // }

        accountService.shutdown();
        credentialsService.shutdown();
        walletService.shutdown();
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
