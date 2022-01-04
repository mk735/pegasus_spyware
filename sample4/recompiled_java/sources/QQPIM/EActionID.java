package QQPIM;

public final class EActionID {
    public static final EActionID EAID_Cloud_Cmd = new EActionID(10, 30, "EAID_Cloud_Cmd");
    public static final EActionID EAID_Cloud_Info = new EActionID(6, 19, "EAID_Cloud_Info");
    public static final EActionID EAID_Config_No_Note_Update = new EActionID(5, 11, "EAID_Config_No_Note_Update");
    public static final EActionID EAID_Config_Update = new EActionID(4, 10, "EAID_Config_Update");
    public static final EActionID EAID_END = new EActionID(11, 31, "EAID_END");
    public static final EActionID EAID_None = new EActionID(0, 0, "EAID_None");
    public static final EActionID EAID_Show_Promote = new EActionID(8, 21, "EAID_Show_Promote");
    public static final EActionID EAID_Show_SecureWarn = new EActionID(9, 22, "EAID_Show_SecureWarn");
    public static final EActionID EAID_Show_Tips = new EActionID(7, 20, "EAID_Show_Tips");
    public static final EActionID EAID_Soft_Force_Update = new EActionID(2, 3, "EAID_Soft_Force_Update");
    public static final EActionID EAID_Soft_No_Note_Update = new EActionID(3, 4, "EAID_Soft_No_Note_Update");
    public static final EActionID EAID_Soft_Update = new EActionID(1, 2, "EAID_Soft_Update");
    public static final int _EAID_Cloud_Cmd = 30;
    public static final int _EAID_Cloud_Info = 19;
    public static final int _EAID_Config_No_Note_Update = 11;
    public static final int _EAID_Config_Update = 10;
    public static final int _EAID_END = 31;
    public static final int _EAID_None = 0;
    public static final int _EAID_Show_Promote = 21;
    public static final int _EAID_Show_SecureWarn = 22;
    public static final int _EAID_Show_Tips = 20;
    public static final int _EAID_Soft_Force_Update = 3;
    public static final int _EAID_Soft_No_Note_Update = 4;
    public static final int _EAID_Soft_Update = 2;
    static final /* synthetic */ boolean a = (!EActionID.class.desiredAssertionStatus());
    private static EActionID[] b = new EActionID[12];
    private int c;
    private String d = new String();

    private EActionID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EActionID convert(int i) {
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

    public static EActionID convert(String str) {
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
