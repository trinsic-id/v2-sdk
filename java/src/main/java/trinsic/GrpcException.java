package trinsic;

public class GrpcException extends RuntimeException {
    public Object response;

    public GrpcException(Object response) {
        this.response = response;
    }

    public static void assertSuccessfulResponse(int responseValue, Object response) {
        if (responseValue != 0)
            throw new GrpcException(response);
    }
}
