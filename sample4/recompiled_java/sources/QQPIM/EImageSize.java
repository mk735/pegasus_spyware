package QQPIM;

public final class EImageSize {
    public static final EImageSize EIS_Big = new EImageSize(3, 3, "EIS_Big");
    public static final EImageSize EIS_End = new EImageSize(5, 5, "EIS_End");
    public static final EImageSize EIS_Medium = new EImageSize(2, 2, "EIS_Medium");
    public static final EImageSize EIS_None = new EImageSize(0, 0, "EIS_None");
    public static final EImageSize EIS_Small = new EImageSize(1, 1, "EIS_Small");
    public static final EImageSize EIS_Thumbnail = new EImageSize(4, 4, "EIS_Thumbnail");
    public static final int _EIS_Big = 3;
    public static final int _EIS_End = 5;
    public static final int _EIS_Medium = 2;
    public static final int _EIS_None = 0;
    public static final int _EIS_Small = 1;
    public static final int _EIS_Thumbnail = 4;
    static final /* synthetic */ boolean a = (!EImageSize.class.desiredAssertionStatus());
    private static EImageSize[] b = new EImageSize[6];
    private int c;
    private String d = new String();

    private EImageSize(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EImageSize convert(int i) {
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

    public static EImageSize convert(String str) {
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
