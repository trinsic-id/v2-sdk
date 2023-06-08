package trinsic;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.services.TrinsicService;
import trinsic.services.provider.v1.CreateEcosystemRequest;
import trinsic.services.trustregistry.v1.*;

public class TrustRegistryDemo {
  private static String myEcosystemIdOrName = "default";

  public static void main(String[] args)
      throws IOException, ExecutionException, InterruptedException {
    run();
  }

  public static void run() throws IOException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicTrinsicOptions());
    var eco = trinsic.provider().createEcosystem(CreateEcosystemRequest.newBuilder().build()).get();

    var didUri = "did:example:test";
    var typeUri = "https://schema.org/Card";

    // registerIssuerSample() {
    var memberResponse =
        trinsic
            .trustRegistry()
            .registerMember(
                RegisterMemberRequest.newBuilder().setDidUri(didUri).setSchemaUri(typeUri).build())
            .get();
    // }

    // checkIssuerStatus() {
    var issuerStatus =
        trinsic
            .trustRegistry()
            .getMemberAuthorizationStatus(
                GetMemberAuthorizationStatusRequest.newBuilder()
                    .setDidUri(didUri)
                    .setSchemaUri(typeUri)
                    .build())
            .get();
    // }
    Assertions.assertEquals(RegistrationStatus.CURRENT, issuerStatus.getStatus());

    // listMembers() {
    var members =
        trinsic
            .trustRegistry()
            .listAuthorizedMembers(
                ListAuthorizedMembersRequest.newBuilder().setSchemaUri(typeUri).build())
            .get();
    // }

    // getMember() {
    var member =
        trinsic
            .trustRegistry()
            .getMember(GetMemberRequest.newBuilder().setDidUri(typeUri).build())
            .get();
    // }

    // unregisterIssuer() {
    trinsic
        .trustRegistry()
        .unregisterMember(
            UnregisterMemberRequest.newBuilder().setDidUri(didUri).setSchemaUri(typeUri).build());
    // }
    trinsic.shutdown();
  }
}
