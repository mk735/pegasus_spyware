package com.lenovo.safecenter.lenovoAntiSpam.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Settings;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CheckCenter {
    public static String ACTION_HARASS = "action_harss";
    public static String ACTION_LOCALBLACK = "action_localblack";
    public static String ACTION_NETBLACK = "action_netblack";

    public static boolean modWhitePerson(Context context, String number, String name) {
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson");
            ContentValues values = new ContentValues();
            values.put("name", name);
            return resolver.update(uri, values, " phonenumber =? ", new String[]{number}) > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean modLocalBlack(Context context, String name, String number) {
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack");
            ContentValues values = new ContentValues();
            values.put("name", name);
            return resolver.update(uri, values, " phonenumber=?  ", new String[]{number}) > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0050 A[SYNTHETIC, Splitter:B:17:0x0050] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0055 A[SYNTHETIC, Splitter:B:20:0x0055] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x007b A[SYNTHETIC, Splitter:B:38:0x007b] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0080 A[SYNTHETIC, Splitter:B:41:0x0080] */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void updateSys(android.content.Context r9, java.io.InputStream r10) {
        /*
        // Method dump skipped, instructions count: 147
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter.updateSys(android.content.Context, java.io.InputStream):void");
    }

    public static boolean getHarssAction(Context context, String preName) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        boolean isOn = prefs.getBoolean(preName, false);
        if (preName.equals("openlocalsmsharass") || preName.equals("openintellectharass")) {
            return prefs.getBoolean(preName, true);
        }
        return isOn;
    }

    public static boolean isNetBlack(Context context, int type, String number) {
        try {
            ContractHelpUtils help = new ContractHelpUtils();
            if (help.isMobileNO(number)) {
                number = help.optNUmber(number);
            }
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.netBlackProvider/netblack"), null, "PHONE_NUMBERS_EQUAL(number,'" + number + "',0) and type=?", new String[]{String.valueOf(type)}, null);
            int count = cursor.getCount();
            cursor.close();
            return count > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean SysBlack(Context context, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0)", null, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isLocalBlack(Context context, int type, String number) {
        try {
            ContentResolver resolver = context.getContentResolver();
            ContractHelpUtils help = new ContractHelpUtils();
            if (help.isMobileNO(number)) {
                number = help.optNUmber(number);
            }
            Cursor cursor = resolver.query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) and (type=? or type=?)", new String[]{String.valueOf(type), String.valueOf(2)}, null);
            int count = cursor.getCount();
            cursor.close();
            return count > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isWhitePerson(Context context, String number) {
        try {
            ContractHelpUtils help = new ContractHelpUtils();
            if (help.isMobileNO(number)) {
                number = help.optNUmber(number);
            }
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) ", null, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static int getHarassCount(Context context, String type) {
        Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.HarassProvider/safe_log_harass"), null, " type=? and hassee=1", new String[]{type}, null);
        int count = cursor.getCount();
        cursor.close();
        return count;
    }

    public static boolean Judge(int bh, int bm, int eh, int em) {
        String[] times = new SimpleDateFormat("HH:mm").format(new Date(Long.parseLong(String.valueOf(System.currentTimeMillis())))).split(c.N);
        int curH = Integer.parseInt(times[0]);
        int curM = Integer.parseInt(times[1]);
        if (bh > eh) {
            if (curH > bh || curH < eh) {
                return true;
            }
            if (curH == bh && curM >= bm) {
                return true;
            }
            if (curH == eh && curM <= em) {
                return true;
            }
        } else if (bh < eh) {
            if (curH > bh && eh > curH) {
                return true;
            }
            if (curH == bh && curM >= bm) {
                return true;
            }
            if (curH == eh && curM <= em) {
                return true;
            }
        } else if (bh == eh && curH == bh && bm < curM && em > curM) {
            return true;
        }
        return false;
    }

    public static boolean judgeNightHarass(Context context) {
        if (Settings.System.getInt(context.getContentResolver(), "nightharss_switch", 0) == 0) {
            return false;
        }
        return Judge(Settings.System.getInt(context.getContentResolver(), "nightharss_BH", 23), Settings.System.getInt(context.getContentResolver(), "nightharss_BM", 0), Settings.System.getInt(context.getContentResolver(), "nightharss_EH", 7), Settings.System.getInt(context.getContentResolver(), "nightharss_EM", 30));
    }

    public static boolean insertLocalBlack(Context context, int type, String number) {
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack");
            ContentValues values = new ContentValues();
            values.put("type", Integer.valueOf(type));
            values.put("phonenumber", number);
            if (resolver.insert(uri, values) == null) {
                return false;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean insertWhitePerson(Context context, String number) {
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson");
            ContentValues values = new ContentValues();
            values.put("phonenumber", number);
            if (resolver.insert(uri, values) == null) {
                return false;
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
