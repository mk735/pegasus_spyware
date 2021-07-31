package ledroid.app;

public class LedroidContextException extends RuntimeException {
    public LedroidContextException() {
    }

    public LedroidContextException(String detailMessage) {
        super(detailMessage);
    }

    public LedroidContextException(Throwable throwable) {
        super(throwable);
    }

    public LedroidContextException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }
}
