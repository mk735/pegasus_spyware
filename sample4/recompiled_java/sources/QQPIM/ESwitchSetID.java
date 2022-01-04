package QQPIM;

public final class ESwitchSetID {
    public static final ESwitchSetID ESSID_Cloud_Update = new ESwitchSetID(5, 5, "ESSID_Cloud_Update");
    public static final ESwitchSetID ESSID_Connect_Debug_Server = new ESwitchSetID(4, 4, "ESSID_Connect_Debug_Server");
    public static final ESwitchSetID ESSID_Crash_Report = new ESwitchSetID(1, 1, "ESSID_Crash_Report");
    public static final ESwitchSetID ESSID_END = new ESwitchSetID(8, 8, "ESSID_END");
    public static final ESwitchSetID ESSID_Flow_Dial = new ESwitchSetID(3, 3, "ESSID_Flow_Dial");
    public static final ESwitchSetID ESSID_Module_Advance_Defence = new ESwitchSetID(2, 2, "ESSID_Module_Advance_Defence");
    public static final ESwitchSetID ESSID_None = new ESwitchSetID(0, 0, "ESSID_None");
    public static final ESwitchSetID ESSID_Recommend_Soft = new ESwitchSetID(6, 6, "ESSID_Recommend_Soft");
    public static final ESwitchSetID ESSID_Report_Soft_List = new ESwitchSetID(7, 7, "ESSID_Report_Soft_List");
    public static final int _ESSID_Cloud_Update = 5;
    public static final int _ESSID_Connect_Debug_Server = 4;
    public static final int _ESSID_Crash_Report = 1;
    public static final int _ESSID_END = 8;
    public static final int _ESSID_Flow_Dial = 3;
    public static final int _ESSID_Module_Advance_Defence = 2;
    public static final int _ESSID_None = 0;
    public static final int _ESSID_Recommend_Soft = 6;
    public static final int _ESSID_Report_Soft_List = 7;
    static final /* synthetic */ boolean a = (!ESwitchSetID.class.desiredAssertionStatus());
    private static ESwitchSetID[] b = new ESwitchSetID[9];
    private int c;
    private String d = new String();

    private ESwitchSetID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESwitchSetID convert(int i) {
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

    public static ESwitchSetID convert(String str) {
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
