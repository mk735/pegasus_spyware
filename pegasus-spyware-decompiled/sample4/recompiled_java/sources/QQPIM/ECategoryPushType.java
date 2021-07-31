package QQPIM;

public final class ECategoryPushType {
    public static final ECategoryPushType CPUSH_HIS = new ECategoryPushType(2, 2, "CPUSH_HIS");
    public static final ECategoryPushType CPUSH_NONE = new ECategoryPushType(0, 0, "CPUSH_NONE");
    public static final ECategoryPushType CPUSH_PUSH = new ECategoryPushType(1, 1, "CPUSH_PUSH");
    public static final int _CPUSH_HIS = 2;
    public static final int _CPUSH_NONE = 0;
    public static final int _CPUSH_PUSH = 1;
    static final /* synthetic */ boolean a = (!ECategoryPushType.class.desiredAssertionStatus());
    private static ECategoryPushType[] b = new ECategoryPushType[3];
    private int c;
    private String d = new String();

    private ECategoryPushType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ECategoryPushType convert(int i) {
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

    public static ECategoryPushType convert(String str) {
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
