package QQPIM;

public final class EMessageTime {
    public static final EMessageTime EMTI_END = new EMessageTime(7, _EMTI_END, "EMTI_END");
    public static final EMessageTime EMTI_Execute_Time_Zone = new EMessageTime(4, 4, "EMTI_Execute_Time_Zone");
    public static final EMessageTime EMTI_Get_X = new EMessageTime(3, 3, "EMTI_Get_X");
    public static final EMessageTime EMTI_Immediatly = new EMessageTime(1, 1, "EMTI_Immediatly");
    public static final EMessageTime EMTI_None = new EMessageTime(0, 0, "EMTI_None");
    public static final EMessageTime EMTI_Open = new EMessageTime(2, 2, "EMTI_Open");
    public static final EMessageTime EMTI_PB_Android_Private_Entry_Click = new EMessageTime(6, _EMTI_PB_Android_Private_Entry_Click, "EMTI_PB_Android_Private_Entry_Click");
    public static final EMessageTime EMTI_Sec_Android_Harass_Entry_Click = new EMessageTime(5, _EMTI_Sec_Android_Harass_Entry_Click, "EMTI_Sec_Android_Harass_Entry_Click");
    public static final int _EMTI_END = 420103001;
    public static final int _EMTI_Execute_Time_Zone = 4;
    public static final int _EMTI_Get_X = 3;
    public static final int _EMTI_Immediatly = 1;
    public static final int _EMTI_None = 0;
    public static final int _EMTI_Open = 2;
    public static final int _EMTI_PB_Android_Private_Entry_Click = 420103000;
    public static final int _EMTI_Sec_Android_Harass_Entry_Click = 120103000;
    static final /* synthetic */ boolean a = (!EMessageTime.class.desiredAssertionStatus());
    private static EMessageTime[] b = new EMessageTime[8];
    private int c;
    private String d = new String();

    private EMessageTime(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMessageTime convert(int i) {
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

    public static EMessageTime convert(String str) {
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
