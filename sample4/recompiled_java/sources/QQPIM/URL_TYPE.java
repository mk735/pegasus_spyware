package QQPIM;

public final class URL_TYPE {
    public static final URL_TYPE E_URL_BLACK_LIST = new URL_TYPE(3, 3, "E_URL_BLACK_LIST");
    public static final URL_TYPE E_URL_MAX = new URL_TYPE(4, 4, "E_URL_MAX");
    public static final URL_TYPE E_URL_REGULAR = new URL_TYPE(0, 0, "E_URL_REGULAR");
    public static final URL_TYPE E_URL_SHADINESS = new URL_TYPE(2, 2, "E_URL_SHADINESS");
    public static final URL_TYPE E_URL_WHITE_LIST = new URL_TYPE(1, 1, "E_URL_WHITE_LIST");
    public static final int _E_URL_BLACK_LIST = 3;
    public static final int _E_URL_MAX = 4;
    public static final int _E_URL_REGULAR = 0;
    public static final int _E_URL_SHADINESS = 2;
    public static final int _E_URL_WHITE_LIST = 1;
    static final /* synthetic */ boolean a = (!URL_TYPE.class.desiredAssertionStatus());
    private static URL_TYPE[] b = new URL_TYPE[5];
    private int c;
    private String d = new String();

    private URL_TYPE(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static URL_TYPE convert(int i) {
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

    public static URL_TYPE convert(String str) {
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
