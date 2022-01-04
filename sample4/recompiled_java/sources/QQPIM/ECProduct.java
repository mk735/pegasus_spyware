package QQPIM;

public final class ECProduct {
    public static final ECProduct ECP_END = new ECProduct(5, 5, "ECP_END");
    public static final ECProduct ECP_HIPhonebook = new ECProduct(4, 4, "ECP_HIPhonebook");
    public static final ECProduct ECP_None = new ECProduct(0, 0, "ECP_None");
    public static final ECProduct ECP_Phonebook = new ECProduct(2, 2, "ECP_Phonebook");
    public static final ECProduct ECP_Pim = new ECProduct(3, 3, "ECP_Pim");
    public static final ECProduct ECP_Secure = new ECProduct(1, 1, "ECP_Secure");
    public static final int _ECP_END = 5;
    public static final int _ECP_HIPhonebook = 4;
    public static final int _ECP_None = 0;
    public static final int _ECP_Phonebook = 2;
    public static final int _ECP_Pim = 3;
    public static final int _ECP_Secure = 1;
    static final /* synthetic */ boolean a = (!ECProduct.class.desiredAssertionStatus());
    private static ECProduct[] b = new ECProduct[6];
    private int c;
    private String d = new String();

    private ECProduct(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ECProduct convert(int i) {
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

    public static ECProduct convert(String str) {
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
