package trinsic;

import io.grpc.ManagedChannel;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import trinsic.services.AccountService;

import java.net.MalformedURLException;

import static org.junit.jupiter.api.Assertions.*;
import static trinsic.TrinsicUtilities.getProductionConfig;

class TrinsicUtilitiesTest {

    @Test
    void getConfigFromUrl_DefaultProduction() throws MalformedURLException {
        Assertions.assertEquals(getProductionConfig(), TrinsicUtilities.getConfigFromUrl(null));
    }
    @ParameterizedTest
    @ValueSource(strings = {"http://localhost:5000", "https://localhost:5000"})
    public void validUrlsShouldPass(String url) {
        Assertions.assertDoesNotThrow(() -> createAndShutdownChannel(url));
    }

    @ParameterizedTest
    @ValueSource(strings = {"http://localhost", "localhost:5000"})
    public void invalidUrlsShouldFail(String url) {
        Assertions.assertThrows(MalformedURLException.class, () -> createAndShutdownChannel(url));
    }

    private void createAndShutdownChannel(String myAddress) throws MalformedURLException {
        var channel = (ManagedChannel) TrinsicUtilities.getChannel(TrinsicUtilities.getConfigFromUrl(myAddress));
        channel.shutdownNow();
    }

    @Test
    public void testDefaultIsTrinsicProductionConfig() {
        var service = new AccountService(null);
        Assertions.assertEquals(TrinsicUtilities.getProductionConfig(), service.getConfiguration());
        service.shutdown();
    }
}