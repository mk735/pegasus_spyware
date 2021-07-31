package ledroid.root;

public class RootPermissionException extends Exception {
    public RootPermissionException() {
    }

    public RootPermissionException(String detailMessage) {
        super(detailMessage);
    }

    public RootPermissionException(Throwable throwable) {
        super(throwable);
    }

    public RootPermissionException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }
}
