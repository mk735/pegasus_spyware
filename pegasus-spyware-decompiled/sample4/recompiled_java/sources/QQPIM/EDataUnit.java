package QQPIM;

public final class EDataUnit {
    public static final EDataUnit E_DATA_UNIT_BYTE = new EDataUnit(6, 6, "E_DATA_UNIT_BYTE");
    public static final EDataUnit E_DATA_UNIT_DATE = new EDataUnit(5, 5, "E_DATA_UNIT_DATE");
    public static final EDataUnit E_DATA_UNIT_GB = new EDataUnit(4, 4, "E_DATA_UNIT_GB");
    public static final EDataUnit E_DATA_UNIT_KB = new EDataUnit(2, 2, "E_DATA_UNIT_KB");
    public static final EDataUnit E_DATA_UNIT_MAX = new EDataUnit(7, 7, "E_DATA_UNIT_MAX");
    public static final EDataUnit E_DATA_UNIT_MB = new EDataUnit(3, 3, "E_DATA_UNIT_MB");
    public static final EDataUnit E_DATA_UNIT_MIN = new EDataUnit(0, 0, "E_DATA_UNIT_MIN");
    public static final EDataUnit E_DATA_UNIT_YUAN = new EDataUnit(1, 1, "E_DATA_UNIT_YUAN");
    public static final int _E_DATA_UNIT_BYTE = 6;
    public static final int _E_DATA_UNIT_DATE = 5;
    public static final int _E_DATA_UNIT_GB = 4;
    public static final int _E_DATA_UNIT_KB = 2;
    public static final int _E_DATA_UNIT_MAX = 7;
    public static final int _E_DATA_UNIT_MB = 3;
    public static final int _E_DATA_UNIT_MIN = 0;
    public static final int _E_DATA_UNIT_YUAN = 1;
    static final /* synthetic */ boolean a = (!EDataUnit.class.desiredAssertionStatus());
    private static EDataUnit[] b = new EDataUnit[8];
    private int c;
    private String d = new String();

    private EDataUnit(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EDataUnit convert(int i) {
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

    public static EDataUnit convert(String str) {
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
