package QQPIM;

public final class EAskType {
    public static final EAskType EAT_END = new EAskType(3, 3, "EAT_END");
    public static final EAskType EAT_None = new EAskType(0, 0, "EAT_None");
    public static final EAskType EAT_OK_Cancel = new EAskType(2, 2, "EAT_OK_Cancel");
    public static final EAskType EAT_Only_OK = new EAskType(1, 1, "EAT_Only_OK");
    public static final int _EAT_END = 3;
    public static final int _EAT_None = 0;
    public static final int _EAT_OK_Cancel = 2;
    public static final int _EAT_Only_OK = 1;
    static final /* synthetic */ boolean a = (!EAskType.class.desiredAssertionStatus());
    private static EAskType[] b = new EAskType[4];
    private int c;
    private String d = new String();

    private EAskType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EAskType convert(int i) {
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

    public static EAskType convert(String str) {
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
