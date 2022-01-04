package QQPIM;

public final class EListType {
    public static final EListType ELT_Black = new EListType(0, 0, "ELT_Black");
    public static final EListType ELT_White = new EListType(1, 1, "ELT_White");
    public static final int _ELT_Black = 0;
    public static final int _ELT_White = 1;
    static final /* synthetic */ boolean a = (!EListType.class.desiredAssertionStatus());
    private static EListType[] b = new EListType[2];
    private int c;
    private String d = new String();

    private EListType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EListType convert(int i) {
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

    public static EListType convert(String str) {
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
