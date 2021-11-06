import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

public class AwaitService<T> {
    public T awaitCall(IAwaitableServiceCall<T> serviceCall) throws InterruptedException {
        final ArrayList<T> resultCache = new ArrayList<>(1);
        final var done = new CountDownLatch(1);
        serviceCall.callService(new TestStreamObserver<>(done) {
            @Override
            public void onNext(T value) {
                resultCache.add(value);
            }
        });

        done.await();
        if (resultCache.size() == 0) return null;
        return resultCache.get(0);
    }
}
