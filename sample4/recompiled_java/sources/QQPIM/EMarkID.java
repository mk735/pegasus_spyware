package QQPIM;

public final class EMarkID {
    public static final EMarkID EM_2D = new EMarkID(6, 6, "EM_2D");
    public static final EMarkID EM_3D = new EMarkID(7, 7, "EM_3D");
    public static final EMarkID EM_CPU = new EMarkID(2, 2, "EM_CPU");
    public static final EMarkID EM_End = new EMarkID(8, 8, "EM_End");
    public static final EMarkID EM_IO = new EMarkID(5, 5, "EM_IO");
    public static final EMarkID EM_None = new EMarkID(0, 0, "EM_None");
    public static final EMarkID EM_RAM = new EMarkID(3, 3, "EM_RAM");
    public static final EMarkID EM_SDCARD = new EMarkID(4, 4, "EM_SDCARD");
    public static final EMarkID EM_TOTAL = new EMarkID(1, 1, "EM_TOTAL");
    public static final int _EM_2D = 6;
    public static final int _EM_3D = 7;
    public static final int _EM_CPU = 2;
    public static final int _EM_End = 8;
    public static final int _EM_IO = 5;
    public static final int _EM_None = 0;
    public static final int _EM_RAM = 3;
    public static final int _EM_SDCARD = 4;
    public static final int _EM_TOTAL = 1;
    static final /* synthetic */ boolean a = (!EMarkID.class.desiredAssertionStatus());
    private static EMarkID[] b = new EMarkID[9];
    private int c;
    private String d = new String();

    private EMarkID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMarkID convert(int i) {
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

    public static EMarkID convert(String str) {
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
