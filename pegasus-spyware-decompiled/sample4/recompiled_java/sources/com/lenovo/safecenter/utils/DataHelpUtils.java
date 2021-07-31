package com.lenovo.safecenter.utils;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.support.Contract;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class DataHelpUtils {
    public static ArrayList<Activity> allActivity = new ArrayList<>();
    public static HashMap<Integer, BitmapDrawable> alluserIcon = new HashMap<>();

    public String updateTadHost_Str(SofeModeMain act, AppDatabase db) {
        String str = act.getString(R.string.safemode_sms);
        int count = db.getNotReadSms(1);
        if (count <= 0) {
            return str;
        }
        return str + String.format(act.getString(R.string.record_count), Integer.valueOf(count));
    }

    public String updateTadHostcall_Str(SofeModeMain act, AppDatabase db) {
        String str = act.getString(R.string.safemode_call);
        int count = db.getNotReadCallCount();
        if (count <= 0) {
            return str;
        }
        return str + String.format(act.getString(R.string.record_count), Integer.valueOf(count));
    }

    public static String execService(String method, Context context) {
        return context.getSharedPreferences("contract_seetings", 1).getString(method, "");
    }

    public static void UpdateConfig(String method, String value, Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences("contract_seetings", 1).edit();
        editor.putString(method, value);
        editor.commit();
    }

    public static Contract getContractModel(Context context, String number) {
        Contract white = null;
        try {
            ContentResolver resolver = context.getContentResolver();
            ContractHelpUtils help = new ContractHelpUtils();
            if (help.isMobileNO(number)) {
                number = help.optNUmber(number);
            }
            Cursor cursor = resolver.query(Uri.parse("content://com.lenovo.safecenter.whiteperson/whiteperson"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) ", null, null);
            if (cursor.moveToFirst()) {
                Contract white2 = new Contract();
                try {
                    white2.setId(cursor.getInt(cursor.getColumnIndex("_id")));
                    white2.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
                    white2.setName(cursor.getString(cursor.getColumnIndex("name")));
                    white2.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
                    white = white2;
                } catch (Exception e) {
                    return white2;
                }
            }
            cursor.close();
            return white;
        } catch (Exception e2) {
            return null;
        }
    }

    public static int isInWhiteContact(Context context, String number) {
        try {
            long time3 = System.currentTimeMillis();
            ContentResolver resolver = context.getContentResolver();
            ContractHelpUtils help = new ContractHelpUtils();
            if (help.isMobileNO(number)) {
                number = help.optNUmber(number);
            }
            Log.v("safemode", "help.isMobileNO(number)==" + (System.currentTimeMillis() - time3));
            Uri uri = Uri.parse("content://com.lenovo.safecenter.whiteperson/whiteperson");
            long time = System.currentTimeMillis();
            Cursor cursor = resolver.query(uri, new String[]{"phonenumber"}, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) ", null, null);
            int count = cursor.getCount();
            cursor.close();
            Log.v("safemode", "cursor.getCount()==" + (System.currentTimeMillis() - time));
            if (count > 0) {
                return count;
            }
            return 0;
        } catch (Exception e) {
        }
    }

    public static int isInWhiteContactCall(Context context, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.whiteperson/whiteperson"), new String[]{"phonenumber"}, "realnumber=?", new String[]{number}, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return count;
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static String getHarssAction(Context context, String preName) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String type = prefs.getString(preName, "0");
        if (preName.equals("sms_mode")) {
            return prefs.getString(preName, DatabaseTables.SYSTEM_MARK);
        }
        return type;
    }

    public static Activity getActivityByName(String name) {
        Activity getac = null;
        Iterator i$ = allActivity.iterator();
        while (i$.hasNext()) {
            Activity ac = i$.next();
            if (ac.getClass().getSimpleName().equals(name)) {
                getac = ac;
            }
        }
        return getac;
    }
}
