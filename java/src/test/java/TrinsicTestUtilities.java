import java.io.File;
import java.nio.file.Path;

class TrinsicTestUtilities {
    public static String baseTestPath() {
        return Path.of(new File("").getAbsolutePath(), "..", "devops", "testdata").toAbsolutePath().toString();
    }

    public static Path vaccineCertUnsignedPath() {
        return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
    }

    public static Path vaccineCertFramePath() {
        return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
    }
}