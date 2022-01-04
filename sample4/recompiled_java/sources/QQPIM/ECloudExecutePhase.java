package QQPIM;

public final class ECloudExecutePhase {
    public static final ECloudExecutePhase ECEP_Phase_Execute = new ECloudExecutePhase(3, 3, "ECEP_Phase_Execute");
    public static final ECloudExecutePhase ECEP_Phase_None = new ECloudExecutePhase(0, 0, "ECEP_Phase_None");
    public static final ECloudExecutePhase ECEP_Phase_Show = new ECloudExecutePhase(1, 1, "ECEP_Phase_Show");
    public static final ECloudExecutePhase ECEP_Phase_User_Confirm = new ECloudExecutePhase(2, 2, "ECEP_Phase_User_Confirm");
    public static final int _ECEP_Phase_Execute = 3;
    public static final int _ECEP_Phase_None = 0;
    public static final int _ECEP_Phase_Show = 1;
    public static final int _ECEP_Phase_User_Confirm = 2;
    static final /* synthetic */ boolean a = (!ECloudExecutePhase.class.desiredAssertionStatus());
    private static ECloudExecutePhase[] b = new ECloudExecutePhase[4];
    private int c;
    private String d = new String();

    private ECloudExecutePhase(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ECloudExecutePhase convert(int i) {
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

    public static ECloudExecutePhase convert(String str) {
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
