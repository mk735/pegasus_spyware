package LBSAPIProtocol;

public final class POI_SORT_METHOD {
    public static final POI_SORT_METHOD SORT_BY_DISTANCE = new POI_SORT_METHOD(0, 0, "SORT_BY_DISTANCE");
    public static final POI_SORT_METHOD SORT_BY_HOT = new POI_SORT_METHOD(1, 1, "SORT_BY_HOT");
    public static final int _SORT_BY_DISTANCE = 0;
    public static final int _SORT_BY_HOT = 1;
    static final /* synthetic */ boolean a = (!POI_SORT_METHOD.class.desiredAssertionStatus());
    private static POI_SORT_METHOD[] b = new POI_SORT_METHOD[2];
    private int c;
    private String d = new String();

    private POI_SORT_METHOD(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static POI_SORT_METHOD convert(int i) {
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

    public static POI_SORT_METHOD convert(String str) {
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
