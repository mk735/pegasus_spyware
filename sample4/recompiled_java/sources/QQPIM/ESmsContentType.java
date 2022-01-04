package QQPIM;

public final class ESmsContentType {
    public static final ESmsContentType EMSCT_12590 = new ESmsContentType(5, 5, "EMSCT_12590");
    public static final ESmsContentType EMSCT_ADS = new ESmsContentType(3, 3, "EMSCT_ADS");
    public static final ESmsContentType EMSCT_CHARGE = new ESmsContentType(8, 8, "EMSCT_CHARGE");
    public static final ESmsContentType EMSCT_FRAUD = new ESmsContentType(4, 4, "EMSCT_FRAUD");
    public static final ESmsContentType EMSCT_MAX = new ESmsContentType(9, 9, "EMSCT_MAX");
    public static final ESmsContentType EMSCT_MIN = new ESmsContentType(0, 0, "EMSCT_MIN");
    public static final ESmsContentType EMSCT_NORMAL = new ESmsContentType(2, 2, "EMSCT_NORMAL");
    public static final ESmsContentType EMSCT_OPERATOR_INFO = new ESmsContentType(7, 7, "EMSCT_OPERATOR_INFO");
    public static final ESmsContentType EMSCT_SEX = new ESmsContentType(6, 6, "EMSCT_SEX");
    public static final ESmsContentType EMSCT_UNKNOWN = new ESmsContentType(1, 1, "EMSCT_UNKNOWN");
    public static final int _EMSCT_12590 = 5;
    public static final int _EMSCT_ADS = 3;
    public static final int _EMSCT_CHARGE = 8;
    public static final int _EMSCT_FRAUD = 4;
    public static final int _EMSCT_MAX = 9;
    public static final int _EMSCT_MIN = 0;
    public static final int _EMSCT_NORMAL = 2;
    public static final int _EMSCT_OPERATOR_INFO = 7;
    public static final int _EMSCT_SEX = 6;
    public static final int _EMSCT_UNKNOWN = 1;
    static final /* synthetic */ boolean a = (!ESmsContentType.class.desiredAssertionStatus());
    private static ESmsContentType[] b = new ESmsContentType[10];
    private int c;
    private String d = new String();

    private ESmsContentType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESmsContentType convert(int i) {
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

    public static ESmsContentType convert(String str) {
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
