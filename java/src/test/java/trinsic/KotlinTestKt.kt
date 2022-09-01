import kotlinx.coroutines.runBlocking
import org.junit.jupiter.api.Test

class KotlinTestKt {
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
