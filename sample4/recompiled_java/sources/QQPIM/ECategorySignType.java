package QQPIM;

public final class ECategorySignType {
    public static final ECategorySignType CSIGN_HOT = new ECategorySignType(3, 3, "CSIGN_HOT");
    public static final ECategorySignType CSIGN_NEW = new ECategorySignType(1, 1, "CSIGN_NEW");
    public static final ECategorySignType CSIGN_NONE = new ECategorySignType(0, 0, "CSIGN_NONE");
    public static final ECategorySignType CSIGN_REC = new ECategorySignType(2, 2, "CSIGN_REC");
    public static final int _CSIGN_HOT = 3;
    public static final int _CSIGN_NEW = 1;
    public static final int _CSIGN_NONE = 0;
    public static final int _CSIGN_REC = 2;
    static final /* synthetic */ boolean a = (!ECategorySignType.class.desiredAssertionStatus());
    private static ECategorySignType[] b = new ECategorySignType[4];
    private int c;
    private String d = new String();

    private ECategorySignType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ECategorySignType convert(int i) {
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

    public static ECategorySignType convert(String str) {
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
