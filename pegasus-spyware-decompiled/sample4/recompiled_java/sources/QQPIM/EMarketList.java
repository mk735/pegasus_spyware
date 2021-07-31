package QQPIM;

public final class EMarketList {
    public static final EMarketList EML_91Helper = new EMarketList(4, 5, "EML_91Helper");
    public static final EMarketList EML_AnZhi = new EMarketList(1, 2, "EML_AnZhi");
    public static final EMarketList EML_AppChina = new EMarketList(2, 3, "EML_AppChina");
    public static final EMarketList EML_Baidu = new EMarketList(7, 8, "EML_Baidu");
    public static final EMarketList EML_GFan = new EMarketList(3, 4, "EML_GFan");
    public static final EMarketList EML_Google = new EMarketList(6, 7, "EML_Google");
    public static final EMarketList EML_HiApk = new EMarketList(0, 1, "EML_HiApk");
    public static final EMarketList EML_WanDouJia = new EMarketList(5, 6, "EML_WanDouJia");
    public static final int _EML_91Helper = 5;
    public static final int _EML_AnZhi = 2;
    public static final int _EML_AppChina = 3;
    public static final int _EML_Baidu = 8;
    public static final int _EML_GFan = 4;
    public static final int _EML_Google = 7;
    public static final int _EML_HiApk = 1;
    public static final int _EML_WanDouJia = 6;
    static final /* synthetic */ boolean a = (!EMarketList.class.desiredAssertionStatus());
    private static EMarketList[] b = new EMarketList[8];
    private int c;
    private String d = new String();

    private EMarketList(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EMarketList convert(int i) {
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

    public static EMarketList convert(String str) {
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
