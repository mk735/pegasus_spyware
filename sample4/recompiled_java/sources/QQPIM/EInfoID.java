package QQPIM;

public final class EInfoID {
    public static final EInfoID EI_CPU = new EInfoID(2, 2, "EI_CPU");
    public static final EInfoID EI_DEVICE = new EInfoID(6, 6, "EI_DEVICE");
    public static final EInfoID EI_End = new EInfoID(7, 7, "EI_End");
    public static final EInfoID EI_GPU = new EInfoID(4, 4, "EI_GPU");
    public static final EInfoID EI_MOBILE = new EInfoID(1, 1, "EI_MOBILE");
    public static final EInfoID EI_None = new EInfoID(0, 0, "EI_None");
    public static final EInfoID EI_SCREEN = new EInfoID(3, 3, "EI_SCREEN");
    public static final EInfoID EI_STORAGE = new EInfoID(5, 5, "EI_STORAGE");
    public static final int _EI_CPU = 2;
    public static final int _EI_DEVICE = 6;
    public static final int _EI_End = 7;
    public static final int _EI_GPU = 4;
    public static final int _EI_MOBILE = 1;
    public static final int _EI_None = 0;
    public static final int _EI_SCREEN = 3;
    public static final int _EI_STORAGE = 5;
    static final /* synthetic */ boolean a = (!EInfoID.class.desiredAssertionStatus());
    private static EInfoID[] b = new EInfoID[8];
    private int c;
    private String d = new String();

    private EInfoID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EInfoID convert(int i) {
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

    public static EInfoID convert(String str) {
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
