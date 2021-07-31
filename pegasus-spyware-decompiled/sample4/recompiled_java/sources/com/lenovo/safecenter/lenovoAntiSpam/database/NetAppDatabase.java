package com.lenovo.safecenter.lenovoAntiSpam.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import java.util.List;

public class NetAppDatabase extends SQLiteOpenHelper {
    private Context a;

    public NetAppDatabase(Context context) {
        super(context, "nettable", (SQLiteDatabase.CursorFactory) null, 2);
        this.a = context;
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL("create table netblack(_id integer primary key autoincrement,number varchar,type Integer,contenttype varchar,inserttime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netlocalsign(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("CREATE TABLE IF NOT EXISTS netblack(_id integer primary key autoincrement,number varchar,type Integer,contenttype varchar,inserttime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netlocalsign(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
    }

    public void insert_NetSign(String lastin, String expire) {
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        if (!TextUtils.isEmpty(lastin)) {
            for (String str_item : lastin.split(",")) {
                String[] sign_str = str_item.split("=");
                db.execSQL("insert into netsigntable(phonenumber,signtype,signcount,addtime) values(?,?,?,?)", new Object[]{sign_str[0], sign_str[1], sign_str[2], String.valueOf(System.currentTimeMillis())});
            }
        }
        if (!TextUtils.isEmpty(expire)) {
            String[] str = expire.split(",");
            db.execSQL("delete from netsigntable where phonenumber=?", new Object[]{"10086"});
            int len$ = str.length;
            for (int i$ = 0; i$ < len$; i$++) {
                db.execSQL("delete from netsigntable where phonenumber=?", new Object[]{str[i$]});
            }
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void del_special() {
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        db.execSQL("delete from netsigntable where phonenumber=?", new Object[]{"10086"});
        db.execSQL("delete from netsigntable where phonenumber=?", new Object[]{"1008611"});
        db.execSQL("delete from netsigntable where phonenumber=?", new Object[]{"95522"});
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
        Log.i("ll", "del_special==10086");
    }

    public void insert(String Lastin_CallNumbers, String Lastin_SmsNumbers, String Lastin_Tags, String Expire_Tags, String Expire_CallNumbers, String Expire_SmsNumbers) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        try {
            if (!Lastin_CallNumbers.trim().equals("")) {
                String[] call_inStr = Lastin_CallNumbers.split(",");
                for (String str : call_inStr) {
                    Log.i("str", "call_inStr===" + str);
                    String[] arr = str.split("=");
                    db.execSQL("insert into netblack(number,type,contenttype,inserttime) values(?,?,?,?)", new Object[]{arr[0], 1, arr[1], Lastin_Tags});
                }
            }
            if (!Lastin_SmsNumbers.trim().equals("")) {
                String[] sms_inStr = Lastin_SmsNumbers.split(",");
                for (String str2 : sms_inStr) {
                    Log.i("str", "sms_inStr==" + str2);
                    db.execSQL("insert into netblack(number,type,inserttime) values(?,?,?)", new Object[]{str2, 3, Lastin_Tags});
                }
            }
            if (!Expire_CallNumbers.trim().equals("")) {
                String[] sms_inStr2 = Expire_CallNumbers.split(",");
                for (String str3 : sms_inStr2) {
                    Log.i("str", "sms_inStr==" + str3);
                    db.execSQL("delete from  netblack  where number=? and type=?", new Object[]{str3, 1});
                }
            }
            if (!Expire_SmsNumbers.trim().equals("")) {
                String[] sms_inStr3 = Expire_SmsNumbers.split(",");
                for (String str4 : sms_inStr3) {
                    Log.i("str", "sms_inStr==" + str4);
                    db.execSQL("delete from  netblack  where number=? and type=?", new Object[]{str4, 3});
                }
            }
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
            db.close();
        }
    }

    public SignCall get_netSign(String number) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select * from netsigntable where phonenumber=? order by _id desc", new String[]{number});
        SignCall info = null;
        if (cursor.getCount() > 0) {
            cursor.moveToFirst();
            info = new SignCall();
            info.setNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setsType(cursor.getInt(cursor.getColumnIndex("signtype")));
            info.setTotalCall(cursor.getInt(cursor.getColumnIndex("signcount")));
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
        }
        cursor.close();
        db.close();
        return info;
    }

    public SignCall local_netSign(String number) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select * from netlocalsign where phonenumber=? order by _id desc", new String[]{number});
        SignCall info = null;
        if (cursor.getCount() > 0) {
            cursor.moveToFirst();
            info = new SignCall();
            info.setNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setsType(cursor.getInt(cursor.getColumnIndex("signtype")));
            info.setTotalCall(cursor.getInt(cursor.getColumnIndex("signcount")));
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
        }
        cursor.close();
        db.close();
        return info;
    }

    public boolean isExistSign(String number) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select _id as id from netlocalsign where phonenumber=?  UNION ALL select _id as id from netsigntable where phonenumber=? order by id desc", new String[]{number, number});
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count > 0;
    }

    public void insert_LocalNetSign(List<SignCall> list) {
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        for (SignCall str_item : list) {
            db.execSQL("insert into netlocalsign(phonenumber,signtype,signcount,addtime) values(?,?,?,?)", new Object[]{str_item.getNumber(), Integer.valueOf(str_item.getsType()), Integer.valueOf(str_item.getTotalCall()), String.valueOf(System.currentTimeMillis())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }
}
