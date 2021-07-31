package QQPIM;

public final class EGetDataType {
    public static final EGetDataType MGDT_BData = new EGetDataType(1, 1, "MGDT_BData");
    public static final EGetDataType MGDT_Url = new EGetDataType(0, 0, "MGDT_Url");
    public static final int _MGDT_BData = 1;
    public static final int _MGDT_Url = 0;
    static final /* synthetic */ boolean a = (!EGetDataType.class.desiredAssertionStatus());
    private static EGetDataType[] b = new EGetDataType[2];
    private int c;
    private String d = new String();

    private EGetDataType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EGetDataType convert(int i) {
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

    public static EGetDataType convert(String str) {
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
