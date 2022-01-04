package QQPIM;

public final class EActionLevel {
    public static final EActionLevel EAL_Common = new EActionLevel(2, 2, "EAL_Common");
    public static final EActionLevel EAL_Detail = new EActionLevel(3, 3, "EAL_Detail");
    public static final EActionLevel EAL_None = new EActionLevel(0, 0, "EAL_None");
    public static final EActionLevel EAL_Simple = new EActionLevel(1, 1, "EAL_Simple");
    public static final int _EAL_Common = 2;
    public static final int _EAL_Detail = 3;
    public static final int _EAL_None = 0;
    public static final int _EAL_Simple = 1;
    static final /* synthetic */ boolean a = (!EActionLevel.class.desiredAssertionStatus());
    private static EActionLevel[] b = new EActionLevel[4];
    private int c;
    private String d = new String();

    private EActionLevel(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EActionLevel convert(int i) {
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

    public static EActionLevel convert(String str) {
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
