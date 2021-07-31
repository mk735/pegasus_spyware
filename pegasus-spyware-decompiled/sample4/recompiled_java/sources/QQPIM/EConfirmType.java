package QQPIM;

public final class EConfirmType {
    public static final EConfirmType ECT_Confirm_Type_End = new EConfirmType(2, 2, "ECT_Confirm_Type_End");
    public static final EConfirmType ECT_Confirm_Type_None = new EConfirmType(0, 0, "ECT_Confirm_Type_None");
    public static final EConfirmType ECT_Confirm_Type_SecondChk = new EConfirmType(1, 1, "ECT_Confirm_Type_SecondChk");
    public static final int _ECT_Confirm_Type_End = 2;
    public static final int _ECT_Confirm_Type_None = 0;
    public static final int _ECT_Confirm_Type_SecondChk = 1;
    static final /* synthetic */ boolean a = (!EConfirmType.class.desiredAssertionStatus());
    private static EConfirmType[] b = new EConfirmType[3];
    private int c;
    private String d = new String();

    private EConfirmType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EConfirmType convert(int i) {
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

    public static EConfirmType convert(String str) {
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
