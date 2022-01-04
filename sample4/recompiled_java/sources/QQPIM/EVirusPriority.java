package QQPIM;

public final class EVirusPriority {
    public static final EVirusPriority VP_High = new EVirusPriority(2, 2, "VP_High");
    public static final EVirusPriority VP_Low = new EVirusPriority(0, 0, "VP_Low");
    public static final EVirusPriority VP_Mid = new EVirusPriority(1, 1, "VP_Mid");
    public static final int _VP_High = 2;
    public static final int _VP_Low = 0;
    public static final int _VP_Mid = 1;
    static final /* synthetic */ boolean a = (!EVirusPriority.class.desiredAssertionStatus());
    private static EVirusPriority[] b = new EVirusPriority[3];
    private int c;
    private String d = new String();

    private EVirusPriority(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EVirusPriority convert(int i) {
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

    public static EVirusPriority convert(String str) {
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
