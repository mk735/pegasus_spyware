package QQPIM;

public final class EMatchFinalAction {
    public static final EMatchFinalAction EM_FINAL_ACTION_DOUBT = new EMatchFinalAction(3, 3, "EM_FINAL_ACTION_DOUBT");
    public static final EMatchFinalAction EM_FINAL_ACTION_INTERCEPT = new EMatchFinalAction(2, 2, "EM_FINAL_ACTION_INTERCEPT");
    public static final EMatchFinalAction EM_FINAL_ACTION_MAX = new EMatchFinalAction(4, 4, "EM_FINAL_ACTION_MAX");
    public static final EMatchFinalAction EM_FINAL_ACTION_MIN = new EMatchFinalAction(0, 0, "EM_FINAL_ACTION_MIN");
    public static final EMatchFinalAction EM_FINAL_ACTION_PASS = new EMatchFinalAction(1, 1, "EM_FINAL_ACTION_PASS");
    public static final int _EM_FINAL_ACTION_DOUBT = 3;
    public static final int _EM_FINAL_ACTION_INTERCEPT = 2;
    public static final int _EM_FINAL_ACTION_MAX = 4;
    public static final int _EM_FINAL_ACTION_MIN = 0;
    public static final int _EM_FINAL_ACTION_PASS = 1;
    static final /* synthetic */ boolean a = (!EMatchFinalAction.class.desiredAssertionStatus());
    private static EMatchFinalAction[] b = new EMatchFinalAction[5];
    private int c;
    private String d = new String();

    private EMatchFinalAction(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMatchFinalAction convert(int i) {
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

    public static EMatchFinalAction convert(String str) {
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
