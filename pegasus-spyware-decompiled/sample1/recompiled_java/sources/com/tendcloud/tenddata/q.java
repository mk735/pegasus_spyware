package com.tendcloud.tenddata;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class q {
    protected static final String a = "TD";
    private static final int b = 5;
    private static final String c = "10";
    private static final String d = "TDtcagent.db";
    private static SQLiteDatabase e;
    private static int f;

    q() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0045  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static long a(long r9) {
        /*
            r8 = 0
            android.database.sqlite.SQLiteDatabase r0 = com.tendcloud.tenddata.q.e     // Catch:{ Exception -> 0x003a, all -> 0x0042 }
            java.lang.String r1 = "activity"
            java.lang.String[] r2 = com.tendcloud.tenddata.e.h     // Catch:{ Exception -> 0x003a, all -> 0x0042 }
            java.lang.String r3 = "_id=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Exception -> 0x003a, all -> 0x0042 }
            r5 = 0
            java.lang.String r6 = java.lang.String.valueOf(r9)     // Catch:{ Exception -> 0x003a, all -> 0x0042 }
            r4[r5] = r6     // Catch:{ Exception -> 0x003a, all -> 0x0042 }
            r5 = 0
            r6 = 0
            java.lang.String r7 = "_id"
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Exception -> 0x003a, all -> 0x0042 }
            boolean r0 = r2.moveToFirst()     // Catch:{ Exception -> 0x004c, all -> 0x0049 }
            if (r0 == 0) goto L_0x0032
            boolean r0 = r2.isAfterLast()     // Catch:{ Exception -> 0x004c, all -> 0x0049 }
            if (r0 != 0) goto L_0x0032
            r0 = 6
            long r0 = r2.getLong(r0)     // Catch:{ Exception -> 0x004c, all -> 0x0049 }
            if (r2 == 0) goto L_0x0031
            r2.close()
        L_0x0031:
            return r0
        L_0x0032:
            if (r2 == 0) goto L_0x0037
            r2.close()
        L_0x0037:
            r0 = 0
            goto L_0x0031
        L_0x003a:
            r0 = move-exception
            r0 = r8
        L_0x003c:
            if (r0 == 0) goto L_0x0037
            r0.close()
            goto L_0x0037
        L_0x0042:
            r0 = move-exception
        L_0x0043:
            if (r8 == 0) goto L_0x0048
            r8.close()
        L_0x0048:
            throw r0
        L_0x0049:
            r0 = move-exception
            r8 = r2
            goto L_0x0043
        L_0x004c:
            r0 = move-exception
            r0 = r2
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.a(long):long");
    }

    static long a(long j, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(r.a, Long.valueOf(j));
        try {
            w wVar = new w();
            StringBuffer stringBuffer = new StringBuffer("");
            long a2 = a(str, wVar, stringBuffer);
            if (0 == a2) {
                contentValues.put(r.b, str.getBytes("UTF-8"));
                contentValues.put(r.c, (Integer) 1);
                contentValues.put(r.d, stringBuffer.toString());
                return e.insert(r.e, null, contentValues);
            }
            contentValues.put(r.c, Integer.valueOf(wVar.b + 1));
            return (long) e.update(r.e, contentValues, "_id=?", new String[]{String.valueOf(a2)});
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    static long a(String str, long j, long j2, int i) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("session_id", str);
            contentValues.put("start_time", Long.valueOf(j));
            contentValues.put("duration", (Integer) 0);
            contentValues.put(d.d, (Integer) 0);
            contentValues.put(d.e, Long.valueOf(j2));
            contentValues.put(d.f, Integer.valueOf(i));
            e.insert(d.g, null, contentValues);
            return 0;
        } catch (Exception e2) {
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d8  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static long a(java.lang.String r10, com.tendcloud.tenddata.w r11, java.lang.StringBuffer r12) {
        /*
        // Method dump skipped, instructions count: 245
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.a(java.lang.String, com.tendcloud.tenddata.w, java.lang.StringBuffer):long");
    }

    static long a(String str, String str2, long j, int i, String str3, long j2) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("session_id", str);
            contentValues.put(e.a, str2);
            contentValues.put("start_time", Long.valueOf(j));
            contentValues.put("duration", Integer.valueOf(i));
            contentValues.put(e.e, str3);
            contentValues.put(e.f, Long.valueOf(j2));
            return e.insert(e.g, null, contentValues);
        } catch (Exception e2) {
            return -1;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0058  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static long a(java.util.List r11) {
        /*
            r3 = 0
            int r0 = r11.size()
            if (r0 != 0) goto L_0x000a
            r0 = r3
        L_0x0009:
            return r0
        L_0x000a:
            int r0 = r0 + -1
            r6 = r0
            r1 = r3
        L_0x000e:
            if (r6 < 0) goto L_0x0062
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x005c }
            r0.<init>()     // Catch:{ Exception -> 0x005c }
            java.lang.String r5 = "SELECT MAX(_id) from activity where duration != 0 and session_id =?"
            r0.append(r5)     // Catch:{ Exception -> 0x005c }
            r5 = 0
            android.database.sqlite.SQLiteDatabase r7 = com.tendcloud.tenddata.q.e     // Catch:{ all -> 0x0054 }
            java.lang.String r8 = r0.toString()     // Catch:{ all -> 0x0054 }
            r0 = 1
            java.lang.String[] r9 = new java.lang.String[r0]     // Catch:{ all -> 0x0054 }
            r10 = 0
            java.lang.Object r0 = r11.get(r6)     // Catch:{ all -> 0x0054 }
            com.tendcloud.tenddata.b r0 = (com.tendcloud.tenddata.b) r0     // Catch:{ all -> 0x0054 }
            java.lang.String r0 = r0.a     // Catch:{ all -> 0x0054 }
            r9[r10] = r0     // Catch:{ all -> 0x0054 }
            android.database.Cursor r5 = r7.rawQuery(r8, r9)     // Catch:{ all -> 0x0054 }
            boolean r0 = r5.moveToFirst()     // Catch:{ all -> 0x005f }
            if (r0 == 0) goto L_0x004b
            r0 = 0
            long r0 = r5.getLong(r0)     // Catch:{ all -> 0x005f }
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 == 0) goto L_0x004a
            if (r5 == 0) goto L_0x0009
            r5.close()     // Catch:{ Exception -> 0x0048 }
            goto L_0x0009
        L_0x0048:
            r2 = move-exception
            goto L_0x0009
        L_0x004a:
            r1 = r0
        L_0x004b:
            if (r5 == 0) goto L_0x0050
            r5.close()
        L_0x0050:
            int r0 = r6 + -1
            r6 = r0
            goto L_0x000e
        L_0x0054:
            r0 = move-exception
            r3 = r5
        L_0x0056:
            if (r3 == 0) goto L_0x005b
            r3.close()
        L_0x005b:
            throw r0
        L_0x005c:
            r0 = move-exception
            r0 = r1
            goto L_0x0009
        L_0x005f:
            r0 = move-exception
            r3 = r5
            goto L_0x0056
        L_0x0062:
            r0 = r1
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.a(java.util.List):long");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0060  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List a(java.lang.String r10, long r11) {
        /*
        // Method dump skipped, instructions count: 107
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.a(java.lang.String, long):java.util.List");
    }

    private static Map a(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream;
        DataInputStream dataInputStream;
        Throwable th;
        ByteArrayInputStream byteArrayInputStream2;
        DataInputStream dataInputStream2;
        Object readUTF;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                dataInputStream = new DataInputStream(byteArrayInputStream);
                try {
                    int readInt = dataInputStream.readInt();
                    for (int i = 0; i < readInt; i++) {
                        String readUTF2 = dataInputStream.readUTF();
                        int readInt2 = dataInputStream.readInt();
                        if (readInt2 == 66) {
                            readUTF = Double.valueOf(dataInputStream.readDouble());
                        } else if (readInt2 == 88) {
                            readUTF = dataInputStream.readUTF();
                        } else {
                            TCAgent.a(byteArrayInputStream);
                            TCAgent.a(dataInputStream);
                            return null;
                        }
                        hashMap.put(readUTF2, readUTF);
                    }
                    TCAgent.a(byteArrayInputStream);
                    TCAgent.a(dataInputStream);
                    return hashMap;
                } catch (Exception e2) {
                    dataInputStream2 = dataInputStream;
                    byteArrayInputStream2 = byteArrayInputStream;
                    TCAgent.a(byteArrayInputStream2);
                    TCAgent.a(dataInputStream2);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    TCAgent.a(byteArrayInputStream);
                    TCAgent.a(dataInputStream);
                    throw th;
                }
            } catch (Exception e3) {
                dataInputStream2 = null;
                byteArrayInputStream2 = byteArrayInputStream;
                TCAgent.a(byteArrayInputStream2);
                TCAgent.a(dataInputStream2);
                return null;
            } catch (Throwable th3) {
                dataInputStream = null;
                th = th3;
                TCAgent.a(byteArrayInputStream);
                TCAgent.a(dataInputStream);
                throw th;
            }
        } catch (Exception e4) {
            dataInputStream2 = null;
            byteArrayInputStream2 = null;
            TCAgent.a(byteArrayInputStream2);
            TCAgent.a(dataInputStream2);
            return null;
        } catch (Throwable th4) {
            dataInputStream = null;
            byteArrayInputStream = null;
            th = th4;
            TCAgent.a(byteArrayInputStream);
            TCAgent.a(dataInputStream);
            throw th;
        }
    }

    static void a() {
        e.setVersion(5);
        d.a(e);
        e.a(e);
        n.a(e);
        r.a(e);
    }

    static void a(long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("duration", Long.valueOf((j2 - a(j)) / 1000));
        try {
            e.update(e.g, contentValues, "_id=?", new String[]{String.valueOf(j)});
        } catch (Exception e2) {
        }
    }

    static synchronized void a(Context context) {
        synchronized (q.class) {
            if (e == null) {
                File file = new File(context.getFilesDir(), d);
                boolean exists = file.exists();
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                e = SQLiteDatabase.openOrCreateDatabase(file, (SQLiteDatabase.CursorFactory) null);
                e.setLockingEnabled(true);
                e.setMaximumSize(1000000);
                f = 1;
                if (!exists) {
                    a();
                } else if (5 > e.getVersion()) {
                    e.execSQL("DROP TABLE IF EXISTS error_report");
                    e.execSQL("DROP TABLE IF EXISTS app_event");
                    e.execSQL("DROP TABLE IF EXISTS session");
                    e.execSQL("DROP TABLE IF EXISTS activity");
                    a();
                }
            } else {
                f++;
            }
        }
    }

    static void a(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(d.d, (Integer) 1);
        e.update(d.g, contentValues, "session_id=?", new String[]{str});
    }

    static void a(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("duration", Integer.valueOf(i));
        try {
            e.update(d.g, contentValues, "session_id=?", new String[]{str});
        } catch (Exception e2) {
        }
    }

    static boolean a(String str, String str2, String str3, long j, Map map) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(n.a, str2);
            contentValues.put(n.b, str3);
            contentValues.put("session_id", str);
            contentValues.put(n.d, Long.valueOf(j));
            contentValues.put(n.e, a(map));
            return e.insert(n.f, null, contentValues) != -1;
        } catch (Exception e2) {
            return false;
        }
    }

    private static byte[] a(Map map) {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        DataOutputStream dataOutputStream2;
        Throwable th;
        if (map == null || map.size() == 0) {
            return null;
        }
        int size = map.size();
        if (size > 10) {
            size = 10;
        }
        try {
            byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                dataOutputStream2 = new DataOutputStream(byteArrayOutputStream2);
                try {
                    dataOutputStream2.writeInt(size);
                    int i = 0;
                    for (Map.Entry entry : map.entrySet()) {
                        dataOutputStream2.writeUTF((String) entry.getKey());
                        Object value = entry.getValue();
                        if (value instanceof Number) {
                            dataOutputStream2.writeInt(66);
                            dataOutputStream2.writeDouble(((Number) value).doubleValue());
                        } else if (value instanceof String) {
                            dataOutputStream2.writeInt(88);
                            dataOutputStream2.writeUTF((String) value);
                        } else {
                            TCAgent.a(byteArrayOutputStream2);
                            TCAgent.a(dataOutputStream2);
                            return null;
                        }
                        i++;
                        if (i == 10) {
                            break;
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    TCAgent.a(byteArrayOutputStream2);
                    TCAgent.a(dataOutputStream2);
                    return byteArray;
                } catch (Exception e2) {
                    dataOutputStream = dataOutputStream2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    TCAgent.a(byteArrayOutputStream);
                    TCAgent.a(dataOutputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    TCAgent.a(byteArrayOutputStream2);
                    TCAgent.a(dataOutputStream2);
                    throw th;
                }
            } catch (Exception e3) {
                dataOutputStream = null;
                byteArrayOutputStream = byteArrayOutputStream2;
                TCAgent.a(byteArrayOutputStream);
                TCAgent.a(dataOutputStream);
                return null;
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream2 = null;
                TCAgent.a(byteArrayOutputStream2);
                TCAgent.a(dataOutputStream2);
                throw th;
            }
        } catch (Exception e4) {
            dataOutputStream = null;
            byteArrayOutputStream = null;
            TCAgent.a(byteArrayOutputStream);
            TCAgent.a(dataOutputStream);
            return null;
        } catch (Throwable th4) {
            th = th4;
            dataOutputStream2 = null;
            byteArrayOutputStream2 = null;
            TCAgent.a(byteArrayOutputStream2);
            TCAgent.a(dataOutputStream2);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0059  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static long b(java.util.List r9) {
        /*
            r2 = 0
            int r0 = r9.size()
            if (r0 != 0) goto L_0x000a
            r0 = r2
        L_0x0009:
            return r0
        L_0x000a:
            int r0 = r0 + -1
            r5 = r0
        L_0x000d:
            if (r5 < 0) goto L_0x004b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0047 }
            r0.<init>()     // Catch:{ Exception -> 0x0047 }
            java.lang.String r1 = "SELECT MAX(_id) from app_event where session_id =?"
            r0.append(r1)     // Catch:{ Exception -> 0x0047 }
            r1 = 0
            android.database.sqlite.SQLiteDatabase r4 = com.tendcloud.tenddata.q.e     // Catch:{ all -> 0x0056 }
            java.lang.String r6 = r0.toString()     // Catch:{ all -> 0x0056 }
            r0 = 1
            java.lang.String[] r7 = new java.lang.String[r0]     // Catch:{ all -> 0x0056 }
            r8 = 0
            java.lang.Object r0 = r9.get(r5)     // Catch:{ all -> 0x0056 }
            com.tendcloud.tenddata.b r0 = (com.tendcloud.tenddata.b) r0     // Catch:{ all -> 0x0056 }
            java.lang.String r0 = r0.a     // Catch:{ all -> 0x0056 }
            r7[r8] = r0     // Catch:{ all -> 0x0056 }
            android.database.Cursor r4 = r4.rawQuery(r6, r7)     // Catch:{ all -> 0x0056 }
            boolean r0 = r4.moveToFirst()     // Catch:{ all -> 0x005d }
            if (r0 == 0) goto L_0x004d
            r0 = 0
            long r0 = r4.getLong(r0)     // Catch:{ all -> 0x005d }
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L_0x004d
            if (r4 == 0) goto L_0x0009
            r4.close()
            goto L_0x0009
        L_0x0047:
            r0 = move-exception
            r0.printStackTrace()
        L_0x004b:
            r0 = r2
            goto L_0x0009
        L_0x004d:
            if (r4 == 0) goto L_0x0052
            r4.close()
        L_0x0052:
            int r0 = r5 + -1
            r5 = r0
            goto L_0x000d
        L_0x0056:
            r0 = move-exception
        L_0x0057:
            if (r1 == 0) goto L_0x005c
            r1.close()
        L_0x005c:
            throw r0
        L_0x005d:
            r0 = move-exception
            r1 = r4
            goto L_0x0057
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.b(java.util.List):long");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0063, code lost:
        if (0 != 0) goto L_0x0065;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0065, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0075, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0079, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x007a, code lost:
        r1 = r0;
        r0 = r1;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0062 A[ExcHandler: Exception (e java.lang.Exception), Splitter:B:1:0x0006] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List b(java.lang.String r7, long r8) {
        /*
        // Method dump skipped, instructions count: 126
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.b(java.lang.String, long):java.util.List");
    }

    static synchronized void b() {
        synchronized (q.class) {
            f--;
            f = Math.max(0, f);
            if (f == 0 && e != null) {
                e.close();
                e = null;
            }
        }
    }

    static void b(long j) {
        e.delete(e.g, "_id<=? AND duration != 0 ", new String[]{String.valueOf(j)});
    }

    static void b(String str) {
        e.delete(d.g, "session_id=?", new String[]{str});
    }

    static long c() {
        return DatabaseUtils.queryNumEntries(e, d.g);
    }

    static void c(long j) {
        e.delete(n.f, "_id<=? ", new String[]{String.valueOf(j)});
    }

    static void c(String str) {
        e.delete(e.g, "session_id=? ", new String[]{str});
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0085  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List d() {
        /*
        // Method dump skipped, instructions count: 150
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.d():java.util.List");
    }

    static void d(long j) {
        e.delete(r.e, "_id<=?", new String[]{String.valueOf(j)});
    }

    static void d(String str) {
        e.delete(n.f, "session_id=? ", new String[]{str});
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0044  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static long e(java.lang.String r4) {
        /*
            r0 = 0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            r1.<init>()     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            java.lang.String r2 = "SELECT MAX(_id) from "
            r1.append(r2)     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            r1.append(r4)     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            android.database.sqlite.SQLiteDatabase r2 = com.tendcloud.tenddata.q.e     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            r3 = 0
            android.database.Cursor r2 = r2.rawQuery(r1, r3)     // Catch:{ Exception -> 0x0038, all -> 0x003f }
            boolean r0 = r2.moveToFirst()     // Catch:{ Exception -> 0x004a, all -> 0x0048 }
            if (r0 == 0) goto L_0x0030
            boolean r0 = r2.isAfterLast()     // Catch:{ Exception -> 0x004a, all -> 0x0048 }
            if (r0 != 0) goto L_0x0030
            r0 = 0
            long r0 = r2.getLong(r0)     // Catch:{ Exception -> 0x004a, all -> 0x0048 }
            if (r2 == 0) goto L_0x002f
            r2.close()
        L_0x002f:
            return r0
        L_0x0030:
            if (r2 == 0) goto L_0x0035
            r2.close()
        L_0x0035:
            r0 = 0
            goto L_0x002f
        L_0x0038:
            r1 = move-exception
        L_0x0039:
            if (r0 == 0) goto L_0x0035
            r0.close()
            goto L_0x0035
        L_0x003f:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0042:
            if (r2 == 0) goto L_0x0047
            r2.close()
        L_0x0047:
            throw r0
        L_0x0048:
            r0 = move-exception
            goto L_0x0042
        L_0x004a:
            r0 = move-exception
            r0 = r2
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.q.e(java.lang.String):long");
    }

    static List e(long j) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor rawQuery = e.rawQuery("SELECT error_time,message,repeat, shorthashcode from error_report where _id<=?", new String[]{String.valueOf(j)});
            if (rawQuery.moveToFirst()) {
                while (!rawQuery.isAfterLast()) {
                    ag agVar = new ag();
                    agVar.a = 3;
                    w wVar = new w();
                    wVar.a = rawQuery.getLong(0);
                    wVar.d = rawQuery.getBlob(1);
                    wVar.b = rawQuery.getInt(2);
                    wVar.e = rawQuery.getString(3);
                    wVar.c = u.s();
                    agVar.d = wVar;
                    arrayList.add(agVar);
                    rawQuery.moveToNext();
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (0 != 0) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
        return arrayList;
    }
}
