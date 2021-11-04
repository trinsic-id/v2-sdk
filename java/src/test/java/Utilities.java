import io.grpc.stub.StreamObserver;
import org.junit.jupiter.api.Assertions;

import java.util.concurrent.CountDownLatch;

abstract class TestStreamObserver<T> implements StreamObserver<T> {
    private final CountDownLatch latch;

    public TestStreamObserver(CountDownLatch latch) {
        this.latch = latch;
    }

    @Override
    public void onError(Throwable t) {
        Assertions.fail(t);
    }

    @Override
    public void onCompleted() {
        latch.countDown();
    }
}