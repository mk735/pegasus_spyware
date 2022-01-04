package QQPIM;

public final class EUserDefineRuleType {
    public static final EUserDefineRuleType EMUDRT_BLACK = new EUserDefineRuleType(2, 2, "EMUDRT_BLACK");
    public static final EUserDefineRuleType EMUDRT_MAX = new EUserDefineRuleType(3, 3, "EMUDRT_MAX");
    public static final EUserDefineRuleType EMUDRT_MIN = new EUserDefineRuleType(0, 0, "EMUDRT_MIN");
    public static final EUserDefineRuleType EMUDRT_WHITE = new EUserDefineRuleType(1, 1, "EMUDRT_WHITE");
    public static final int _EMUDRT_BLACK = 2;
    public static final int _EMUDRT_MAX = 3;
    public static final int _EMUDRT_MIN = 0;
    public static final int _EMUDRT_WHITE = 1;
    static final /* synthetic */ boolean a = (!EUserDefineRuleType.class.desiredAssertionStatus());
    private static EUserDefineRuleType[] b = new EUserDefineRuleType[4];
    private int c;
    private String d = new String();

    private EUserDefineRuleType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EUserDefineRuleType convert(int i) {
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

    public static EUserDefineRuleType convert(String str) {
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
