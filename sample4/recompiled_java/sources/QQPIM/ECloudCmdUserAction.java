package QQPIM;

public final class ECloudCmdUserAction {
    public static final ECloudCmdUserAction EUA_Accept = new ECloudCmdUserAction(1, 1, "EUA_Accept");
    public static final ECloudCmdUserAction EUA_None = new ECloudCmdUserAction(0, 0, "EUA_None");
    public static final ECloudCmdUserAction EUA_Reject = new ECloudCmdUserAction(2, 2, "EUA_Reject");
    public static final int _EUA_Accept = 1;
    public static final int _EUA_None = 0;
    public static final int _EUA_Reject = 2;
    static final /* synthetic */ boolean a = (!ECloudCmdUserAction.class.desiredAssertionStatus());
    private static ECloudCmdUserAction[] b = new ECloudCmdUserAction[3];
    private int c;
    private String d = new String();

    private ECloudCmdUserAction(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ECloudCmdUserAction convert(int i) {
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

    public static ECloudCmdUserAction convert(String str) {
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
