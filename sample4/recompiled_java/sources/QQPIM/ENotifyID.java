package QQPIM;

public final class ENotifyID {
    public static final ENotifyID ENID_Block_Rules = new ENotifyID(4, 2, "ENID_Block_Rules");
    public static final ENotifyID ENID_Cloud_Cmd_Activity = new ENotifyID(12, 11, "ENID_Cloud_Cmd_Activity");
    public static final ENotifyID ENID_END = new ENotifyID(14, _ENID_END, "ENID_END");
    public static final ENotifyID ENID_List = new ENotifyID(9, 21, "ENID_List");
    public static final ENotifyID ENID_None = new ENotifyID(0, 0, "ENID_None");
    public static final ENotifyID ENID_Only_Activity = new ENotifyID(11, 10, "ENID_Only_Activity");
    public static final ENotifyID ENID_Only_Cloud_Check_Cmd = new ENotifyID(13, 12, "ENID_Only_Cloud_Check_Cmd");
    public static final ENotifyID ENID_Only_Cloud_Cmd = new ENotifyID(10, 8, "ENID_Only_Cloud_Cmd");
    public static final ENotifyID ENID_Only_Soft_Update = new ENotifyID(2, 7, "ENID_Only_Soft_Update");
    public static final ENotifyID ENID_Other_Bind_SMS = new ENotifyID(6, 5, "ENID_Other_Bind_SMS");
    public static final ENotifyID ENID_Phone_Location = new ENotifyID(3, 1, "ENID_Phone_Location");
    public static final ENotifyID ENID_Send_SMS_Com_Black = new ENotifyID(7, 6, "ENID_Send_SMS_Com_Black");
    public static final ENotifyID ENID_Soft_Update = new ENotifyID(1, 4, "ENID_Soft_Update");
    public static final ENotifyID ENID_Trust_Apps = new ENotifyID(8, 9, "ENID_Trust_Apps");
    public static final ENotifyID ENID_Virus_Lib = new ENotifyID(5, 3, "ENID_Virus_Lib");
    public static final int _ENID_Block_Rules = 2;
    public static final int _ENID_Cloud_Cmd_Activity = 11;
    public static final int _ENID_END = 65536;
    public static final int _ENID_List = 21;
    public static final int _ENID_None = 0;
    public static final int _ENID_Only_Activity = 10;
    public static final int _ENID_Only_Cloud_Check_Cmd = 12;
    public static final int _ENID_Only_Cloud_Cmd = 8;
    public static final int _ENID_Only_Soft_Update = 7;
    public static final int _ENID_Other_Bind_SMS = 5;
    public static final int _ENID_Phone_Location = 1;
    public static final int _ENID_Send_SMS_Com_Black = 6;
    public static final int _ENID_Soft_Update = 4;
    public static final int _ENID_Trust_Apps = 9;
    public static final int _ENID_Virus_Lib = 3;
    static final /* synthetic */ boolean a = (!ENotifyID.class.desiredAssertionStatus());
    private static ENotifyID[] b = new ENotifyID[15];
    private int c;
    private String d = new String();

    private ENotifyID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ENotifyID convert(int i) {
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

    public static ENotifyID convert(String str) {
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
