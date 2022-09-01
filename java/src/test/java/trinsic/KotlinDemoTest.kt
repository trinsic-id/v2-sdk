package trinsic

import kotlinx.coroutines.runBlocking
import org.junit.jupiter.api.Test
import runEcosystemsDemo
import runTrustRegistryDemo
import runVaccineDemo

class KotlinDemoTest {
  @Test
  fun ecosystemDemo() {
    runBlocking { runEcosystemsDemo() }
  }
  @Test
  fun trustRegistryDemo() {
    runBlocking { runTrustRegistryDemo() }
  }
  @Test
  fun vaccineDemo() {
    runBlocking { runVaccineDemo() }
  }
}
