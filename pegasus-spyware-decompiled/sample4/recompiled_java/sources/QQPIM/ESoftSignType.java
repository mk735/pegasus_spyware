package QQPIM;

public final class ESoftSignType {
    public static final ESoftSignType SIGN_FIRST = new ESoftSignType(4, 4, "SIGN_FIRST");
    public static final ESoftSignType SIGN_HOT = new ESoftSignType(3, 3, "SIGN_HOT");
    public static final ESoftSignType SIGN_NEW = new ESoftSignType(1, 1, "SIGN_NEW");
    public static final ESoftSignType SIGN_NONE = new ESoftSignType(0, 0, "SIGN_NONE");
    public static final ESoftSignType SIGN_REC = new ESoftSignType(2, 2, "SIGN_REC");
    public static final int _SIGN_FIRST = 4;
    public static final int _SIGN_HOT = 3;
    public static final int _SIGN_NEW = 1;
    public static final int _SIGN_NONE = 0;
    public static final int _SIGN_REC = 2;
    static final /* synthetic */ boolean a = (!ESoftSignType.class.desiredAssertionStatus());
    private static ESoftSignType[] b = new ESoftSignType[5];
    private int c;
    private String d = new String();

    private ESoftSignType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESoftSignType convert(int i) {
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

    public static ESoftSignType convert(String str) {
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
