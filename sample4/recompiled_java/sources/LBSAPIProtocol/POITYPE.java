package LBSAPIProtocol;

public final class POITYPE {
    public static final POITYPE POI_BANK = new POITYPE(14, 250000, "POI_BANK");
    public static final POITYPE POI_BEAUTY = new POITYPE(6, 170000, "POI_BEAUTY");
    public static final POITYPE POI_CAR = new POITYPE(8, 190000, "POI_CAR");
    public static final POITYPE POI_COM = new POITYPE(1, 110000, "POI_COM");
    public static final POITYPE POI_CULTURE = new POITYPE(12, 230000, "POI_CULTURE");
    public static final POITYPE POI_ENTM = new POITYPE(5, 160000, "POI_ENTM");
    public static final POITYPE POI_ESTATE = new POITYPE(17, 280000, "POI_ESTATE");
    public static final POITYPE POI_FOOD = new POITYPE(0, 100000, "POI_FOOD");
    public static final POITYPE POI_HEALTH = new POITYPE(9, 200000, "POI_HEALTH");
    public static final POITYPE POI_HOTEL = new POITYPE(10, 210000, "POI_HOTEL");
    public static final POITYPE POI_INFRA = new POITYPE(16, 270000, "POI_INFRA");
    public static final POITYPE POI_ORG = new POITYPE(2, 120000, "POI_ORG");
    public static final POITYPE POI_PLACE = new POITYPE(15, 260000, "POI_PLACE");
    public static final POITYPE POI_SCHOOL = new POITYPE(13, 240000, "POI_SCHOOL");
    public static final POITYPE POI_SERVICE = new POITYPE(4, 140000, "POI_SERVICE");
    public static final POITYPE POI_SHOPPING = new POITYPE(3, 130000, "POI_SHOPPING");
    public static final POITYPE POI_SPORT = new POITYPE(7, 180000, "POI_SPORT");
    public static final POITYPE POI_TOUR = new POITYPE(11, 220000, "POI_TOUR");
    public static final int _POI_BANK = 250000;
    public static final int _POI_BEAUTY = 170000;
    public static final int _POI_CAR = 190000;
    public static final int _POI_COM = 110000;
    public static final int _POI_CULTURE = 230000;
    public static final int _POI_ENTM = 160000;
    public static final int _POI_ESTATE = 280000;
    public static final int _POI_FOOD = 100000;
    public static final int _POI_HEALTH = 200000;
    public static final int _POI_HOTEL = 210000;
    public static final int _POI_INFRA = 270000;
    public static final int _POI_ORG = 120000;
    public static final int _POI_PLACE = 260000;
    public static final int _POI_SCHOOL = 240000;
    public static final int _POI_SERVICE = 140000;
    public static final int _POI_SHOPPING = 130000;
    public static final int _POI_SPORT = 180000;
    public static final int _POI_TOUR = 220000;
    static final /* synthetic */ boolean a = (!POITYPE.class.desiredAssertionStatus());
    private static POITYPE[] b = new POITYPE[18];
    private int c;
    private String d = new String();

    private POITYPE(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static POITYPE convert(int i) {
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

    public static POITYPE convert(String str) {
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
