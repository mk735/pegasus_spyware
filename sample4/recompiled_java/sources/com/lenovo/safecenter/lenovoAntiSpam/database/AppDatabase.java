package com.lenovo.safecenter.lenovoAntiSpam.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo;
import com.lenovo.safecenter.lenovoAntiSpam.domain.Contract;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class AppDatabase extends SQLiteOpenHelper {
    private Context a;

    public AppDatabase(Context context) {
        super(context, "black", (SQLiteDatabase.CursorFactory) null, 2);
        this.a = context;
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL("create table netblack(_id integer primary key autoincrement,number varchar,type Integer,contenttype varchar,inserttime varchar)");
        db.execSQL("create table localblack(_id integer primary key autoincrement,name varchar,phonenumber varchar,type Integer,isupload integer,addtime varchar,intercepttype Integer,realnumber varchar)");
        db.execSQL("create table whiteperson(_id integer primary key autoincrement,name varchar,phonenumber varchar,addtime varchar,realnumber varchar)");
        db.execSQL("create table whitesmsperson(_id integer primary key autoincrement,name varchar,phonenumber varchar,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS signcall(_id integer primary key autoincrement,phonenumber varchar,bigtype integer,smalltype integer,isupload integer,calltotal integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("CREATE TABLE IF NOT EXISTS signcall(_id integer primary key autoincrement,phonenumber varchar,bigtype integer,smalltype integer,isupload integer,calltotal integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
        Log.i("onUpgrade", "onUpgrade==");
        try {
            com.lenovo.safecenter.database.AppDatabase Db = new com.lenovo.safecenter.database.AppDatabase(this.a);
            if (Db.getSignCount() > 0) {
                Log.i("onUpgrade", "Db.getSignCount==in");
                insertSignList(Db.getSignList(), db);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertSignCall(SignCall info) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("insert into signcall(phonenumber,bigtype,smalltype,isupload,calltotal,addtime) values(?,?,?,?,?,?)", new Object[]{info.getNumber(), Integer.valueOf(info.getbType()), Integer.valueOf(info.getsType()), Integer.valueOf(info.getIsUpload()), Integer.valueOf(info.getTotalCall()), info.getAddTime()});
        db.close();
    }

    public void insertSignList(List<SignCall> list, SQLiteDatabase db) {
        Log.i("onUpgrade", "Db.insertSignList==in");
        for (SignCall info : list) {
            db.execSQL("insert into signcall(phonenumber,bigtype,smalltype,isupload,calltotal,addtime) values(?,?,?,?,?,?)", new Object[]{info.getNumber(), Integer.valueOf(info.getbType()), Integer.valueOf(info.getsType()), Integer.valueOf(info.getIsUpload()), Integer.valueOf(info.getTotalCall()), info.getAddTime()});
            Log.i("onUpgrade", "Db.getSignCount==" + info.getNumber());
        }
    }

    public void updateSign(String number) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update signcall set isupload=? where phonenumber=?", new Object[]{1, number});
        db.close();
    }

    public void updateAllSign() {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update signcall set isupload=?", new Object[]{1});
        db.close();
    }

    public void delSignCall(SignCall info) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from signcall where _id=? ", new Object[]{Integer.valueOf(info.getId())});
        db.close();
    }

    public List<SignCall> getSignList() {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select * from signcall order by _id desc", null);
        List<SignCall> list = new ArrayList<>();
        while (cursor.moveToNext()) {
            SignCall info = new SignCall();
            info.setNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setAddTime(cursor.getString(cursor.getColumnIndex("addtime")));
            info.setbType(cursor.getInt(cursor.getColumnIndex("bigtype")));
            info.setsType(cursor.getInt(cursor.getColumnIndex("smalltype")));
            info.setTotalCall(cursor.getInt(cursor.getColumnIndex("calltotal")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            list.add(info);
        }
        cursor.close();
        db.close();
        return list;
    }

    public int getSignCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select _id from signcall order by _id desc", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public SignCall getSignCall(String number) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from signcall where phonenumber=?", new String[]{number});
        SignCall info = null;
        if (cursor.getCount() > 0) {
            cursor.moveToFirst();
            info = new SignCall();
            info.setNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setAddTime(cursor.getString(cursor.getColumnIndex("addtime")));
            info.setbType(cursor.getInt(cursor.getColumnIndex("bigtype")));
            info.setsType(cursor.getInt(cursor.getColumnIndex("smalltype")));
            info.setTotalCall(cursor.getInt(cursor.getColumnIndex("calltotal")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
        }
        cursor.close();
        db.close();
        return info;
    }

    public void deleAll() {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from netblack");
        db.execSQL("delete from localblack");
        db.execSQL("delete from whiteperson");
        db.execSQL("delete from whitesmsperson");
        db.close();
    }

    public void insertLocalBlack(BlackInfo info) {
        getReadableDatabase().execSQL("insert into localblack(name,phonenumber,type,isupload,addtime,intercepttype,realnumber) values(?,?,?,?,?,?,?)", new Object[]{info.getName(), info.getPhoneNumber(), Integer.valueOf(info.getType()), Integer.valueOf(info.getIsUpload()), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(info.getIntercepttype()), info.getRealnumber()});
    }

    public boolean isMobileNO(String mobiles) {
        try {
            String number = mobiles.replaceAll("-", "");
            return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$").matcher(number.substring(number.length() - 11, number.length())).matches();
        } catch (Exception e) {
            return false;
        }
    }

    public String optNUmber(String mobiles) {
        String number = mobiles.replaceAll("-", "");
        return number.substring(number.length() - 11, number.length());
    }

    public String getRealPhoneNumber(String number) {
        if (isMobileNO(number)) {
            return optNUmber(number);
        }
        return number;
    }

    public void insertLocalBlack(List<Contract> conList, int type) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        ContractHelpUtils utils = new ContractHelpUtils();
        for (Contract con : conList) {
            if (con.getRealnumber() == null) {
                con.setRealnumber(utils.getRealPhoneNumber(con.getPhoneNumber()));
            }
            db.execSQL("insert into localblack(name,phonenumber,type,isupload,addtime,intercepttype,realnumber) values(?,?,?,?,?,?,?)", new Object[]{con.getName(), con.getPhoneNumber(), Integer.valueOf(type), 0, Long.valueOf(System.currentTimeMillis()), 0, con.getRealnumber()});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void insertWhiteSms(List<Contract> conList) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (Contract con : conList) {
            db.execSQL("insert into whitesmsperson(name,phonenumber,addtime) values(?,?,?)", new Object[]{con.getName(), con.getPhoneNumber(), Long.valueOf(System.currentTimeMillis())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void initWhiteSMS() {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"10086", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"10010", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"10001", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95599", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95559", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95561", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95533", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95555", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"1065795555", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"106909599", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"1065502010095560", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95528", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95526", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95588", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95568", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95508", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95558", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95595", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95501", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95566", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95580", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95527", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"95577", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"96155", Long.valueOf(System.currentTimeMillis())});
        db.execSQL("insert into whitesmsperson(phonenumber,addtime) values(?,?)", new Object[]{"10655599", Long.valueOf(System.currentTimeMillis())});
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void insertWhite(List<Contract> conList) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        ContractHelpUtils utils = new ContractHelpUtils();
        for (Contract con : conList) {
            db.execSQL("insert into whiteperson(name,phonenumber,addtime,realnumber) values(?,?,?,?)", new Object[]{con.getName(), con.getPhoneNumber(), Long.valueOf(System.currentTimeMillis()), utils.getRealPhoneNumber(con.getPhoneNumber())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void insertWritePerson(String phoneNumber, String realnumber, String name) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("insert into whiteperson(name,phonenumber,addtime,realnumber) values(?,?,?,?)", new Object[]{name, phoneNumber, Long.valueOf(System.currentTimeMillis()), realnumber});
        db.close();
    }

    public void updateWritePerson(String phoneNumber, String realnumber, String name, int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update whiteperson  set name=?, phonenumber=?,realnumber=? where _id=? ", new Object[]{name, phoneNumber, realnumber, Integer.valueOf(id)});
        db.close();
    }

    public void deleteWhite(List<BlackInfo> selList) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = selList.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from whiteperson where _id=?", new Object[]{Integer.valueOf(i$.next().getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteWhitebyrealnumber(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from whiteperson where realnumber=?", new Object[]{i$.next().getRealnumber()});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteBlackbyrealnumber(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from localblack where realnumber=?", new Object[]{i$.next().getRealnumber()});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deletesmsWhite(List<BlackInfo> selList) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = selList.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from whitesmsperson where _id=?", new Object[]{Integer.valueOf(i$.next().getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteWhite(int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from whiteperson where _id=?", new Object[]{Integer.valueOf(id)});
        db.close();
    }

    public void deletesmsWhite(int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from whitesmsperson where _id=?", new Object[]{Integer.valueOf(id)});
        db.close();
    }

    public void deleteLocalBlack(int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from localblack where _id=?", new Object[]{Integer.valueOf(id)});
        db.close();
    }

    public void deleteLocalBlack(List<BlackInfo> selList) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = selList.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from localblack where _id=?", new Object[]{Integer.valueOf(i$.next().getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void updateLocalBlack(int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update localblack set isupload=? where _id=?", new Object[]{1, Integer.valueOf(id)});
        db.close();
    }

    public void updateLocalBlackcall(int id, int intrpect) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update localblack set intercepttype=? where _id=?", new Object[]{Integer.valueOf(intrpect), Integer.valueOf(id)});
        db.close();
    }

    public void updateLocalBlack(String ids) {
        String[] id_array = ids.split(",");
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (String str : id_array) {
            db.execSQL("update localblack set isupload=? where _id=?", new Object[]{1, Integer.valueOf(Integer.parseInt(str))});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void updateLocalBlack_Demo(int id, String name, String number, String realnumber, int type, int interpecttype) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update localblack set name=?,type=?,realnumber=?,phonenumber=?,intercepttype=? where _id=?", new Object[]{name, Integer.valueOf(type), realnumber, number, Integer.valueOf(interpecttype), Integer.valueOf(id)});
        db.close();
    }

    public List<BlackInfo> getLocalBlackList(int type, int isupload) {
        List<BlackInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from localblack where  isupload=? order by addtime desc", new String[]{String.valueOf(isupload)});
        while (cursor.moveToNext()) {
            BlackInfo info = new BlackInfo();
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            info.setName(cursor.getString(cursor.getColumnIndex("name")));
            info.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setType(cursor.getInt(cursor.getColumnIndex("type")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setIntercepttype(cursor.getInt(cursor.getColumnIndex("intercepttype")));
            list.add(info);
        }
        cursor.close();
        db.close();
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public List<BlackInfo> getLocalBlackList(int type) {
        List<BlackInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from localblack  order by addtime desc", null);
        while (cursor.moveToNext()) {
            BlackInfo info = new BlackInfo();
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            info.setName(cursor.getString(cursor.getColumnIndex("name")));
            info.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setType(cursor.getInt(cursor.getColumnIndex("type")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setIntercepttype(cursor.getInt(cursor.getColumnIndex("intercepttype")));
            list.add(info);
        }
        cursor.close();
        db.close();
        return list;
    }

    public BlackInfo getLocalBlackDemo(int id) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from localblack where _id=? order by addtime desc", new String[]{String.valueOf(id)});
        BlackInfo info = null;
        if (cursor.moveToNext()) {
            info = new BlackInfo();
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            info.setName(cursor.getString(cursor.getColumnIndex("name")));
            info.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setType(cursor.getInt(cursor.getColumnIndex("type")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setIntercepttype(cursor.getInt(cursor.getColumnIndex("intercepttype")));
        }
        cursor.close();
        db.close();
        return info;
    }

    public int getBlackListcount(int type) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from localblack  order by addtime desc", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public List<BlackInfo> getLocalBlackList() {
        List<BlackInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from localblack order by addtime desc", null);
        while (cursor.moveToNext()) {
            BlackInfo info = new BlackInfo();
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            info.setName(cursor.getString(cursor.getColumnIndex("name")));
            info.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setType(cursor.getInt(cursor.getColumnIndex("type")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setIntercepttype(cursor.getInt(cursor.getColumnIndex("intercepttype")));
            list.add(info);
        }
        cursor.close();
        db.close();
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public List<BlackInfo> getWhitePersonList() {
        List<BlackInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whiteperson order by addtime desc", null);
        while (cursor.moveToNext()) {
            BlackInfo info = new BlackInfo();
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            info.setName(cursor.getString(cursor.getColumnIndex("name")));
            info.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            list.add(info);
        }
        cursor.close();
        db.close();
        return list;
    }

    public int getWhitePersonCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whiteperson order by addtime desc", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public List<BlackInfo> getSmsWhitePersonList() {
        List<BlackInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whitesmsperson order by addtime desc", null);
        while (cursor.moveToNext()) {
            BlackInfo info = new BlackInfo();
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            info.setName(cursor.getString(cursor.getColumnIndex("name")));
            info.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            list.add(info);
        }
        cursor.close();
        db.close();
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    public void syncConName(List<BlackInfo> list, String tablename) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (BlackInfo con : list) {
            db.execSQL("update " + tablename + "  set name=?  where _id=?", new Object[]{con.getName(), Integer.valueOf(con.getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }
}
