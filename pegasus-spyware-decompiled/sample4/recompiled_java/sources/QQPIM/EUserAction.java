package QQPIM;

public final class EUserAction {
    public static final EUserAction EMUA_DOUBT_SENDER2BLACK = new EUserAction(5, 5, "EMUA_DOUBT_SENDER2BLACK");
    public static final EUserAction EMUA_DOUBT_SENDER2CONTACT = new EUserAction(6, 6, "EMUA_DOUBT_SENDER2CONTACT");
    public static final EUserAction EMUA_DOUBT_SENDER2WHITE = new EUserAction(7, 7, "EMUA_DOUBT_SENDER2WHITE");
    public static final EUserAction EMUA_IMPEACH = new EUserAction(11, 11, "EMUA_IMPEACH");
    public static final EUserAction EMUA_INTERCEPT2RECOVER = new EUserAction(12, 12, "EMUA_INTERCEPT2RECOVER");
    public static final EUserAction EMUA_INTERCEPT_SENDER2BLACK = new EUserAction(10, 10, "EMUA_INTERCEPT_SENDER2BLACK");
    public static final EUserAction EMUA_INTERCEPT_SENDER2CONTACT = new EUserAction(8, 8, "EMUA_INTERCEPT_SENDER2CONTACT");
    public static final EUserAction EMUA_INTERCEPT_SENDER2WHITE = new EUserAction(9, 9, "EMUA_INTERCEPT_SENDER2WHITE");
    public static final EUserAction EMUA_MAX = new EUserAction(17, 17, "EMUA_MAX");
    public static final EUserAction EMUA_MIN = new EUserAction(0, 0, "EMUA_MIN");
    public static final EUserAction EMUA_MOVE2FOLDER = new EUserAction(3, 3, "EMUA_MOVE2FOLDER");
    public static final EUserAction EMUA_NOCHARGE_SENDER = new EUserAction(16, 16, "EMUA_NOCHARGE_SENDER");
    public static final EUserAction EMUA_NOCHARGE_SMS = new EUserAction(15, 15, "EMUA_NOCHARGE_SMS");
    public static final EUserAction EMUA_PASS_SENDER2BLACK = new EUserAction(4, 4, "EMUA_PASS_SENDER2BLACK");
    public static final EUserAction EMUA_PHONE_DEL = new EUserAction(1, 1, "EMUA_PHONE_DEL");
    public static final EUserAction EMUA_SENDER2BLACK = new EUserAction(13, 13, "EMUA_SENDER2BLACK");
    public static final EUserAction EMUA_SENDER2CONTACT = new EUserAction(14, 14, "EMUA_SENDER2CONTACT");
    public static final EUserAction EMUA_WEB_DEL = new EUserAction(2, 2, "EMUA_WEB_DEL");
    public static final int _EMUA_DOUBT_SENDER2BLACK = 5;
    public static final int _EMUA_DOUBT_SENDER2CONTACT = 6;
    public static final int _EMUA_DOUBT_SENDER2WHITE = 7;
    public static final int _EMUA_IMPEACH = 11;
    public static final int _EMUA_INTERCEPT2RECOVER = 12;
    public static final int _EMUA_INTERCEPT_SENDER2BLACK = 10;
    public static final int _EMUA_INTERCEPT_SENDER2CONTACT = 8;
    public static final int _EMUA_INTERCEPT_SENDER2WHITE = 9;
    public static final int _EMUA_MAX = 17;
    public static final int _EMUA_MIN = 0;
    public static final int _EMUA_MOVE2FOLDER = 3;
    public static final int _EMUA_NOCHARGE_SENDER = 16;
    public static final int _EMUA_NOCHARGE_SMS = 15;
    public static final int _EMUA_PASS_SENDER2BLACK = 4;
    public static final int _EMUA_PHONE_DEL = 1;
    public static final int _EMUA_SENDER2BLACK = 13;
    public static final int _EMUA_SENDER2CONTACT = 14;
    public static final int _EMUA_WEB_DEL = 2;
    static final /* synthetic */ boolean a = (!EUserAction.class.desiredAssertionStatus());
    private static EUserAction[] b = new EUserAction[18];
    private int c;
    private String d = new String();

    private EUserAction(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EUserAction convert(int i) {
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

    public static EUserAction convert(String str) {
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
