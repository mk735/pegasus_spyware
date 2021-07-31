package QQPIM;

public final class ESP {
    public static final ESP SP_Mobile = new ESP(0, 0, "SP_Mobile");
    public static final ESP SP_Telecom = new ESP(2, 2, "SP_Telecom");
    public static final ESP SP_Unicom = new ESP(1, 1, "SP_Unicom");
    public static final int _SP_Mobile = 0;
    public static final int _SP_Telecom = 2;
    public static final int _SP_Unicom = 1;
    static final /* synthetic */ boolean a = (!ESP.class.desiredAssertionStatus());
    private static ESP[] b = new ESP[3];
    private int c;
    private String d = new String();

    private ESP(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESP convert(int i) {
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

    public static ESP convert(String str) {
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
