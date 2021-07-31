package QQPIM;

public final class ESoftClass {
    public static final ESoftClass ESC_Dangerous = new ESoftClass(4, 4, "ESC_Dangerous");
    public static final ESoftClass ESC_NONE = new ESoftClass(0, 0, "ESC_NONE");
    public static final ESoftClass ESC_Rogue = new ESoftClass(2, 2, "ESC_Rogue");
    public static final ESoftClass ESC_System_Cannot_Delete = new ESoftClass(5, 5, "ESC_System_Cannot_Delete");
    public static final ESoftClass ESC_Trust = new ESoftClass(1, 1, "ESC_Trust");
    public static final ESoftClass ESC_Virus = new ESoftClass(3, 3, "ESC_Virus");
    public static final int _ESC_Dangerous = 4;
    public static final int _ESC_NONE = 0;
    public static final int _ESC_Rogue = 2;
    public static final int _ESC_System_Cannot_Delete = 5;
    public static final int _ESC_Trust = 1;
    public static final int _ESC_Virus = 3;
    static final /* synthetic */ boolean a = (!ESoftClass.class.desiredAssertionStatus());
    private static ESoftClass[] b = new ESoftClass[6];
    private int c;
    private String d = new String();

    private ESoftClass(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESoftClass convert(int i) {
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

    public static ESoftClass convert(String str) {
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
