package trinsic;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.concurrent.ExecutionException;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.provider.v1.CreateEcosystemRequest;
import trinsic.services.universalwallet.v1.CreateWalletRequest;
import trinsic.services.verifiablecredentials.v1.*;

public class CredentialsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var unsignedCredential = Files.readString(vaccineCertUnsignedPath());
    var proofRequestJson = Files.readString(vaccineCertFramePath());
    var recipientEmail = "example@trinsic.id";

    var serverConfig = TrinsicUtilities.getTrinsicTrinsicOptions();

    var trinsic = new TrinsicService(serverConfig);
    var ecosystemId =
        trinsic
            .provider()
            .createEcosystem(CreateEcosystemRequest.getDefaultInstance())
            .get()
            .getEcosystem()
            .getId();

    var issuerVerifier =
        trinsic
            .wallet()
            .createWallet(CreateWalletRequest.newBuilder().setEcosystemId(ecosystemId).build())
            .get();
    var holder =
        trinsic
            .wallet()
            .createWallet(CreateWalletRequest.newBuilder().setEcosystemId(ecosystemId).build())
            .get();

    trinsic.setAuthToken(issuerVerifier.getAuthToken());

    // issueCredentialSample() {
    var issueResult =
        trinsic
            .credential()
            .issue(IssueRequest.newBuilder().setDocumentJson(unsignedCredential).build())
            .get();

    var signedCredentialJson = issueResult.getSignedDocumentJson();
    // }

    System.out.println("Credential: " + signedCredentialJson);

    trinsic.setAuthToken(holder.getAuthToken());
    // createProof() {
    var createProofResponse =
        trinsic
            .credential()
            .createProof(
                CreateProofRequest.newBuilder()
                    .setDocumentJson(signedCredentialJson)
                    .setRevealDocumentJson(proofRequestJson)
                    .build())
            .get();

    var credentialProof = createProofResponse.getProofDocumentJson();

    var selectiveProofResponse =
        trinsic
            .credential()
            .createProof(
                CreateProofRequest.newBuilder()
                    .setDocumentJson(signedCredentialJson)
                    .setRevealTemplate(
                        RevealTemplateAttributes.newBuilder()
                            .addTemplateAttributes("batchNumber")
                            .build())
                    .build())
            .get();

    var selectiveProof = selectiveProofResponse.getProofDocumentJson();
    // }

    System.out.println("Proof: " + credentialProof);

    try {
      // sendCredential() {
      trinsic
          .credential()
          .send(
              SendRequest.newBuilder()
                  .setDocumentJson(signedCredentialJson)
                  .setEmail(recipientEmail)
                  .build());
      // }
    } catch (RuntimeException re) {
      // This is okay, we don't expect that account to exist.
    }

    trinsic.setAuthToken(issuerVerifier.getAuthToken());
    // verifyProof() {
    var verifyProofResponse =
        trinsic
            .credential()
            .verifyProof(
                VerifyProofRequest.newBuilder().setProofDocumentJson(credentialProof).build())
            .get();

    boolean isValid = verifyProofResponse.getIsValid();
    // }

    var verifySelectiveProofResponse =
        trinsic
            .credential()
            .verifyProof(
                VerifyProofRequest.newBuilder().setProofDocumentJson(selectiveProof).build())
            .get();

    assert verifyProofResponse.getValidationResultsOrThrow("SignatureVerification").getIsValid();
    assert verifySelectiveProofResponse
        .getValidationResultsOrThrow("SignatureVerification")
        .getIsValid();

    trinsic.shutdown();
  }

  public static String baseTestPath() {
    return Path.of(new File("").getAbsolutePath(), "..", "devops", "testdata")
        .toAbsolutePath()
        .toString();
  }

  public static Path vaccineCertUnsignedPath() {
    return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
  }

  public static Path vaccineCertFramePath() {
    return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
  }
}
