package LBSAPIProtocol;

public final class DeviceType {
    public static final DeviceType DEVICE_ANDROID = new DeviceType(0, 1, "DEVICE_ANDROID");
    public static final DeviceType DEVICE_IPHONE = new DeviceType(3, 4, "DEVICE_IPHONE");
    public static final DeviceType DEVICE_S60_V3 = new DeviceType(1, 2, "DEVICE_S60_V3");
    public static final DeviceType DEVICE_S60_V5 = new DeviceType(2, 3, "DEVICE_S60_V5");
    public static final int _DEVICE_ANDROID = 1;
    public static final int _DEVICE_IPHONE = 4;
    public static final int _DEVICE_S60_V3 = 2;
    public static final int _DEVICE_S60_V5 = 3;
    static final /* synthetic */ boolean a = (!DeviceType.class.desiredAssertionStatus());
    private static DeviceType[] b = new DeviceType[4];
    private int c;
    private String d = new String();

    private DeviceType(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static DeviceType convert(int i) {
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

    public static DeviceType convert(String str) {
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
