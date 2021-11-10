import io.grpc.stub.StreamObserver;

public interface IAwaitableServiceCall<T> {
    void callService(StreamObserver<T> observer);
}
