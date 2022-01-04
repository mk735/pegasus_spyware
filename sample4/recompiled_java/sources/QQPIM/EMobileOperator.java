package QQPIM;

public final class EMobileOperator {
    public static final EMobileOperator EMOP_End = new EMobileOperator(4, 4, "EMOP_End");
    public static final EMobileOperator EMOP_Mobile = new EMobileOperator(2, 2, "EMOP_Mobile");
    public static final EMobileOperator EMOP_None = new EMobileOperator(0, 0, "EMOP_None");
    public static final EMobileOperator EMOP_Telecom = new EMobileOperator(3, 3, "EMOP_Telecom");
    public static final EMobileOperator EMOP_Unicom = new EMobileOperator(1, 1, "EMOP_Unicom");
    public static final int _EMOP_End = 4;
    public static final int _EMOP_Mobile = 2;
    public static final int _EMOP_None = 0;
    public static final int _EMOP_Telecom = 3;
    public static final int _EMOP_Unicom = 1;
    static final /* synthetic */ boolean a = (!EMobileOperator.class.desiredAssertionStatus());
    private static EMobileOperator[] b = new EMobileOperator[5];
    private int c;
    private String d = new String();

    private EMobileOperator(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMobileOperator convert(int i) {
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

    public static EMobileOperator convert(String str) {
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
