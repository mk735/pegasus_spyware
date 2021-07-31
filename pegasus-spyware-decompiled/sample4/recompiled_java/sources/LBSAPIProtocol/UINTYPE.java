package LBSAPIProtocol;

public final class UINTYPE {
    public static final UINTYPE UIN_EMAIL = new UINTYPE(1, 1, "UIN_EMAIL");
    public static final UINTYPE UIN_IMEI = new UINTYPE(3, 3, "UIN_IMEI");
    public static final UINTYPE UIN_MOBILE = new UINTYPE(2, 2, "UIN_MOBILE");
    public static final UINTYPE UIN_QQ = new UINTYPE(0, 0, "UIN_QQ");
    public static final int _UIN_EMAIL = 1;
    public static final int _UIN_IMEI = 3;
    public static final int _UIN_MOBILE = 2;
    public static final int _UIN_QQ = 0;
    static final /* synthetic */ boolean a = (!UINTYPE.class.desiredAssertionStatus());
    private static UINTYPE[] b = new UINTYPE[4];
    private int c;
    private String d = new String();

    private UINTYPE(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static UINTYPE convert(int i) {
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

    public static UINTYPE convert(String str) {
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
