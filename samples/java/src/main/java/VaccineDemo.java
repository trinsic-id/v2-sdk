import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.CredentialsService;
import trinsic.services.WalletService;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.concurrent.ExecutionException;

public class VaccineDemo {

    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        // createService() {
        var serverConfig = TrinsicUtilities.getTrinsicServiceOptions();
        System.out.println("Connecting to:\n" + serverConfig);
        var accountService = new AccountService(serverConfig);
        // }

        // setupActors() {
        // Create 3 different profiles for each participant in the scenario
        var allison = accountService.signIn().get();
        var clinic = accountService.signIn().get();
        var airline = accountService.signIn().get();
        // }

        // createService() {
        var walletService = new WalletService(TrinsicUtilities.getTrinsicServiceOptions(allison));
        var credentialsService = new CredentialsService(TrinsicUtilities.getTrinsicServiceOptions(clinic));
        // }

        // storeAndRecallProfile() {
        var writeFile = new BufferedWriter(new FileWriter("allison.txt"));
        writeFile.write(allison);
        writeFile.flush();
        writeFile.close();

        // Create profile from existing data
        var readFile = new BufferedReader(new FileReader("allison.txt"));
        allison = readFile.readLine().strip();
        readFile.close();
        // }

        // issueCredential() {
        // Sign a credential as the clinic and send it to Allison
        var credentialJson = Files.readString(vaccineCertUnsignedPath());
        var issueResult = credentialsService.issueCredential(VerifiableCredentials.IssueRequest.newBuilder().setDocumentJson(credentialJson).build()).get();
        var credential = issueResult.getSignedDocumentJson();
        System.out.println("Credential: " + credential);
        // }

        // storeCredential() {
        // Alice stores the credential in her cloud wallet.
        var insertItemResponse = walletService.insertItem(UniversalWalletOuterClass.InsertItemRequest.newBuilder().setItemJson(credential).build()).get();
        final var itemId = insertItemResponse.getItemId();
        System.out.println("item id = " + itemId);
        // }

        // shareCredential() {
        // Allison shares the credential with the venue.
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a JSON-LD frame.
        credentialsService.setProfile(allison);
        var proofRequestJson = Files.readString(vaccineCertFramePath());
        var createProofResponse = credentialsService.createProof(VerifiableCredentials.CreateProofRequest.newBuilder().setItemId(itemId).setRevealDocumentJson(proofRequestJson).build()).get();
        var credentialProof = createProofResponse.getProofDocumentJson();
        System.out.println("Proof: " + credentialProof);
        // }

        // verifyCredential() {
        // The airline verifies the credential
        credentialsService.setProfile(airline);
        var verifyProofResponse = credentialsService.verifyProof(VerifiableCredentials.VerifyProofRequest.newBuilder().setProofDocumentJson(credentialProof).build()).get();
        var isValid = verifyProofResponse.getIsValid();
        System.out.println("Verification result: " + isValid);
        assert isValid;
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
