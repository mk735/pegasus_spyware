package LBSAPIProtocol;

public final class GPSTYPE {
    public static final GPSTYPE GPS_MARS = new GPSTYPE(1, 1, "GPS_MARS");
    public static final GPSTYPE GPS_WGS84 = new GPSTYPE(0, 0, "GPS_WGS84");
    public static final GPSTYPE GPS_WGS_REAL = new GPSTYPE(2, 2, "GPS_WGS_REAL");
    public static final int _GPS_MARS = 1;
    public static final int _GPS_WGS84 = 0;
    public static final int _GPS_WGS_REAL = 2;
    static final /* synthetic */ boolean a = (!GPSTYPE.class.desiredAssertionStatus());
    private static GPSTYPE[] b = new GPSTYPE[3];
    private int c;
    private String d = new String();

    private GPSTYPE(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static GPSTYPE convert(int i) {
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

    public static GPSTYPE convert(String str) {
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
