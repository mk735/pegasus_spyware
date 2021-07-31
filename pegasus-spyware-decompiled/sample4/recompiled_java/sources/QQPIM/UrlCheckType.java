package QQPIM;

public final class UrlCheckType {
    public static final UrlCheckType CHECK_COCKHORSE = new UrlCheckType(1, 1, "CHECK_COCKHORSE");
    public static final UrlCheckType CHECK_DEFAULT_CHEAT = new UrlCheckType(2, 2, "CHECK_DEFAULT_CHEAT");
    public static final UrlCheckType CHECK_GAMES_HANG = new UrlCheckType(8, 8, "CHECK_GAMES_HANG");
    public static final UrlCheckType CHECK_MAKE_MONEY = new UrlCheckType(9, 9, "CHECK_MAKE_MONEY");
    public static final UrlCheckType CHECK_MAX = new UrlCheckType(16, 20, "CHECK_MAX");
    public static final UrlCheckType CHECK_MONEY_CHEAT = new UrlCheckType(3, 3, "CHECK_MONEY_CHEAT");
    public static final UrlCheckType CHECK_MSG_BLOG = new UrlCheckType(15, 19, "CHECK_MSG_BLOG");
    public static final UrlCheckType CHECK_MSG_REACTIONARY = new UrlCheckType(12, 12, "CHECK_MSG_REACTIONARY");
    public static final UrlCheckType CHECK_MSG_SHADINESS = new UrlCheckType(14, 18, "CHECK_MSG_SHADINESS");
    public static final UrlCheckType CHECK_MSG_WHITE = new UrlCheckType(13, 13, "CHECK_MSG_WHITE");
    public static final UrlCheckType CHECK_PRIVATE_SERVER = new UrlCheckType(11, 11, "CHECK_PRIVATE_SERVER");
    public static final UrlCheckType CHECK_REGULAR = new UrlCheckType(0, 0, "CHECK_REGULAR");
    public static final UrlCheckType CHECK_SEX = new UrlCheckType(10, 10, "CHECK_SEX");
    public static final UrlCheckType CHECK_SP_SERVICE = new UrlCheckType(4, 4, "CHECK_SP_SERVICE");
    public static final UrlCheckType CHECK_STEAL_ACCOUNT = new UrlCheckType(5, 5, "CHECK_STEAL_ACCOUNT");
    public static final UrlCheckType CHECK_TIPS_CHEAT = new UrlCheckType(6, 6, "CHECK_TIPS_CHEAT");
    public static final UrlCheckType CHECK_TIPS_DEFAULT = new UrlCheckType(7, 7, "CHECK_TIPS_DEFAULT");
    public static final int _CHECK_COCKHORSE = 1;
    public static final int _CHECK_DEFAULT_CHEAT = 2;
    public static final int _CHECK_GAMES_HANG = 8;
    public static final int _CHECK_MAKE_MONEY = 9;
    public static final int _CHECK_MAX = 20;
    public static final int _CHECK_MONEY_CHEAT = 3;
    public static final int _CHECK_MSG_BLOG = 19;
    public static final int _CHECK_MSG_REACTIONARY = 12;
    public static final int _CHECK_MSG_SHADINESS = 18;
    public static final int _CHECK_MSG_WHITE = 13;
    public static final int _CHECK_PRIVATE_SERVER = 11;
    public static final int _CHECK_REGULAR = 0;
    public static final int _CHECK_SEX = 10;
    public static final int _CHECK_SP_SERVICE = 4;
    public static final int _CHECK_STEAL_ACCOUNT = 5;
    public static final int _CHECK_TIPS_CHEAT = 6;
    public static final int _CHECK_TIPS_DEFAULT = 7;
    static final /* synthetic */ boolean a = (!UrlCheckType.class.desiredAssertionStatus());
    private static UrlCheckType[] b = new UrlCheckType[17];
    private int c;
    private String d = new String();

    private UrlCheckType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static UrlCheckType convert(int i) {
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

    public static UrlCheckType convert(String str) {
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
