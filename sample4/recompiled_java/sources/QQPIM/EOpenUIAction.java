package QQPIM;

public final class EOpenUIAction {
    public static final EOpenUIAction EOpenUIA_NONE = new EOpenUIAction(0, 0, "EOpenUIA_NONE");
    public static final EOpenUIAction EOpenUIA_Sec_Android_SoftGame_WRecommend = new EOpenUIAction(1, _EOpenUIA_Sec_Android_SoftGame_WRecommend, "EOpenUIA_Sec_Android_SoftGame_WRecommend");
    public static final int _EOpenUIA_NONE = 0;
    public static final int _EOpenUIA_Sec_Android_SoftGame_WRecommend = 120101000;
    static final /* synthetic */ boolean a = (!EOpenUIAction.class.desiredAssertionStatus());
    private static EOpenUIAction[] b = new EOpenUIAction[2];
    private int c;
    private String d = new String();

    private EOpenUIAction(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EOpenUIAction convert(int i) {
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

    public static EOpenUIAction convert(String str) {
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
