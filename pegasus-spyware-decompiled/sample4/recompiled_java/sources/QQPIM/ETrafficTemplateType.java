package QQPIM;

public final class ETrafficTemplateType {
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN = new ETrafficTemplateType(5, 5, "E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END = new ETrafficTemplateType(6, 6, "E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_EXCESS = new ETrafficTemplateType(3, 3, "E_TRAFFIC_TEMPLATE_TYPE_EXCESS");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_LEFT = new ETrafficTemplateType(1, 1, "E_TRAFFIC_TEMPLATE_TYPE_LEFT");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_MAX = new ETrafficTemplateType(7, 7, "E_TRAFFIC_TEMPLATE_TYPE_MAX");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_MIN = new ETrafficTemplateType(0, 0, "E_TRAFFIC_TEMPLATE_TYPE_MIN");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_PACKAGE = new ETrafficTemplateType(4, 4, "E_TRAFFIC_TEMPLATE_TYPE_PACKAGE");
    public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_USE = new ETrafficTemplateType(2, 2, "E_TRAFFIC_TEMPLATE_TYPE_USE");
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN = 5;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END = 6;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_EXCESS = 3;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_LEFT = 1;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_MAX = 7;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_MIN = 0;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_PACKAGE = 4;
    public static final int _E_TRAFFIC_TEMPLATE_TYPE_USE = 2;
    static final /* synthetic */ boolean a = (!ETrafficTemplateType.class.desiredAssertionStatus());
    private static ETrafficTemplateType[] b = new ETrafficTemplateType[8];
    private int c;
    private String d = new String();

    private ETrafficTemplateType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static ETrafficTemplateType convert(int i) {
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

    public static ETrafficTemplateType convert(String str) {
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
