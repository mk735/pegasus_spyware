package com.lenovo.safecenter.lenovoAntiSpam.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.Settings;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.utils.Untils;

public class WhitePersonProvider extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private AppDatabase b;

    static {
        a.addURI("com.lenovo.safecenter.WhitePersonProvider", "whiteperson", 1);
        a.addURI("com.lenovo.safecenter.WhitePersonProvider", "whiteperson/#", 2);
    }

    public boolean onCreate() {
        this.b = new AppDatabase(getContext());
        return true;
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/whiteperson";
            case 2:
                return "vnd.android.cursor.item/whiteperson";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.b.getReadableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.query("whiteperson", projection, selection, selectionArgs, null, null, sortOrder);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.query("whiteperson", projection, where, selectionArgs, null, null, sortOrder);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                if (Settings.System.getInt(getContext().getContentResolver(), "guest_mode_on", 0) == 1) {
                    return null;
                }
                if (!values.containsKey("addtime")) {
                    values.put("addtime", Long.valueOf(System.currentTimeMillis()));
                }
                String number = values.getAsString("phonenumber");
                boolean bool = CheckCenter.isWhitePerson(getContext(), number);
                boolean isnumber = Untils.isPhoneNUmber(number);
                if (bool || !isnumber) {
                    return null;
                }
                String contract_name = new ContractHelpUtils().Contacts_Name(getContext(), number);
                if (contract_name != null) {
                    values.put("name", contract_name);
                } else if (!values.containsKey("name")) {
                    values.putNull("name");
                }
                values.put("realnumber", new ContractHelpUtils().getRealPhoneNumber(number));
                long rowid = db.insert("whiteperson", "_id", values);
                ContractHelpUtils.sendBraodcast(getContext(), "com.lenovo.antispam.whiteperson.change");
                return ContentUris.withAppendedId(uri, rowid);
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
                int delete = db.delete("whiteperson", selection, selectionArgs);
                ContractHelpUtils.sendBraodcast(getContext(), "com.lenovo.antispam.whiteperson.change");
                return delete;
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.delete("whiteperson", where, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.update("whiteperson", values, selection, selectionArgs);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.update("whiteperson", values, where, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }
}
