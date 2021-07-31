package QQPIM;

public final class EHandleAdvice {
    public static final EHandleAdvice HA_Check_Page = new EHandleAdvice(4, 4, "HA_Check_Page");
    public static final EHandleAdvice HA_Check_Page_Update = new EHandleAdvice(5, 5, "HA_Check_Page_Update");
    public static final EHandleAdvice HA_Clear = new EHandleAdvice(1, 1, "HA_Clear");
    public static final EHandleAdvice HA_Clear_Update = new EHandleAdvice(3, 3, "HA_Clear_Update");
    public static final EHandleAdvice HA_Down_Tool = new EHandleAdvice(6, 6, "HA_Down_Tool");
    public static final EHandleAdvice HA_Down_Tool_Update = new EHandleAdvice(7, 7, "HA_Down_Tool_Update");
    public static final EHandleAdvice HA_None = new EHandleAdvice(0, 0, "HA_None");
    public static final EHandleAdvice HA_Update = new EHandleAdvice(2, 2, "HA_Update");
    public static final int _HA_Check_Page = 4;
    public static final int _HA_Check_Page_Update = 5;
    public static final int _HA_Clear = 1;
    public static final int _HA_Clear_Update = 3;
    public static final int _HA_Down_Tool = 6;
    public static final int _HA_Down_Tool_Update = 7;
    public static final int _HA_None = 0;
    public static final int _HA_Update = 2;
    static final /* synthetic */ boolean a = (!EHandleAdvice.class.desiredAssertionStatus());
    private static EHandleAdvice[] b = new EHandleAdvice[8];
    private int c;
    private String d = new String();

    private EHandleAdvice(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EHandleAdvice convert(int i) {
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

    public static EHandleAdvice convert(String str) {
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
