package com.lenovo.safecenter.lenovoAntiSpam.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.database.NetAppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.BlackInfo;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.utils.Untils;

public class LocalBlackProvider extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private AppDatabase b;
    private NetAppDatabase c;

    static {
        a.addURI("com.lenovo.safecenter.LocalBlackProvider", "localblack", 1);
        a.addURI("com.lenovo.safecenter.LocalBlackProvider", "localblack/#", 2);
        a.addURI("com.lenovo.safecenter.LocalBlackProvider", "signnet", 3);
        a.addURI("com.lenovo.safecenter.LocalBlackProvider", "signlocal", 4);
    }

    public boolean onCreate() {
        this.b = new AppDatabase(getContext());
        this.c = new NetAppDatabase(getContext());
        return true;
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/localblack";
            case 2:
                return "vnd.android.cursor.item/localblack";
            case 3:
                return "vnd.android.cursor.item/netlocalsign";
            case 4:
                return "vnd.android.cursor.item/signcall";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.b.getReadableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.query("localblack", projection, selection, selectionArgs, null, null, sortOrder);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.query("localblack", projection, where, selectionArgs, null, null, sortOrder);
            case 3:
                return this.c.getReadableDatabase().rawQuery("select _id as id,phonenumber as phonenumber,signtype as signtype,signcount as signcount from netlocalsign where phonenumber=?  UNION ALL select _id as id,phonenumber as phonenumber,signtype as signtype,signcount as signcount from netsigntable where phonenumber=?", new String[]{selectionArgs[0], selectionArgs[0]});
            case 4:
                return db.query("signcall", projection, selection, selectionArgs, null, null, sortOrder);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public BlackInfo isLocalBlack(Context context, String number) {
        BlackInfo info = null;
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.LocalBlackProvider/localblack"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0)", null, null);
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                BlackInfo info2 = new BlackInfo();
                try {
                    info2.setType(cursor.getInt(cursor.getColumnIndex("type")));
                    info2.setId(cursor.getInt(cursor.getColumnIndex("_id")));
                    Log.i("demo", "type>>>>>" + cursor.getInt(cursor.getColumnIndex("type")) + "==id>>>>" + cursor.getInt(cursor.getColumnIndex("_id")));
                    info = info2;
                } catch (Exception e) {
                    return info2;
                }
            }
            cursor.close();
            return info;
        } catch (Exception e2) {
            return null;
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                if (Settings.System.getInt(getContext().getContentResolver(), "guest_mode_on", 0) == 1) {
                    return null;
                }
                if (!values.containsKey("isupload")) {
                    values.put("isupload", (Integer) 0);
                }
                if (!values.containsKey("addtime")) {
                    values.put("addtime", Long.valueOf(System.currentTimeMillis()));
                }
                String number = values.getAsString("phonenumber");
                int type = values.getAsInteger("type").intValue();
                BlackInfo cur_info = isLocalBlack(getContext(), number);
                String realNumber = new ContractHelpUtils().getRealPhoneNumber(number);
                boolean isnumber = Untils.isPhoneNUmber(number);
                if (cur_info != null) {
                    if (type == cur_info.getType()) {
                        return null;
                    }
                    if (type == 2) {
                        type = 2;
                    } else if (type == 0) {
                        if (cur_info.getType() == 1) {
                            type = 2;
                        } else if (cur_info.getType() == 2) {
                            return null;
                        } else {
                            if (cur_info.getType() == 4) {
                                type = 0;
                            }
                        }
                    } else if (type == 1) {
                        if (cur_info.getType() == 0) {
                            type = 2;
                        } else if (cur_info.getType() == 2) {
                            return null;
                        } else {
                            if (cur_info.getType() == 4) {
                                type = 1;
                            }
                        }
                    }
                    ContentValues val = new ContentValues();
                    val.put("type", Integer.valueOf(type));
                    db.update("localblack", val, "_id=?", new String[]{String.valueOf(cur_info.getId())});
                    Log.i("demo", "type=" + type + "==id==" + cur_info.getId());
                    ContractHelpUtils.sendBraodcast(getContext(), "com.lenovo.antispam.blackperson.change");
                    return ContentUris.withAppendedId(uri, 3);
                } else if (!isnumber) {
                    return null;
                } else {
                    String contract_name = new ContractHelpUtils().Contacts_Name(getContext(), number);
                    if (contract_name != null) {
                        values.put("name", contract_name);
                    } else if (!values.containsKey("name")) {
                        values.putNull("name");
                    }
                    values.put("intercepttype", (Integer) 0);
                    values.put("realnumber", realNumber);
                    long rowid = db.insert("localblack", "_id", values);
                    ContractHelpUtils.sendBraodcast(getContext(), "com.lenovo.antispam.blackperson.change");
                    return ContentUris.withAppendedId(uri, rowid);
                }
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                if (Settings.System.getInt(getContext().getContentResolver(), "guest_mode_on", 0) == 1) {
                    return 0;
                }
                int delete = db.delete("localblack", selection, selectionArgs);
                ContractHelpUtils.sendBraodcast(getContext(), "com.lenovo.antispam.blackperson..provider.change");
                return delete;
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.delete("localblack", where, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.update("localblack", values, selection, selectionArgs);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.update("localblack", values, where, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }
}
