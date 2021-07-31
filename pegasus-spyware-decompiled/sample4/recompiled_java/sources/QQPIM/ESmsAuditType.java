package QQPIM;

public final class ESmsAuditType {
    public static final ESmsAuditType EMSAT_BLACK = new ESmsAuditType(3, 3, "EMSAT_BLACK");
    public static final ESmsAuditType EMSAT_CHARGE_INTERCEPT = new ESmsAuditType(8, 8, "EMSAT_CHARGE_INTERCEPT");
    public static final ESmsAuditType EMSAT_CONTENT_TOO_SHORT = new ESmsAuditType(7, 7, "EMSAT_CONTENT_TOO_SHORT");
    public static final ESmsAuditType EMSAT_DOUBT = new ESmsAuditType(4, 4, "EMSAT_DOUBT");
    public static final ESmsAuditType EMSAT_DOUBT_INTERCEPT = new ESmsAuditType(6, 6, "EMSAT_DOUBT_INTERCEPT");
    public static final ESmsAuditType EMSAT_MAX = new ESmsAuditType(9, 9, "EMSAT_MAX");
    public static final ESmsAuditType EMSAT_NORMAL = new ESmsAuditType(1, 1, "EMSAT_NORMAL");
    public static final ESmsAuditType EMSAT_UNKNOWN = new ESmsAuditType(5, 5, "EMSAT_UNKNOWN");
    public static final ESmsAuditType EMSAT_WHITE = new ESmsAuditType(2, 2, "EMSAT_WHITE");
    public static final ESmsAuditType MSAT_MIN = new ESmsAuditType(0, 0, "MSAT_MIN");
    public static final int _EMSAT_BLACK = 3;
    public static final int _EMSAT_CHARGE_INTERCEPT = 8;
    public static final int _EMSAT_CONTENT_TOO_SHORT = 7;
    public static final int _EMSAT_DOUBT = 4;
    public static final int _EMSAT_DOUBT_INTERCEPT = 6;
    public static final int _EMSAT_MAX = 9;
    public static final int _EMSAT_NORMAL = 1;
    public static final int _EMSAT_UNKNOWN = 5;
    public static final int _EMSAT_WHITE = 2;
    public static final int _MSAT_MIN = 0;
    static final /* synthetic */ boolean a = (!ESmsAuditType.class.desiredAssertionStatus());
    private static ESmsAuditType[] b = new ESmsAuditType[10];
    private int c;
    private String d = new String();

    private ESmsAuditType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ESmsAuditType convert(int i) {
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

    public static ESmsAuditType convert(String str) {
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
