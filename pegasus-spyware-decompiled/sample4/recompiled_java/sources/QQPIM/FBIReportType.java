package QQPIM;

public final class FBIReportType {
    public static final FBIReportType FBI_FEEDBACK = new FBIReportType(1, 1, "FBI_FEEDBACK");
    public static final FBIReportType FBI_REPORT = new FBIReportType(0, 0, "FBI_REPORT");
    public static final int _FBI_FEEDBACK = 1;
    public static final int _FBI_REPORT = 0;
    static final /* synthetic */ boolean a = (!FBIReportType.class.desiredAssertionStatus());
    private static FBIReportType[] b = new FBIReportType[2];
    private int c;
    private String d = new String();

    private FBIReportType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static FBIReportType convert(int i) {
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

    public static FBIReportType convert(String str) {
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
