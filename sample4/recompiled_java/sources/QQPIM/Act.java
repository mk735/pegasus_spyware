package QQPIM;

public final class Act {
    public static final Act E_ACT_CHANGE_CODE = new Act(4, 4, "E_ACT_CHANGE_CODE");
    public static final Act E_ACT_CHANGE_TIME = new Act(7, 7, "E_ACT_CHANGE_TIME");
    public static final Act E_ACT_CLOSE = new Act(5, 5, "E_ACT_CLOSE");
    public static final Act E_ACT_FREQUNCY = new Act(2, 2, "E_ACT_FREQUNCY");
    public static final Act E_ACT_MAX = new Act(8, 8, "E_ACT_MAX");
    public static final Act E_ACT_MIN = new Act(0, 0, "E_ACT_MIN");
    public static final Act E_ACT_NOTHING = new Act(1, 1, "E_ACT_NOTHING");
    public static final Act E_ACT_REVISE_IMMEDI = new Act(6, 6, "E_ACT_REVISE_IMMEDI");
    public static final Act E_ACT_UPDATE_CODE = new Act(3, 3, "E_ACT_UPDATE_CODE");
    public static final int _E_ACT_CHANGE_CODE = 4;
    public static final int _E_ACT_CHANGE_TIME = 7;
    public static final int _E_ACT_CLOSE = 5;
    public static final int _E_ACT_FREQUNCY = 2;
    public static final int _E_ACT_MAX = 8;
    public static final int _E_ACT_MIN = 0;
    public static final int _E_ACT_NOTHING = 1;
    public static final int _E_ACT_REVISE_IMMEDI = 6;
    public static final int _E_ACT_UPDATE_CODE = 3;
    static final /* synthetic */ boolean a = (!Act.class.desiredAssertionStatus());
    private static Act[] b = new Act[9];
    private int c;
    private String d = new String();

    private Act(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static Act convert(int i) {
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

    public static Act convert(String str) {
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
