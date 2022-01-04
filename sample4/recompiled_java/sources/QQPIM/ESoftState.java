package QQPIM;

public final class ESoftState {
    public static final ESoftState ESS_None = new ESoftState(0, 0, "ESS_None");
    public static final ESoftState ESS_Offshelf = new ESoftState(1, 1, "ESS_Offshelf");
    public static final int _ESS_None = 0;
    public static final int _ESS_Offshelf = 1;
    static final /* synthetic */ boolean a = (!ESoftState.class.desiredAssertionStatus());
    private static ESoftState[] b = new ESoftState[2];
    private int c;
    private String d = new String();

    private ESoftState(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESoftState convert(int i) {
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

    public static ESoftState convert(String str) {
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
