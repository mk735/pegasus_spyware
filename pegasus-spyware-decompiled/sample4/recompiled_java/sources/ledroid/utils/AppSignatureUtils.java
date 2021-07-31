package ledroid.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

public final class AppSignatureUtils {
    public static final String[] SIGNATURE_MD5S = {"EBAA529685AAE3A1D299AC15F7710AEA", "B78A0EE7E80045B4F9A0C425703D0CA4", "388CF508552BC50ED26A8715D33312BA", "49FF2FEA9A214DCC2F7EF229488B1A54", "56B44C8B44C3A4064FE0667DC91E01AA", "CEA942B20A36347B3BF793BFF50F737D"};
    private static MessageDigest a;
    private static List<String> b = new ArrayList();
    private static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private AppSignatureUtils() {
    }

    static {
        try {
            a = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException nsaex) {
            nsaex.printStackTrace();
        }
    }

    public static String getCretMD5(Context context, String packName) {
        Signature[] sigs;
        String md5 = null;
        try {
            for (Signature signature : context.getPackageManager().getPackageInfo(packName, 64).signatures) {
                md5 = getMD5String(signature.toByteArray());
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (md5 != null) {
            return md5.toUpperCase();
        }
        return null;
    }

    public static String getMD5String(byte[] bytes) {
        a.update(bytes);
        byte[] digest = a.digest();
        int length = digest.length;
        StringBuffer stringBuffer = new StringBuffer(length * 2);
        int i = length + 0;
        for (int i2 = 0; i2 < i; i2++) {
            byte b2 = digest[i2];
            char c2 = c[(b2 & 240) >> 4];
            char c3 = c[b2 & 15];
            stringBuffer.append(c2);
            stringBuffer.append(c3);
        }
        return stringBuffer.toString();
    }

    public static List<String> getsignatureMd5sList(Context context) {
        b.add(getCretMD5(context, "com.android.settings"));
        b.add(getCretMD5(context, "com.android.contacts"));
        return b;
    }
}
