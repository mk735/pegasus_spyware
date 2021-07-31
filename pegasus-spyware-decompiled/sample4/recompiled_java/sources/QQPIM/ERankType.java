package QQPIM;

public final class ERankType {
    public static final ERankType ERT_Model = new ERankType(1, 2, "ERT_Model");
    public static final ERankType ERT_Total = new ERankType(0, 1, "ERT_Total");
    public static final int _ERT_Model = 2;
    public static final int _ERT_Total = 1;
    static final /* synthetic */ boolean a = (!ERankType.class.desiredAssertionStatus());
    private static ERankType[] b = new ERankType[2];
    private int c;
    private String d = new String();

    private ERankType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ERankType convert(int i) {
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

    public static ERankType convert(String str) {
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
