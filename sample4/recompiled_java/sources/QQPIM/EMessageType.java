package QQPIM;

public final class EMessageType {
    public static final EMessageType EMT_Android_Notice_Bar = new EMessageType(8, 8, "EMT_Android_Notice_Bar");
    public static final EMessageType EMT_Android_Pop_Up = new EMessageType(6, 6, "EMT_Android_Pop_Up");
    public static final EMessageType EMT_Android_QXinFriend_Top = new EMessageType(14, _EMT_Android_QXinFriend_Top, "EMT_Android_QXinFriend_Top");
    public static final EMessageType EMT_Android_QxinSms_Top = new EMessageType(15, _EMT_Android_QxinSms_Top, "EMT_Android_QxinSms_Top");
    public static final EMessageType EMT_Android_SettingPage = new EMessageType(16, _EMT_Android_SettingPage, "EMT_Android_SettingPage");
    public static final EMessageType EMT_Android_Sms_Top = new EMessageType(13, 4202, "EMT_Android_Sms_Top");
    public static final EMessageType EMT_Android_SysPhoneBook_Top = new EMessageType(12, 4201, "EMT_Android_SysPhoneBook_Top");
    public static final EMessageType EMT_Android_Top = new EMessageType(7, 7, "EMT_Android_Top");
    public static final EMessageType EMT_END = new EMessageType(18, 4302, "EMT_END");
    public static final EMessageType EMT_External_Pop_Up = new EMessageType(9, 9, "EMT_External_Pop_Up");
    public static final EMessageType EMT_Iphone_Pop_Up = new EMessageType(10, 10, "EMT_Iphone_Pop_Up");
    public static final EMessageType EMT_Iphone_SecureAdsList = new EMessageType(11, 1301, "EMT_Iphone_SecureAdsList");
    public static final EMessageType EMT_Iphone_ToolBox_Top = new EMessageType(17, 4301, "EMT_Iphone_ToolBox_Top");
    public static final EMessageType EMT_None = new EMessageType(0, 0, "EMT_None");
    public static final EMessageType EMT_Notice_Bar = new EMessageType(3, 3, "EMT_Notice_Bar");
    public static final EMessageType EMT_Pop_UP = new EMessageType(1, 1, "EMT_Pop_UP");
    public static final EMessageType EMT_Symbian_Pop_Up = new EMessageType(4, 4, "EMT_Symbian_Pop_Up");
    public static final EMessageType EMT_Symbian_Top = new EMessageType(5, 5, "EMT_Symbian_Top");
    public static final EMessageType EMT_Top = new EMessageType(2, 2, "EMT_Top");
    public static final int _EMT_Android_Notice_Bar = 8;
    public static final int _EMT_Android_Pop_Up = 6;
    public static final int _EMT_Android_QXinFriend_Top = 4203;
    public static final int _EMT_Android_QxinSms_Top = 4204;
    public static final int _EMT_Android_SettingPage = 4205;
    public static final int _EMT_Android_Sms_Top = 4202;
    public static final int _EMT_Android_SysPhoneBook_Top = 4201;
    public static final int _EMT_Android_Top = 7;
    public static final int _EMT_END = 4302;
    public static final int _EMT_External_Pop_Up = 9;
    public static final int _EMT_Iphone_Pop_Up = 10;
    public static final int _EMT_Iphone_SecureAdsList = 1301;
    public static final int _EMT_Iphone_ToolBox_Top = 4301;
    public static final int _EMT_None = 0;
    public static final int _EMT_Notice_Bar = 3;
    public static final int _EMT_Pop_UP = 1;
    public static final int _EMT_Symbian_Pop_Up = 4;
    public static final int _EMT_Symbian_Top = 5;
    public static final int _EMT_Top = 2;
    static final /* synthetic */ boolean a = (!EMessageType.class.desiredAssertionStatus());
    private static EMessageType[] b = new EMessageType[19];
    private int c;
    private String d = new String();

    private EMessageType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMessageType convert(int i) {
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

    public static EMessageType convert(String str) {
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
