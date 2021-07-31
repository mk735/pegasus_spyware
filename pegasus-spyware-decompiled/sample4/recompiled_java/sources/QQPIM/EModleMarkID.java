package QQPIM;

public final class EModleMarkID {
    public static final EModleMarkID EMM_CPU = new EModleMarkID(2, 2, "EMM_CPU");
    public static final EModleMarkID EMM_End = new EModleMarkID(5, 5, "EMM_End");
    public static final EModleMarkID EMM_Media = new EModleMarkID(3, 3, "EMM_Media");
    public static final EModleMarkID EMM_Memory = new EModleMarkID(4, 4, "EMM_Memory");
    public static final EModleMarkID EMM_None = new EModleMarkID(0, 0, "EMM_None");
    public static final EModleMarkID EMM_TOTAL = new EModleMarkID(1, 1, "EMM_TOTAL");
    public static final int _EMM_CPU = 2;
    public static final int _EMM_End = 5;
    public static final int _EMM_Media = 3;
    public static final int _EMM_Memory = 4;
    public static final int _EMM_None = 0;
    public static final int _EMM_TOTAL = 1;
    static final /* synthetic */ boolean a = (!EModleMarkID.class.desiredAssertionStatus());
    private static EModleMarkID[] b = new EModleMarkID[6];
    private int c;
    private String d = new String();

    private EModleMarkID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EModleMarkID convert(int i) {
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

    public static EModleMarkID convert(String str) {
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
