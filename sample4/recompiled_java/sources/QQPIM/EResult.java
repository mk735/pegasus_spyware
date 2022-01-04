package QQPIM;

public final class EResult {
    public static final EResult ER_Fail = new EResult(0, 0, "ER_Fail");
    public static final EResult ER_Invalid = new EResult(2, 2, "ER_Invalid");
    public static final EResult ER_Success = new EResult(1, 1, "ER_Success");
    public static final int _ER_Fail = 0;
    public static final int _ER_Invalid = 2;
    public static final int _ER_Success = 1;
    static final /* synthetic */ boolean a = (!EResult.class.desiredAssertionStatus());
    private static EResult[] b = new EResult[3];
    private int c;
    private String d = new String();

    private EResult(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EResult convert(int i) {
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

    public static EResult convert(String str) {
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
