package QQPIM;

public final class NetInterfaceUsageType {
    public static final NetInterfaceUsageType NET_INTERFACE_TYPE_TRAFFIC_STAT = new NetInterfaceUsageType("NET_INTERFACE_TYPE_TRAFFIC_STAT");
    public static final int _NET_INTERFACE_TYPE_TRAFFIC_STAT = 0;
    static final /* synthetic */ boolean a = (!NetInterfaceUsageType.class.desiredAssertionStatus());
    private static NetInterfaceUsageType[] b = new NetInterfaceUsageType[1];
    private int c;
    private String d = new String();

    private NetInterfaceUsageType(String str) {
        this.d = str;
        this.c = 0;
        b[0] = this;
    }

    public static NetInterfaceUsageType convert(int i) {
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

    public static NetInterfaceUsageType convert(String str) {
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
