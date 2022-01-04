package QQPIM;

public final class EQueryType {
    public static final EQueryType E_QUERY_ALL = new EQueryType(1, 1, "E_QUERY_ALL");
    public static final EQueryType E_QUERY_MAX = new EQueryType(4, 4, "E_QUERY_MAX");
    public static final EQueryType E_QUERY_MIN = new EQueryType(0, 0, "E_QUERY_MIN");
    public static final EQueryType E_QUERY_MONEY = new EQueryType(3, 3, "E_QUERY_MONEY");
    public static final EQueryType E_QUERY_TRAFFIC = new EQueryType(2, 2, "E_QUERY_TRAFFIC");
    public static final int _E_QUERY_ALL = 1;
    public static final int _E_QUERY_MAX = 4;
    public static final int _E_QUERY_MIN = 0;
    public static final int _E_QUERY_MONEY = 3;
    public static final int _E_QUERY_TRAFFIC = 2;
    static final /* synthetic */ boolean a = (!EQueryType.class.desiredAssertionStatus());
    private static EQueryType[] b = new EQueryType[5];
    private int c;
    private String d = new String();

    private EQueryType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EQueryType convert(int i) {
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

    public static EQueryType convert(String str) {
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
