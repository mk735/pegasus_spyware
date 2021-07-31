package com.lenovo.safecenter.providers;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Settings;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;

public class HarssLogProvider extends ContentProvider {
    private static final UriMatcher b = new UriMatcher(-1);
    private SharedPreferences a;
    private AppDatabase c;

    static {
        b.addURI("com.lenovo.safecenter.HarassProvider", AppDatabase.DB_LOG_HARASS, 1);
        b.addURI("com.lenovo.safecenter.HarassProvider", "safe_log_harass/#", 2);
    }

    public boolean onCreate() {
        this.c = new AppDatabase(getContext());
        return true;
    }

    public String getType(Uri uri) {
        switch (b.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/safe_log_harass";
            case 2:
                return "vnd.android.cursor.item/safe_log_harass";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.c.getReadableDatabase();
        switch (b.match(uri)) {
            case 1:
                return db.query(AppDatabase.DB_LOG_HARASS, projection, selection, selectionArgs, null, null, sortOrder);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.query(AppDatabase.DB_LOG_HARASS, projection, where, selectionArgs, null, null, sortOrder);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        Context context = getContext();
        this.a = PreferenceManager.getDefaultSharedPreferences(context);
        this.c.isLogFull(context, AppDatabase.DB_LOG_HARASS);
        SQLiteDatabase db = this.c.getWritableDatabase();
        switch (b.match(uri)) {
            case 1:
                if (!values.containsKey("isPrivate") || values.getAsInteger("isPrivate").intValue() == 0) {
                    if (!values.containsKey("type")) {
                        values.put("type", DatabaseTables.SYSTEM_MARK);
                    }
                    if (!values.containsKey("isupload")) {
                        values.put("isupload", (Integer) 0);
                    }
                    if (!values.containsKey(AppDatabase.HAS_SEE)) {
                        values.put(AppDatabase.HAS_SEE, (Integer) 1);
                    }
                    if (!values.containsKey(AppDatabase.DB_LOG_SELECTED)) {
                        values.put(AppDatabase.DB_LOG_SELECTED, (Integer) 0);
                    }
                    long rowid = db.insert(AppDatabase.DB_LOG_HARASS, "_id", values);
                    SafeLog safeLog = new SafeLog();
                    safeLog.number = values.getAsString(AppDatabase.NUMBER);
                    safeLog.time = values.getAsString(AppDatabase.TIME);
                    safeLog.fromtype = values.getAsInteger("fromtype").intValue();
                    Const.lastSafeLogs.put(AppDatabase.HARASS_CALL, safeLog);
                    try {
                        if (Settings.System.getInt(context.getContentResolver(), "guest_mode_on", 0) == 0 && this.a.getBoolean("harassLog_preference", true)) {
                            SafeCenterService.harass_call_count++;
                            Const.saveHarassLogsCount(context);
                            TrackEvent.reportInterceptHarassCalls();
                            MyUtils.showNotification(getContext(), 256, 3);
                        }
                        if (Const.getHarassCount(context, 1) == 0) {
                            PreferenceManager.getDefaultSharedPreferences(context).edit().putInt("total_harass_call", this.c.getHarassLogCount(DatabaseTables.SYSTEM_MARK)).commit();
                        } else {
                            Const.saveHarassCount(context, 1);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    context.sendBroadcast(new Intent("com.lenovo.antispam.notify"));
                    return ContentUris.withAppendedId(uri, rowid);
                } else if (!values.containsKey("isPrivate") || values.getAsInteger("isPrivate").intValue() != 1) {
                    return null;
                } else {
                    Contract con = DataHelpUtils.getContractModel(context, values.getAsString(AppDatabase.NUMBER));
                    con.setIsRead(1);
                    con.setCallType(1);
                    this.c.insertCall(con);
                    Intent endpri = new Intent("com.lenovo.safeceter.endpricall");
                    endpri.putExtra(AppDatabase.NUMBER, con.getPhoneNumber());
                    context.sendBroadcast(endpri);
                    return null;
                }
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.c.getWritableDatabase();
        switch (b.match(uri)) {
            case 1:
                return db.delete(AppDatabase.DB_LOG_HARASS, selection, selectionArgs);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.delete(AppDatabase.DB_LOG_HARASS, where, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.c.getWritableDatabase();
        switch (b.match(uri)) {
            case 1:
                return db.update(AppDatabase.DB_LOG_HARASS, values, selection, selectionArgs);
            case 2:
                String where = "_id=" + ContentUris.parseId(uri);
                if (selection != null && !"".equals(selection.trim())) {
                    where = where + " and " + selection;
                }
                return db.update(AppDatabase.DB_LOG_HARASS, values, where, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }
}
