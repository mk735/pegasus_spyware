package QQPIM;

public final class EConditionBit {
    public static final EConditionBit ECB_End = new EConditionBit(4, 33, "ECB_End");
    public static final EConditionBit ECB_IsBindQQ = new EConditionBit(2, 2, "ECB_IsBindQQ");
    public static final EConditionBit ECB_IsQxinOpen = new EConditionBit(1, 1, "ECB_IsQxinOpen");
    public static final EConditionBit ECB_IsSetEntrance = new EConditionBit(3, 3, "ECB_IsSetEntrance");
    public static final EConditionBit ECB_None = new EConditionBit(0, 0, "ECB_None");
    public static final int _ECB_End = 33;
    public static final int _ECB_IsBindQQ = 2;
    public static final int _ECB_IsQxinOpen = 1;
    public static final int _ECB_IsSetEntrance = 3;
    public static final int _ECB_None = 0;
    static final /* synthetic */ boolean a = (!EConditionBit.class.desiredAssertionStatus());
    private static EConditionBit[] b = new EConditionBit[5];
    private int c;
    private String d = new String();

    private EConditionBit(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EConditionBit convert(int i) {
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

    public static EConditionBit convert(String str) {
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
