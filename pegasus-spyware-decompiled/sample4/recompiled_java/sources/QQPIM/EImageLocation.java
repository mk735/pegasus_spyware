package QQPIM;

public final class EImageLocation {
    public static final EImageLocation EILOC_End = new EImageLocation(9, 4302, "EILOC_End");
    public static final EImageLocation EILOC_None = new EImageLocation(0, 0, "EILOC_None");
    public static final EImageLocation EILOC_PB_Android_CloudSms_Top = new EImageLocation(7, 4202, "EILOC_PB_Android_CloudSms_Top");
    public static final EImageLocation EILOC_PB_Android_Sms_Background = new EImageLocation(6, 4201, "EILOC_PB_Android_Sms_Background");
    public static final EImageLocation EILOC_PB_Iphone_CloudSms_Top = new EImageLocation(8, 4301, "EILOC_PB_Iphone_CloudSms_Top");
    public static final EImageLocation EILOC_PB_SymbianV3_CloudSms_Top = new EImageLocation(4, _EILOC_PB_SymbianV3_CloudSms_Top, "EILOC_PB_SymbianV3_CloudSms_Top");
    public static final EImageLocation EILOC_PB_SymbianV5_CloudSms_Top = new EImageLocation(5, _EILOC_PB_SymbianV5_CloudSms_Top, "EILOC_PB_SymbianV5_CloudSms_Top");
    public static final EImageLocation EILOC_SEC_Android_Ads_Entry_TopRight = new EImageLocation(2, _EILOC_SEC_Android_Ads_Entry_TopRight, "EILOC_SEC_Android_Ads_Entry_TopRight");
    public static final EImageLocation EILOC_SEC_Android_Main = new EImageLocation(1, _EILOC_SEC_Android_Main, "EILOC_SEC_Android_Main");
    public static final EImageLocation EILOC_SEC_Iphone_Ads_Top = new EImageLocation(3, 1301, "EILOC_SEC_Iphone_Ads_Top");
    public static final int _EILOC_End = 4302;
    public static final int _EILOC_None = 0;
    public static final int _EILOC_PB_Android_CloudSms_Top = 4202;
    public static final int _EILOC_PB_Android_Sms_Background = 4201;
    public static final int _EILOC_PB_Iphone_CloudSms_Top = 4301;
    public static final int _EILOC_PB_SymbianV3_CloudSms_Top = 4101;
    public static final int _EILOC_PB_SymbianV5_CloudSms_Top = 4150;
    public static final int _EILOC_SEC_Android_Ads_Entry_TopRight = 1202;
    public static final int _EILOC_SEC_Android_Main = 1201;
    public static final int _EILOC_SEC_Iphone_Ads_Top = 1301;
    static final /* synthetic */ boolean a = (!EImageLocation.class.desiredAssertionStatus());
    private static EImageLocation[] b = new EImageLocation[10];
    private int c;
    private String d = new String();

    private EImageLocation(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EImageLocation convert(int i) {
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

    public static EImageLocation convert(String str) {
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
