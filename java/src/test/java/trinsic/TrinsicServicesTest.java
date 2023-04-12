package trinsic;

import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

class TrinsicServicesTest {
  @Test
  public void testTrinsicServiceDemo()
      throws IOException, DidException, ExecutionException, InterruptedException {
    VaccineDemo.run();
  }

  @Test
  public void testFileManagementServiceDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    FileManagementDemo.run();
  }

  @Test
  public void testTrustRegistryDemo()
      throws IOException, DidException, ExecutionException, InterruptedException {
    TrustRegistryDemo.run();
  }

  @Test
  public void testEcosystemsDemo()
      throws IOException, DidException, ExecutionException, InterruptedException {
    EcosystemsDemo.run();
  }

  @Test
  public void testTemplatesDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    TemplatesDemo.run();
  }

  @Test
  public void testWalletDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    WalletsDemo.run();
  }

  @Test
  public void testCredentialsDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    CredentialsDemo.run();
  }
}
