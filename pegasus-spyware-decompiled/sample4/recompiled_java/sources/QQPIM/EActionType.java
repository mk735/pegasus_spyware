package QQPIM;

public final class EActionType {
    public static final EActionType EAT_Call = new EActionType(2, 2, "EAT_Call");
    public static final EActionType EAT_NONE = new EActionType(0, 0, "EAT_NONE");
    public static final EActionType EAT_ReadContact = new EActionType(4, 4, "EAT_ReadContact");
    public static final EActionType EAT_ReadGps = new EActionType(8, 8, "EAT_ReadGps");
    public static final EActionType EAT_ReadIMEI = new EActionType(6, 6, "EAT_ReadIMEI");
    public static final EActionType EAT_ReadIMSI = new EActionType(7, 7, "EAT_ReadIMSI");
    public static final EActionType EAT_ReadLog = new EActionType(5, 5, "EAT_ReadLog");
    public static final EActionType EAT_ReadSMS = new EActionType(3, 3, "EAT_ReadSMS");
    public static final EActionType EAT_RequestRoot = new EActionType(9, 9, "EAT_RequestRoot");
    public static final EActionType EAT_SendSMS = new EActionType(1, 1, "EAT_SendSMS");
    public static final EActionType EAT_ShowAd = new EActionType(10, 10, "EAT_ShowAd");
    public static final int _EAT_Call = 2;
    public static final int _EAT_NONE = 0;
    public static final int _EAT_ReadContact = 4;
    public static final int _EAT_ReadGps = 8;
    public static final int _EAT_ReadIMEI = 6;
    public static final int _EAT_ReadIMSI = 7;
    public static final int _EAT_ReadLog = 5;
    public static final int _EAT_ReadSMS = 3;
    public static final int _EAT_RequestRoot = 9;
    public static final int _EAT_SendSMS = 1;
    public static final int _EAT_ShowAd = 10;
    static final /* synthetic */ boolean a = (!EActionType.class.desiredAssertionStatus());
    private static EActionType[] b = new EActionType[11];
    private int c;
    private String d = new String();

    private EActionType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EActionType convert(int i) {
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

    public static EActionType convert(String str) {
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
