package QQPIM;

public final class EProduct {
    public static final EProduct EP_AppAssistant = new EProduct(12, 12, "EP_AppAssistant");
    public static final EProduct EP_BenchMark = new EProduct(22, 22, "EP_BenchMark");
    public static final EProduct EP_END = new EProduct(28, 28, "EP_END");
    public static final EProduct EP_KingRoot = new EProduct(14, 14, "EP_KingRoot");
    public static final EProduct EP_KingUser = new EProduct(17, 17, "EP_KingUser");
    public static final EProduct EP_King_SuperUser = new EProduct(26, 26, "EP_King_SuperUser");
    public static final EProduct EP_MobileQQ_Secure = new EProduct(6, 6, "EP_MobileQQ_Secure");
    public static final EProduct EP_None = new EProduct(0, 0, "EP_None");
    public static final EProduct EP_Phonebook = new EProduct(2, 2, "EP_Phonebook");
    public static final EProduct EP_PhonebookPro = new EProduct(20, 20, "EP_PhonebookPro");
    public static final EProduct EP_Phonebook_Eng = new EProduct(11, 11, "EP_Phonebook_Eng");
    public static final EProduct EP_Pim = new EProduct(3, 3, "EP_Pim");
    public static final EProduct EP_Pim_Eng = new EProduct(24, 24, "EP_Pim_Eng");
    public static final EProduct EP_Pim_Jailbreak = new EProduct(19, 19, "EP_Pim_Jailbreak");
    public static final EProduct EP_Pim_Pro = new EProduct(18, 18, "EP_Pim_Pro");
    public static final EProduct EP_PowerManager = new EProduct(21, 21, "EP_PowerManager");
    public static final EProduct EP_QQBrowse_Secure = new EProduct(7, 7, "EP_QQBrowse_Secure");
    public static final EProduct EP_QQPhonebook = new EProduct(4, 4, "EP_QQPhonebook");
    public static final EProduct EP_QZone = new EProduct(5, 5, "EP_QZone");
    public static final EProduct EP_SMS_Fraud_Killer = new EProduct(25, 25, "EP_SMS_Fraud_Killer");
    public static final EProduct EP_Secure = new EProduct(1, 1, "EP_Secure");
    public static final EProduct EP_SecurePro_Enhance = new EProduct(23, 23, "EP_SecurePro_Enhance");
    public static final EProduct EP_Secure_Eng = new EProduct(9, 9, "EP_Secure_Eng");
    public static final EProduct EP_Secure_Jailbreak = new EProduct(16, 16, "EP_Secure_Jailbreak");
    public static final EProduct EP_Secure_SDK = new EProduct(13, 13, "EP_Secure_SDK");
    public static final EProduct EP_Secure_SDK_Ign = new EProduct(27, 27, "EP_Secure_SDK_Ign");
    public static final EProduct EP_Secure_SDK_Pay = new EProduct(15, 15, "EP_Secure_SDK_Pay");
    public static final EProduct EP_WBlog = new EProduct(10, 10, "EP_WBlog");
    public static final EProduct EP_XiaoYou = new EProduct(8, 8, "EP_XiaoYou");
    public static final int _EP_AppAssistant = 12;
    public static final int _EP_BenchMark = 22;
    public static final int _EP_END = 28;
    public static final int _EP_KingRoot = 14;
    public static final int _EP_KingUser = 17;
    public static final int _EP_King_SuperUser = 26;
    public static final int _EP_MobileQQ_Secure = 6;
    public static final int _EP_None = 0;
    public static final int _EP_Phonebook = 2;
    public static final int _EP_PhonebookPro = 20;
    public static final int _EP_Phonebook_Eng = 11;
    public static final int _EP_Pim = 3;
    public static final int _EP_Pim_Eng = 24;
    public static final int _EP_Pim_Jailbreak = 19;
    public static final int _EP_Pim_Pro = 18;
    public static final int _EP_PowerManager = 21;
    public static final int _EP_QQBrowse_Secure = 7;
    public static final int _EP_QQPhonebook = 4;
    public static final int _EP_QZone = 5;
    public static final int _EP_SMS_Fraud_Killer = 25;
    public static final int _EP_Secure = 1;
    public static final int _EP_SecurePro_Enhance = 23;
    public static final int _EP_Secure_Eng = 9;
    public static final int _EP_Secure_Jailbreak = 16;
    public static final int _EP_Secure_SDK = 13;
    public static final int _EP_Secure_SDK_Ign = 27;
    public static final int _EP_Secure_SDK_Pay = 15;
    public static final int _EP_WBlog = 10;
    public static final int _EP_XiaoYou = 8;
    static final /* synthetic */ boolean a = (!EProduct.class.desiredAssertionStatus());
    private static EProduct[] b = new EProduct[29];
    private int c;
    private String d = new String();

    private EProduct(int i, int i2, String str) {
        this.d = str;
        this.c = i2;
        b[i] = this;
    }

    public static EProduct convert(int i) {
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

    public static EProduct convert(String str) {
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
