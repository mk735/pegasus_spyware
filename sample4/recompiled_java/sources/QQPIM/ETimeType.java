package QQPIM;

public final class ETimeType {
    public static final ETimeType ETT_Total = new ETimeType(0, 1, "ETT_Total");
    public static final ETimeType ETT_Week = new ETimeType(1, 2, "ETT_Week");
    public static final int _ETT_Total = 1;
    public static final int _ETT_Week = 2;
    static final /* synthetic */ boolean a = (!ETimeType.class.desiredAssertionStatus());
    private static ETimeType[] b = new ETimeType[2];
    private int c;
    private String d = new String();

    private ETimeType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ETimeType convert(int i) {
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

    public static ETimeType convert(String str) {
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
