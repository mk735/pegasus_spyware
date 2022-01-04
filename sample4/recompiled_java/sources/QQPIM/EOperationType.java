package QQPIM;

public final class EOperationType {
    public static final EOperationType OT_Add = new EOperationType(1, 1, "OT_Add");
    public static final EOperationType OT_Del = new EOperationType(2, 2, "OT_Del");
    public static final EOperationType OT_NONE = new EOperationType(0, 0, "OT_NONE");
    public static final int _OT_Add = 1;
    public static final int _OT_Del = 2;
    public static final int _OT_NONE = 0;
    static final /* synthetic */ boolean a = (!EOperationType.class.desiredAssertionStatus());
    private static EOperationType[] b = new EOperationType[3];
    private int c;
    private String d = new String();

    private EOperationType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EOperationType convert(int i) {
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

    public static EOperationType convert(String str) {
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
