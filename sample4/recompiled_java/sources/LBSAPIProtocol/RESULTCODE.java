package LBSAPIProtocol;

public final class RESULTCODE {
    public static final RESULTCODE RESULT_AUTH_FAIL = new RESULTCODE(3, 201, "RESULT_AUTH_FAIL");
    public static final RESULTCODE RESULT_BACK_TIME_OUT = new RESULTCODE(5, 301, "RESULT_BACK_TIME_OUT");
    public static final RESULTCODE RESULT_EXCEPTION = new RESULTCODE(1, 101, "RESULT_EXCEPTION");
    public static final RESULTCODE RESULT_INPUT_ERROR = new RESULTCODE(4, 202, "RESULT_INPUT_ERROR");
    public static final RESULTCODE RESULT_POSITION_FAIL = new RESULTCODE(2, 102, "RESULT_POSITION_FAIL");
    public static final RESULTCODE RESULT_SUCC = new RESULTCODE(0, 0, "RESULT_SUCC");
    public static final int _RESULT_AUTH_FAIL = 201;
    public static final int _RESULT_BACK_TIME_OUT = 301;
    public static final int _RESULT_EXCEPTION = 101;
    public static final int _RESULT_INPUT_ERROR = 202;
    public static final int _RESULT_POSITION_FAIL = 102;
    public static final int _RESULT_SUCC = 0;
    static final /* synthetic */ boolean a = (!RESULTCODE.class.desiredAssertionStatus());
    private static RESULTCODE[] b = new RESULTCODE[6];
    private int c;
    private String d = new String();

    private RESULTCODE(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static RESULTCODE convert(int i) {
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

    public static RESULTCODE convert(String str) {
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
