package com.lenovo.safecenter.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.newview.FirstHarssActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class SafeCenter {
    public static String ACTION_PRIVATE_MODE_ON = "com.safecenter.broadcast.openPrivacyMode";
    public static final int IS_LocalBlack = 1;
    public static final int IS_NetBlack = 2;
    public static final int NOT_Black = 0;
    public static int count = 0;
    public static final int net_disconnect = 1;
    public static final int server_disconnect = 0;
    public static final int upload_success = 2;

    public static boolean isMobileNO(String mobiles) {
        try {
            String number = mobiles.replaceAll("-", "");
            return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$").matcher(number.substring(number.length() - 11, number.length())).matches();
        } catch (Exception e) {
            return false;
        }
    }

    public static String optNUmber(String mobiles) {
        String number = mobiles.replaceAll("-", "");
        return number.substring(number.length() - 11, number.length());
    }

    public static boolean isNetBlack(Context context, int type, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.netBlackProvider/netblack"), new String[]{"_id"}, "number=? and type=?", new String[]{number, String.valueOf(type)}, null);
            int count2 = cursor.getCount();
            cursor.close();
            return count2 > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static List<String> getNetBlack(Context context) {
        List<String> netBlackPerson = new ArrayList<>();
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.netBlackProvider/netblack"), new String[]{AppDatabase.NUMBER}, "type=?", new String[]{String.valueOf(1)}, null);
            while (cursor.moveToNext()) {
                netBlackPerson.add(cursor.getString(0));
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return netBlackPerson;
    }

    public static List<String> getAllNetBlack(Context context) {
        List<String> netBlackPerson = new ArrayList<>();
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.netBlackProvider/netblack"), new String[]{AppDatabase.NUMBER}, null, null, null);
            while (cursor.moveToNext()) {
                netBlackPerson.add(cursor.getString(0));
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return netBlackPerson;
    }

    public static boolean isLocalBlack(Context context, int type, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), new String[]{"_id"}, "realnumber=? and type=?", new String[]{number, String.valueOf(type)}, null);
            int count2 = cursor.getCount();
            cursor.close();
            return count2 > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static List<String> getLocalBlack(Context context) {
        List<String> localBlackPerson = new ArrayList<>();
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), new String[]{"realnumber"}, "(type=? or type=?)", new String[]{String.valueOf(1), String.valueOf(2)}, null);
            while (cursor.moveToNext()) {
                localBlackPerson.add(cursor.getString(0));
                Log.i("msg", "cursor.getString(0)=" + cursor.getString(0));
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return localBlackPerson;
    }

    public static List<String> getAllLocalBlack(Context context) {
        List<String> localBlackPerson = new ArrayList<>();
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), new String[]{"realnumber"}, null, null, null);
            while (cursor.moveToNext()) {
                localBlackPerson.add(cursor.getString(0));
                Log.i("msg", "cursor.getString(0)=" + cursor.getString(0));
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return localBlackPerson;
    }

    public static boolean isWhitePerson(Context context, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), new String[]{"_id"}, "realnumber=? ", new String[]{number}, null);
            int count2 = cursor.getCount();
            cursor.close();
            return count2 > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static List<String> getWhitePerson(Context context) {
        List<String> whitePerson = new ArrayList<>();
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), new String[]{"realnumber"}, null, null, null);
            while (cursor.moveToNext()) {
                whitePerson.add(cursor.getString(0));
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return whitePerson;
    }

    public static List<String> getScurityPerson(Context context) {
        List<String> whitePerson = new ArrayList<>();
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.whiteperson/whiteperson"), new String[]{"realnumber"}, null, null, null);
            while (cursor.moveToNext()) {
                whitePerson.add(cursor.getString(0));
            }
            cursor.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return whitePerson;
    }

    public static int findBlack(Context context, int type, String number) {
        try {
            if (isLocalBlack(context, type, number)) {
                return 1;
            }
            if (isNetBlack(context, type, number)) {
                return 2;
            }
            return 0;
        } catch (Exception e) {
            return 0;
        }
    }

    public static boolean isIntercept(Context context, String number) {
        ContentResolver resolver = context.getContentResolver();
        int mode = Settings.System.getInt(resolver, "intercall_mode_type", 0);
        if (mode == 2) {
            return false;
        }
        if (mode != 0) {
            return mode == 1 && !isWhitePerson(context, number);
        }
        int black_mode = findBlack(context, 1, number);
        if (black_mode != 0) {
            return black_mode == 1 ? Settings.System.getInt(resolver, "localBlackCall_mode_on", 1) == 1 : black_mode == 2 && Settings.System.getInt(resolver, "netBlackCall_mode_on", 0) == 1;
        }
        return false;
    }

    public static void AddPhoneLog(Context context, String number, long datetime, int fromtype) {
        ContentResolver resolver = context.getContentResolver();
        Uri uri = Uri.parse("content://com.lenovo.safecenter.HarassProvider/safe_log_harass");
        ContentValues values = new ContentValues();
        values.put(AppDatabase.NUMBER, number);
        values.put(AppDatabase.TIME, String.valueOf(datetime));
        if (fromtype > 5) {
            values.put("fromtype", Integer.valueOf(Settings.System.getInt(context.getContentResolver(), "intercall_mode_type", 0) + 6));
        } else {
            values.put("fromtype", Integer.valueOf(fromtype));
        }
        resolver.insert(uri, values);
        showFirstHarass(context);
    }

    public static void showFirstHarass(Context context) {
        if (Const.getHarassCount(context, 1) == 1 && Const.getHarassCount(context, 0) == 0) {
            Intent intent = new Intent(context, FirstHarssActivity.class);
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }
}
