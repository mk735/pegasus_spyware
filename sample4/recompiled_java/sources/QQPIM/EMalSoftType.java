package QQPIM;

public final class EMalSoftType {
    public static final EMalSoftType MST_BeInstalled = new EMalSoftType(5, 5, "MST_BeInstalled");
    public static final EMalSoftType MST_BeTerminated = new EMalSoftType(3, 3, "MST_BeTerminated");
    public static final EMalSoftType MST_BeUninstalled = new EMalSoftType(2, 2, "MST_BeUninstalled");
    public static final EMalSoftType MST_BlockNetLink = new EMalSoftType(4, 4, "MST_BlockNetLink");
    public static final EMalSoftType MST_BlockSMS = new EMalSoftType(1, 1, "MST_BlockSMS");
    public static final EMalSoftType MST_NONE = new EMalSoftType(0, 0, "MST_NONE");
    public static final int _MST_BeInstalled = 5;
    public static final int _MST_BeTerminated = 3;
    public static final int _MST_BeUninstalled = 2;
    public static final int _MST_BlockNetLink = 4;
    public static final int _MST_BlockSMS = 1;
    public static final int _MST_NONE = 0;
    static final /* synthetic */ boolean a = (!EMalSoftType.class.desiredAssertionStatus());
    private static EMalSoftType[] b = new EMalSoftType[6];
    private int c;
    private String d = new String();

    private EMalSoftType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMalSoftType convert(int i) {
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

    public static EMalSoftType convert(String str) {
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
