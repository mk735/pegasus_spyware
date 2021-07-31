package com.lenovo.safecenter.support;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.Untils;
import java.io.InputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.httpclient.cookie.Cookie2;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.xmlpull.v1.XmlPullParser;

public class HttpUtils {
    public static String Expire_CallNumbers = "";
    public static String Expire_SmsNumbers = "";
    public static String Expire_tag = "";
    public static String Lastin_CallNumbers = "";
    public static String Lastin_SmsNumbers = "";
    public static String Lastin_tag = "";
    public static int count = 0;
    public static final int down_success = 2;
    public static final int net_disconnect = 1;
    public static boolean private_isOpenSec = false;
    public static final int server_disconnect = 0;
    public static final int version_isNew = 3;

    public static int down(Context context) {
        TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
        Map<String, String> params = new HashMap<>();
        params.put("lang", "zh-cn");
        params.put("lastintag", execService("lastintag", context));
        params.put("expiredtag", execService("expiredtag", context));
        params.put("devicefamily", "lephone");
        params.put("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            params.put("deviceid", "N/A");
        } else {
            params.put("deviceid", manager.getDeviceId());
        }
        params.put("devicevendor", Build.MANUFACTURER);
        String path = Settings.System.getString(context.getContentResolver(), "down_netBlack_url");
        Log.i("version", path);
        int resultcode = a(path, params, b.a);
        Log.i("xmlresult", count + "," + resultcode);
        if (resultcode == 2 || resultcode == 3) {
            return resultcode;
        }
        return 1;
    }

    private static int a(String path, Map<String, String> params, String encoding) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(path);
            if (params != null && !params.isEmpty()) {
                sb.append('?');
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    sb.append(entry.getKey()).append('=').append(URLEncoder.encode(entry.getValue(), encoding)).append('&');
                }
                sb.deleteCharAt(sb.length() - 1);
            }
            Log.i(Cookie2.PATH, sb.toString());
            HttpGet httpGet = new HttpGet(sb.toString());
            DefaultHttpClient httpClient = new DefaultHttpClient();
            httpClient.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 6000);
            httpClient.getParams().setParameter("http.socket.timeout", 6000);
            HttpResponse response = httpClient.execute(httpGet);
            HttpEntity httpEntity = response.getEntity();
            Log.i("StatusCode", response.getStatusLine().getStatusCode() + ">>>>>>>>>>");
            if (response.getStatusLine().getStatusCode() == 200) {
                return a(httpEntity.getContent());
            }
            if (response.getStatusLine().getStatusCode() == 304) {
                return 3;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    private static int a(InputStream inStream) throws Exception {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(inStream, b.a);
        int tag = 0;
        for (int event = parser.getEventType(); event != 1; event = parser.next()) {
            switch (event) {
                case 2:
                    if ("lastinlist".equals(parser.getName())) {
                        tag = 1;
                    }
                    if ("expiredlist".equals(parser.getName())) {
                        tag = 2;
                    }
                    if (tag == 1) {
                        if ("lastintag".equals(parser.getName())) {
                            Lastin_tag = parser.nextText();
                        }
                        if ("numbers4call".equals(parser.getName())) {
                            Lastin_CallNumbers = parser.nextText();
                        }
                        if ("numbers4sms".equals(parser.getName())) {
                            Lastin_SmsNumbers = parser.nextText();
                        }
                    }
                    if (tag != 2) {
                        break;
                    } else {
                        if ("expiredtag".equals(parser.getName())) {
                            Expire_tag = parser.nextText();
                        }
                        if ("numbers4call".equals(parser.getName())) {
                            Expire_CallNumbers = parser.nextText();
                        }
                        if ("numbers4sms".equals(parser.getName())) {
                            Expire_SmsNumbers = parser.nextText();
                            break;
                        } else {
                            break;
                        }
                    }
                case 3:
                    if ("lastinlist".equals(parser.getName())) {
                        tag = 0;
                    }
                    if ("expiredlist".equals(parser.getName())) {
                        tag = 0;
                        break;
                    } else {
                        break;
                    }
            }
        }
        return 2;
    }

    public static String execService(String method, Context context) {
        return context.getSharedPreferences("versionconfig", 0).getString(method, "");
    }

    public int downNetBlack(Context context) {
        return down(context);
    }

    public void UpdateConfig(String method, String value, Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences("versionconfig", 0).edit();
        editor.putString(method, value);
        editor.commit();
    }

    public static String getDate(String longtime) {
        return new SimpleDateFormat("yyyy.MM.dd   HH:mm").format(new Date(Long.parseLong(longtime)));
    }

    private static int b(String path, Map<String, String> params, String encoding) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(path);
            if (params != null && !params.isEmpty()) {
                sb.append('?');
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    Log.i(Cookie2.PATH, entry.getValue() + ">>>>>>>>>>>" + entry.getKey());
                    sb.append(entry.getKey()).append('=').append(URLEncoder.encode(entry.getValue(), encoding)).append('&');
                }
                sb.deleteCharAt(sb.length() - 1);
            }
            HttpGet httpGet = new HttpGet(sb.toString());
            DefaultHttpClient httpClient = new DefaultHttpClient();
            httpClient.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 6000);
            httpClient.getParams().setParameter("http.socket.timeout", 6000);
            HttpResponse response = httpClient.execute(httpGet);
            Log.i(Cookie2.PATH, "url===" + sb.toString() + ">>>>>>>>>>>" + response.getStatusLine().getStatusCode());
            return response.getStatusLine().getStatusCode();
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    public static int reportstealfeesoft(Context context, String stealtype, String stealtime, String stealcontent, String appname, String appinstallpath, String appversion, String destination, String packagesha1, String packagename, String certmd5, String filesize) {
        TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
        Map<String, String> params = new HashMap<>();
        params.put("devicefamily", "lephone");
        params.put("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            params.put("deviceid", "N/A");
        } else {
            params.put("deviceid", manager.getDeviceId());
        }
        params.put("devicevendor", Build.MANUFACTURER);
        params.put("lang", "zh-cn");
        params.put("stealtype", DatabaseTables.SYSTEM_MARK);
        params.put("stealtime", stealtime);
        params.put("stealcontent", stealcontent);
        params.put(AppDatabase.DB_APP, appname);
        params.put("appinstallpath", appinstallpath);
        params.put("appversion", appversion);
        params.put("destination", destination);
        params.put("packagesha1", packagesha1);
        params.put(AppDatabase.APP_PKG_NAME, packagename);
        params.put("certmd5", certmd5);
        params.put("filesize", filesize);
        Properties properties = new Properties();
        try {
            properties.load(context.getResources().openRawResource(R.raw.url));
            if (b(properties.getProperty("stealFeesoft"), params, b.a) == 200) {
                return 2;
            }
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    public static int reportaccessunder(Context context, String stealtype, String stealtime, String appname, String appinstallpath, String appversion, String packagesha1, String packagename, String certmd5, String filesize) {
        TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
        Map<String, String> params = new HashMap<>();
        params.put("devicefamily", "lephone");
        params.put("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            params.put("deviceid", "N/A");
        } else {
            params.put("deviceid", manager.getDeviceId());
        }
        params.put("devicevendor", Build.MANUFACTURER);
        params.put("lang", "zh-cn");
        params.put("stealtype", "3");
        params.put("stealtime", stealtime);
        params.put(AppDatabase.DB_APP, appname);
        params.put("appinstallpath", appinstallpath);
        params.put("appversion", appversion);
        params.put("packagesha1", packagesha1);
        params.put(AppDatabase.APP_PKG_NAME, packagename);
        params.put("certmd5", certmd5);
        params.put("filesize", filesize);
        Properties properties = new Properties();
        try {
            properties.load(context.getResources().openRawResource(R.raw.url));
            int resultcode = b(properties.getProperty("accessUnder"), params, b.a);
            Log.i(Cookie2.PATH, "reportaccessunder>>>" + resultcode);
            if (resultcode == 200) {
                return 2;
            }
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    public static int reportHarssLog(Context context, String numberlist, String type, String Content) {
        Map<String, String> params = new HashMap<>();
        TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
        int size = numberlist.split(",").length;
        params.put("reportno", numberlist);
        params.put("waytype", type);
        params.put("lang", "zh-cn");
        params.put("contenttype", getContentType(size));
        params.put(AppDatabase.CONTENT, Content);
        if (!TextUtils.isEmpty(Content) && Content.length() > 50) {
            Content = Content.substring(0, 30);
            params.put(AppDatabase.CONTENT, Content);
        }
        Log.i(Cookie2.PATH, Content.length() + "==================");
        params.put("devicefamily", "lephone");
        params.put("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            params.put("deviceid", "N/A");
        } else {
            params.put("deviceid", manager.getDeviceId());
        }
        params.put("devicevendor", Build.MANUFACTURER);
        String path = Settings.System.getString(context.getContentResolver(), "upload_netBlack_url");
        Log.i(Cookie2.PATH, path);
        int returnCode = b(path, params, b.a);
        Log.i("StatusCode", returnCode + ">>>>>>>>>>");
        if (returnCode == 200) {
            return 2;
        }
        return 1;
    }

    public static String getContentType(int size) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < size; i++) {
            sb.append(-1).append(Untils.PAUSE);
        }
        return sb.deleteCharAt(sb.length() - 1).toString();
    }

    public static int reportPermissionLog(Context context, String packageName, String type, String appName, String timeStamp) {
        String pkgName;
        String appinstallpath;
        String appversion;
        String sha1;
        String certmd5;
        String filesize;
        if (packageName == null) {
            pkgName = "N/A";
            appinstallpath = "N/A";
            appversion = "N/A";
            sha1 = "N/A";
            certmd5 = "N/A";
            filesize = "0";
        } else {
            pkgName = packageName;
            PackageManager pm = context.getPackageManager();
            try {
                ApplicationInfo applicationInfo = pm.getApplicationInfo(packageName, 8192);
                PackageInfo pkgInfo = pm.getPackageInfo(applicationInfo.packageName, 8192);
                appinstallpath = applicationInfo.sourceDir;
                appversion = pkgInfo.versionName;
                String[] tmp = getReportData(context, pkgName);
                if (tmp == null) {
                    sha1 = "N/A";
                    certmd5 = "N/A";
                    filesize = "0";
                } else {
                    sha1 = tmp[0];
                    certmd5 = tmp[1];
                    filesize = tmp[2];
                }
            } catch (Exception e) {
                e.printStackTrace();
                appinstallpath = "N/A";
                appversion = "N/A";
                sha1 = "N/A";
                certmd5 = "N/A";
                filesize = "0";
            }
        }
        Log.d("test", "type:" + type + " appName:" + appName + " pkgName:" + pkgName + " time:" + timeStamp + " path:" + appinstallpath + " version:" + appversion + " sha1:" + sha1 + " certmd5:" + certmd5 + " filesize:" + filesize);
        return reportaccessunder(context, type, timeStamp, appName, appinstallpath, appversion, sha1, pkgName, certmd5, filesize);
    }

    public static int reportTariffLog(Context context, String packageName, String type, String appName, String timeStamp, String number, String content) {
        String pkgName;
        String appinstallpath;
        String appversion;
        String sha1;
        String certmd5;
        String filesize;
        if (packageName == null) {
            pkgName = "N/A";
            appinstallpath = "N/A";
            appversion = "N/A";
            sha1 = "N/A";
            certmd5 = "N/A";
            filesize = "0";
        } else {
            pkgName = packageName;
            PackageManager pm = context.getPackageManager();
            try {
                ApplicationInfo applicationInfo = pm.getApplicationInfo(packageName, 8192);
                PackageInfo pkgInfo = pm.getPackageInfo(packageName, 8192);
                appinstallpath = applicationInfo.sourceDir;
                appversion = pkgInfo.versionName;
                String[] tmp = getReportData(context, pkgName);
                if (tmp == null) {
                    sha1 = "N/A";
                    certmd5 = "N/A";
                    filesize = "0";
                } else {
                    sha1 = tmp[0];
                    certmd5 = tmp[1];
                    filesize = tmp[2];
                }
            } catch (Exception e) {
                e.printStackTrace();
                appinstallpath = "N/A";
                appversion = "N/A";
                sha1 = "N/A";
                certmd5 = "N/A";
                filesize = "0";
            }
        }
        Log.d("test", "type:" + type + " appName:" + appName + " pkgName:" + pkgName + " time:" + timeStamp + " path:" + appinstallpath + " version:" + appversion + " sha1:" + sha1 + " certmd5:" + certmd5 + " filesize:" + filesize);
        return reportstealfeesoft(context, type, timeStamp, MyUtils.replaceString(content), appName, appinstallpath, appversion, MyUtils.replaceString(number), sha1, pkgName, certmd5, filesize);
    }

    public static String[] getReportData(Context context, String pkgName) {
        try {
            Uri uri = Uri.parse("content://com.lenovo.antivirus.AppinfoProvider/appinfo");
            Cursor cursor = context.getContentResolver().query(uri, null, "pkgname=?", new String[]{pkgName}, null);
            if (!cursor.moveToFirst()) {
                return null;
            }
            return new String[]{cursor.getString(cursor.getColumnIndex("sha1")), cursor.getString(cursor.getColumnIndex("md5")), cursor.getString(cursor.getColumnIndex("filesize"))};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
