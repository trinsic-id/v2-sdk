package trinsic;

import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

class TrinsicServicesTest {
  @Test
  public void testTrinsicServiceDemo()
      throws IOException, ExecutionException, InterruptedException {
    VaccineDemo.run();
  }

  @Test
  public void testFileManagementServiceDemo()
      throws IOException, ExecutionException, InterruptedException {
    FileManagementDemo.run();
  }

  @Test
  public void testTrustRegistryDemo()
      throws IOException, ExecutionException, InterruptedException {
    TrustRegistryDemo.run();
  }

  @Test
  public void testEcosystemsDemo()
      throws IOException, ExecutionException, InterruptedException {
    EcosystemsDemo.run();
  }

  @Test
  public void testTemplatesDemo()
      throws IOException, ExecutionException, InterruptedException {
    TemplatesDemo.run();
  }

  @Test
  public void testWalletDemo()
      throws IOException, ExecutionException, InterruptedException {
    WalletsDemo.run();
  }

  @Test
  public void testCredentialsDemo()
      throws IOException, ExecutionException, InterruptedException {
    CredentialsDemo.run();
  }
}
