package QQPIM;

public final class EUserInterfaceID {
    public static final EUserInterfaceID EUIID_PBJB_Iphone_Call_Skin_List = new EUserInterfaceID(7, _EUIID_PBJB_Iphone_Call_Skin_List, "EUIID_PBJB_Iphone_Call_Skin_List");
    public static final EUserInterfaceID EUIID_PB_Android_Private_Entry = new EUserInterfaceID(5, _EUIID_PB_Android_Private_Entry, "EUIID_PB_Android_Private_Entry");
    public static final EUserInterfaceID EUIID_SecJB_Iphone_About_Entry = new EUserInterfaceID(6, _EUIID_SecJB_Iphone_About_Entry, "EUIID_SecJB_Iphone_About_Entry");
    public static final EUserInterfaceID EUIID_Sec_Android_Harass_Entry = new EUserInterfaceID(3, _EUIID_Sec_Android_Harass_Entry, "EUIID_Sec_Android_Harass_Entry");
    public static final EUserInterfaceID EUIID_Sec_Android_SoftGame_Main = new EUserInterfaceID(0, _EUIID_Sec_Android_SoftGame_Main, "EUIID_Sec_Android_SoftGame_Main");
    public static final EUserInterfaceID EUIID_Sec_Android_VirusChk_Main = new EUserInterfaceID(1, _EUIID_Sec_Android_VirusChk_Main, "EUIID_Sec_Android_VirusChk_Main");
    public static final EUserInterfaceID EUIID_Sec_Android_VirusChk_Tool = new EUserInterfaceID(2, _EUIID_Sec_Android_VirusChk_Tool, "EUIID_Sec_Android_VirusChk_Tool");
    public static final EUserInterfaceID EUIID_Sec_Iphone_About_Entry = new EUserInterfaceID(4, _EUIID_Sec_Iphone_About_Entry, "EUIID_Sec_Iphone_About_Entry");
    public static final int _EUIID_PBJB_Iphone_Call_Skin_List = 203010101;
    public static final int _EUIID_PB_Android_Private_Entry = 42010300;
    public static final int _EUIID_SecJB_Iphone_About_Entry = 163010101;
    public static final int _EUIID_Sec_Android_Harass_Entry = 12010300;
    public static final int _EUIID_Sec_Android_SoftGame_Main = 12010100;
    public static final int _EUIID_Sec_Android_VirusChk_Main = 12010200;
    public static final int _EUIID_Sec_Android_VirusChk_Tool = 12010201;
    public static final int _EUIID_Sec_Iphone_About_Entry = 13010101;
    static final /* synthetic */ boolean a = (!EUserInterfaceID.class.desiredAssertionStatus());
    private static EUserInterfaceID[] b = new EUserInterfaceID[8];
    private int c;
    private String d = new String();

    private EUserInterfaceID(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EUserInterfaceID convert(int i) {
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

    public static EUserInterfaceID convert(String str) {
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
