package QQPIM;

public final class EAutoStartOption {
    public static final EAutoStartOption EASO_Forbid = new EAutoStartOption(2, 2, "EASO_Forbid");
    public static final EAutoStartOption EASO_NONE = new EAutoStartOption(0, 0, "EASO_NONE");
    public static final EAutoStartOption EASO_OK = new EAutoStartOption(1, 1, "EASO_OK");
    public static final int _EASO_Forbid = 2;
    public static final int _EASO_NONE = 0;
    public static final int _EASO_OK = 1;
    static final /* synthetic */ boolean a = (!EAutoStartOption.class.desiredAssertionStatus());
    private static EAutoStartOption[] b = new EAutoStartOption[3];
    private int c;
    private String d = new String();

    private EAutoStartOption(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EAutoStartOption convert(int i) {
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

    public static EAutoStartOption convert(String str) {
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
