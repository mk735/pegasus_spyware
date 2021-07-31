package QQPIM;

public final class ERequestType {
    public static final ERequestType ERT_CloudCheck = new ERequestType(1, 1, "ERT_CloudCheck");
    public static final ERequestType ERT_GetSoftInfo = new ERequestType(2, 2, "ERT_GetSoftInfo");
    public static final ERequestType ERT_GetSoftInfoNoDesc = new ERequestType(4, 4, "ERT_GetSoftInfoNoDesc");
    public static final ERequestType ERT_ReportAllSoft = new ERequestType(5, 5, "ERT_ReportAllSoft");
    public static final ERequestType ERT_ReportFeature = new ERequestType(0, 0, "ERT_ReportFeature");
    public static final ERequestType ERT_Report_Cloud_Get = new ERequestType(3, 3, "ERT_Report_Cloud_Get");
    public static final int _ERT_CloudCheck = 1;
    public static final int _ERT_GetSoftInfo = 2;
    public static final int _ERT_GetSoftInfoNoDesc = 4;
    public static final int _ERT_ReportAllSoft = 5;
    public static final int _ERT_ReportFeature = 0;
    public static final int _ERT_Report_Cloud_Get = 3;
    static final /* synthetic */ boolean a = (!ERequestType.class.desiredAssertionStatus());
    private static ERequestType[] b = new ERequestType[6];
    private int c;
    private String d = new String();

    private ERequestType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ERequestType convert(int i) {
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

    public static ERequestType convert(String str) {
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
