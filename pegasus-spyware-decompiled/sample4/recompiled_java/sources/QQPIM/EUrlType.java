package QQPIM;

public final class EUrlType {
    public static final EUrlType EUT_Page = new EUrlType(1, 1, "EUT_Page");
    public static final EUrlType EUT_Pkg = new EUrlType(0, 0, "EUT_Pkg");
    public static final int _EUT_Page = 1;
    public static final int _EUT_Pkg = 0;
    static final /* synthetic */ boolean a = (!EUrlType.class.desiredAssertionStatus());
    private static EUrlType[] b = new EUrlType[2];
    private int c;
    private String d = new String();

    private EUrlType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EUrlType convert(int i) {
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

    public static EUrlType convert(String str) {
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
