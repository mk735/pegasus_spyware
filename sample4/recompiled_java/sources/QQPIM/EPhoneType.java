package QQPIM;

public final class EPhoneType {
    public static final EPhoneType MPT_Android = new EPhoneType(2, 2, "MPT_Android");
    public static final EPhoneType MPT_BB = new EPhoneType(8, 8, "MPT_BB");
    public static final EPhoneType MPT_END = new EPhoneType(11, 102, "MPT_END");
    public static final EPhoneType MPT_Iphone = new EPhoneType(3, 3, "MPT_Iphone");
    public static final EPhoneType MPT_Kjava = new EPhoneType(4, 4, "MPT_Kjava");
    public static final EPhoneType MPT_MTK = new EPhoneType(7, 7, "MPT_MTK");
    public static final EPhoneType MPT_NONE = new EPhoneType(0, 0, "MPT_NONE");
    public static final EPhoneType MPT_PC_Windows = new EPhoneType(9, 9, "MPT_PC_Windows");
    public static final EPhoneType MPT_Server = new EPhoneType(5, 5, "MPT_Server");
    public static final EPhoneType MPT_Symbian = new EPhoneType(1, 1, "MPT_Symbian");
    public static final EPhoneType MPT_SymbianV5 = new EPhoneType(10, 101, "MPT_SymbianV5");
    public static final EPhoneType MPT_WinPhone = new EPhoneType(6, 6, "MPT_WinPhone");
    public static final int _MPT_Android = 2;
    public static final int _MPT_BB = 8;
    public static final int _MPT_END = 102;
    public static final int _MPT_Iphone = 3;
    public static final int _MPT_Kjava = 4;
    public static final int _MPT_MTK = 7;
    public static final int _MPT_NONE = 0;
    public static final int _MPT_PC_Windows = 9;
    public static final int _MPT_Server = 5;
    public static final int _MPT_Symbian = 1;
    public static final int _MPT_SymbianV5 = 101;
    public static final int _MPT_WinPhone = 6;
    static final /* synthetic */ boolean a = (!EPhoneType.class.desiredAssertionStatus());
    private static EPhoneType[] b = new EPhoneType[12];
    private int c;
    private String d = new String();

    private EPhoneType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EPhoneType convert(int i) {
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

    public static EPhoneType convert(String str) {
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
