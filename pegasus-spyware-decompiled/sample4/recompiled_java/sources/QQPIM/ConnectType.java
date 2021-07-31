package QQPIM;

public final class ConnectType {
    public static final ConnectType CT_GPRS = new ConnectType(1, 1, "CT_GPRS");
    public static final ConnectType CT_GPRS_NET = new ConnectType(4, 4, "CT_GPRS_NET");
    public static final ConnectType CT_GPRS_WAP = new ConnectType(3, 3, "CT_GPRS_WAP");
    public static final ConnectType CT_NONE = new ConnectType(0, 0, "CT_NONE");
    public static final ConnectType CT_WIFI = new ConnectType(2, 2, "CT_WIFI");
    public static final int _CT_GPRS = 1;
    public static final int _CT_GPRS_NET = 4;
    public static final int _CT_GPRS_WAP = 3;
    public static final int _CT_NONE = 0;
    public static final int _CT_WIFI = 2;
    static final /* synthetic */ boolean a = (!ConnectType.class.desiredAssertionStatus());
    private static ConnectType[] b = new ConnectType[5];
    private int c;
    private String d = new String();

    private ConnectType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ConnectType convert(int i) {
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

    public static ConnectType convert(String str) {
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
