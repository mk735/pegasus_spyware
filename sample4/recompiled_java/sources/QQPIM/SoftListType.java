package QQPIM;

public final class SoftListType {
    public static final SoftListType BLACKLIST_ROM = new SoftListType(2, 2, "BLACKLIST_ROM");
    public static final SoftListType BLACKLIST_ROM_THIRDPART = new SoftListType(4, 4, "BLACKLIST_ROM_THIRDPART");
    public static final SoftListType BLACKLIST_WITHPLUGIN = new SoftListType(3, 3, "BLACKLIST_WITHPLUGIN");
    public static final SoftListType WHITELIST_COMMON = new SoftListType(0, 0, "WHITELIST_COMMON");
    public static final SoftListType WHITELIST_ROM = new SoftListType(5, 5, "WHITELIST_ROM");
    public static final SoftListType WHITELIST_UNUSUAL = new SoftListType(1, 1, "WHITELIST_UNUSUAL");
    public static final int _BLACKLIST_ROM = 2;
    public static final int _BLACKLIST_ROM_THIRDPART = 4;
    public static final int _BLACKLIST_WITHPLUGIN = 3;
    public static final int _WHITELIST_COMMON = 0;
    public static final int _WHITELIST_ROM = 5;
    public static final int _WHITELIST_UNUSUAL = 1;
    static final /* synthetic */ boolean a = (!SoftListType.class.desiredAssertionStatus());
    private static SoftListType[] b = new SoftListType[6];
    private int c;
    private String d = new String();

    private SoftListType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static SoftListType convert(int i) {
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

    public static SoftListType convert(String str) {
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
