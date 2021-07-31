package QQPIM;

public final class EUploadType {
    public static final EUploadType EUT_Upload_Auto = new EUploadType(2, 2, "EUT_Upload_Auto");
    public static final EUploadType EUT_Upload_End = new EUploadType(3, 3, "EUT_Upload_End");
    public static final EUploadType EUT_Upload_None = new EUploadType(0, 0, "EUT_Upload_None");
    public static final EUploadType EUT_Upload_Request = new EUploadType(1, 1, "EUT_Upload_Request");
    public static final int _EUT_Upload_Auto = 2;
    public static final int _EUT_Upload_End = 3;
    public static final int _EUT_Upload_None = 0;
    public static final int _EUT_Upload_Request = 1;
    static final /* synthetic */ boolean a = (!EUploadType.class.desiredAssertionStatus());
    private static EUploadType[] b = new EUploadType[4];
    private int c;
    private String d = new String();

    private EUploadType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EUploadType convert(int i) {
        for (int i2 = 0; i2 < b.length; i2++) {
            if (b[i2].value() == i) {
                return b[i2];
            }
        }
        if (a) {
            return null;
        }
        throw new AssertionError();
    }

    public static EUploadType convert(String str) {
        for (int i = 0; i < b.length; i++) {
            if (b[i].toString().equals(str)) {
                return b[i];
            }
        }
        if (a) {
            return null;
        }
        throw new AssertionError();
    }

    public final String toString() {
        return this.d;
    }

    public final int value() {
        return this.c;
    }
}
