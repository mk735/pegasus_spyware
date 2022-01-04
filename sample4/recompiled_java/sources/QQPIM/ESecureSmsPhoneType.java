package QQPIM;

public final class ESecureSmsPhoneType {
    public static final ESecureSmsPhoneType ESS_MPT_Android = new ESecureSmsPhoneType(2, 2, "ESS_MPT_Android");
    public static final ESecureSmsPhoneType ESS_MPT_Iphone = new ESecureSmsPhoneType(3, 3, "ESS_MPT_Iphone");
    public static final ESecureSmsPhoneType ESS_MPT_NONE = new ESecureSmsPhoneType(0, 0, "ESS_MPT_NONE");
    public static final ESecureSmsPhoneType ESS_MPT_Symbian = new ESecureSmsPhoneType(1, 1, "ESS_MPT_Symbian");
    public static final ESecureSmsPhoneType ESS_MPT_SymbianV5 = new ESecureSmsPhoneType(4, 101, "ESS_MPT_SymbianV5");
    public static final int _ESS_MPT_Android = 2;
    public static final int _ESS_MPT_Iphone = 3;
    public static final int _ESS_MPT_NONE = 0;
    public static final int _ESS_MPT_Symbian = 1;
    public static final int _ESS_MPT_SymbianV5 = 101;
    static final /* synthetic */ boolean a = (!ESecureSmsPhoneType.class.desiredAssertionStatus());
    private static ESecureSmsPhoneType[] b = new ESecureSmsPhoneType[5];
    private int c;
    private String d = new String();

    private ESecureSmsPhoneType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESecureSmsPhoneType convert(int i) {
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

    public static ESecureSmsPhoneType convert(String str) {
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
