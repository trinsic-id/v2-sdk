import io.grpc.stub.StreamObserver;

import java.util.concurrent.CountDownLatch;

public abstract class TestStreamObserver<T> implements StreamObserver<T> {
    private final CountDownLatch latch;

    public TestStreamObserver(CountDownLatch latch) {
        this.latch = latch;
    }

    @Override
    public void onError(Throwable t) {
        t.printStackTrace();
    }

    @Override
    public void onCompleted() {
        latch.countDown();
    }
}
