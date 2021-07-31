package QQPIM;

public final class EOfficialType {
    public static final EOfficialType OFFICIAL_NONE = new EOfficialType(0, 0, "OFFICIAL_NONE");
    public static final EOfficialType OFFICIAL_NOT = new EOfficialType(1, 1, "OFFICIAL_NOT");
    public static final EOfficialType OFFICIAL_YES = new EOfficialType(2, 2, "OFFICIAL_YES");
    public static final int _OFFICIAL_NONE = 0;
    public static final int _OFFICIAL_NOT = 1;
    public static final int _OFFICIAL_YES = 2;
    static final /* synthetic */ boolean a = (!EOfficialType.class.desiredAssertionStatus());
    private static EOfficialType[] b = new EOfficialType[3];
    private int c;
    private String d = new String();

    private EOfficialType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EOfficialType convert(int i) {
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

    public static EOfficialType convert(String str) {
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
