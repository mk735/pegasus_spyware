package QQPIM;

public final class EScanType {
    public static final EScanType ST_Apk = new EScanType(1, 1, "ST_Apk");
    public static final EScanType ST_END = new EScanType(3, 3, "ST_END");
    public static final EScanType ST_File = new EScanType(2, 2, "ST_File");
    public static final EScanType ST_NONE = new EScanType(0, 0, "ST_NONE");
    public static final int _ST_Apk = 1;
    public static final int _ST_END = 3;
    public static final int _ST_File = 2;
    public static final int _ST_NONE = 0;
    static final /* synthetic */ boolean a = (!EScanType.class.desiredAssertionStatus());
    private static EScanType[] b = new EScanType[4];
    private int c;
    private String d = new String();

    private EScanType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EScanType convert(int i) {
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

    public static EScanType convert(String str) {
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
