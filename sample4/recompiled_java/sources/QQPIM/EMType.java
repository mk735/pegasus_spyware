package QQPIM;

public final class EMType {
    public static final EMType MT_AreaCode = new EMType(1, 1, "MT_AreaCode");
    public static final EMType MT_CountryCode = new EMType(2, 2, "MT_CountryCode");
    public static final EMType MT_Mobile = new EMType(0, 0, "MT_Mobile");
    public static final int _MT_AreaCode = 1;
    public static final int _MT_CountryCode = 2;
    public static final int _MT_Mobile = 0;
    static final /* synthetic */ boolean a = (!EMType.class.desiredAssertionStatus());
    private static EMType[] b = new EMType[3];
    private int c;
    private String d = new String();

    private EMType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMType convert(int i) {
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

    public static EMType convert(String str) {
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
