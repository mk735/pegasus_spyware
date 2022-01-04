package QQPIM;

public final class ESubPlatform {
    public static final ESubPlatform ESP_Android_General = new ESubPlatform(5, 201, "ESP_Android_General");
    public static final ESubPlatform ESP_Android_HD = new ESubPlatform(7, 203, "ESP_Android_HD");
    public static final ESubPlatform ESP_Android_Pad = new ESubPlatform(6, 202, "ESP_Android_Pad");
    public static final ESubPlatform ESP_BB_General = new ESubPlatform(15, _ESP_BB_General, "ESP_BB_General");
    public static final ESubPlatform ESP_END = new ESubPlatform(17, _ESP_END, "ESP_END");
    public static final ESubPlatform ESP_Ipad = new ESubPlatform(9, 302, "ESP_Ipad");
    public static final ESubPlatform ESP_Iphone_General = new ESubPlatform(8, 301, "ESP_Iphone_General");
    public static final ESubPlatform ESP_Kjava_General = new ESubPlatform(10, 401, "ESP_Kjava_General");
    public static final ESubPlatform ESP_MTK_General = new ESubPlatform(14, _ESP_MTK_General, "ESP_MTK_General");
    public static final ESubPlatform ESP_NK_Kjava_General = new ESubPlatform(11, 402, "ESP_NK_Kjava_General");
    public static final ESubPlatform ESP_NONE = new ESubPlatform(0, 0, "ESP_NONE");
    public static final ESubPlatform ESP_PC_WindowsGeneral = new ESubPlatform(16, _ESP_PC_WindowsGeneral, "ESP_PC_WindowsGeneral");
    public static final ESubPlatform ESP_Server_General = new ESubPlatform(12, 501, "ESP_Server_General");
    public static final ESubPlatform ESP_Symbian_3 = new ESubPlatform(4, 104, "ESP_Symbian_3");
    public static final ESubPlatform ESP_Symbian_V2 = new ESubPlatform(3, 103, "ESP_Symbian_V2");
    public static final ESubPlatform ESP_Symbian_V3 = new ESubPlatform(1, 101, "ESP_Symbian_V3");
    public static final ESubPlatform ESP_Symbian_V5 = new ESubPlatform(2, 102, "ESP_Symbian_V5");
    public static final ESubPlatform ESP_WinPhone_General = new ESubPlatform(13, _ESP_WinPhone_General, "ESP_WinPhone_General");
    public static final int _ESP_Android_General = 201;
    public static final int _ESP_Android_HD = 203;
    public static final int _ESP_Android_Pad = 202;
    public static final int _ESP_BB_General = 801;
    public static final int _ESP_END = 902;
    public static final int _ESP_Ipad = 302;
    public static final int _ESP_Iphone_General = 301;
    public static final int _ESP_Kjava_General = 401;
    public static final int _ESP_MTK_General = 701;
    public static final int _ESP_NK_Kjava_General = 402;
    public static final int _ESP_NONE = 0;
    public static final int _ESP_PC_WindowsGeneral = 901;
    public static final int _ESP_Server_General = 501;
    public static final int _ESP_Symbian_3 = 104;
    public static final int _ESP_Symbian_V2 = 103;
    public static final int _ESP_Symbian_V3 = 101;
    public static final int _ESP_Symbian_V5 = 102;
    public static final int _ESP_WinPhone_General = 601;
    static final /* synthetic */ boolean a = (!ESubPlatform.class.desiredAssertionStatus());
    private static ESubPlatform[] b = new ESubPlatform[18];
    private int c;
    private String d = new String();

    private ESubPlatform(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESubPlatform convert(int i) {
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

    public static ESubPlatform convert(String str) {
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
