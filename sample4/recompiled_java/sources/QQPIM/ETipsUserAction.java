package QQPIM;

public final class ETipsUserAction {
    public static final ETipsUserAction ETT_Reject = new ETipsUserAction(1, 2, "ETT_Reject");
    public static final ETipsUserAction ETUA_Accept = new ETipsUserAction(0, 1, "ETUA_Accept");
    public static final int _ETT_Reject = 2;
    public static final int _ETUA_Accept = 1;
    static final /* synthetic */ boolean a = (!ETipsUserAction.class.desiredAssertionStatus());
    private static ETipsUserAction[] b = new ETipsUserAction[2];
    private int c;
    private String d = new String();

    private ETipsUserAction(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ETipsUserAction convert(int i) {
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

    public static ETipsUserAction convert(String str) {
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
