package QQPIM;

public final class ETelType {
    public static final ETelType ETT_MAX = new ETelType(5, 5, "ETT_MAX");
    public static final ETelType ETT_MIN = new ETelType(0, 0, "ETT_MIN");
    public static final ETelType ETT_MISS_CALL = new ETelType(3, 3, "ETT_MISS_CALL");
    public static final ETelType ETT_RING_ONE_SOUND = new ETelType(1, 1, "ETT_RING_ONE_SOUND");
    public static final ETelType ETT_USER_CANCEL = new ETelType(2, 2, "ETT_USER_CANCEL");
    public static final ETelType ETT_USER_HANG_UP = new ETelType(4, 4, "ETT_USER_HANG_UP");
    public static final int _ETT_MAX = 5;
    public static final int _ETT_MIN = 0;
    public static final int _ETT_MISS_CALL = 3;
    public static final int _ETT_RING_ONE_SOUND = 1;
    public static final int _ETT_USER_CANCEL = 2;
    public static final int _ETT_USER_HANG_UP = 4;
    static final /* synthetic */ boolean a = (!ETelType.class.desiredAssertionStatus());
    private static ETelType[] b = new ETelType[6];
    private int c;
    private String d = new String();

    private ETelType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ETelType convert(int i) {
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

    public static ETelType convert(String str) {
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
