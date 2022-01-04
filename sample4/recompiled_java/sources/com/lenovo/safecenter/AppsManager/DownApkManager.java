package com.lenovo.safecenter.AppsManager;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.util.Xml;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.utils.NetHttp;
import com.lenovo.safecenter.lenovoAntiSpam.utils.NetHttpPost;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.utils.Const;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.http.HttpResponse;
import org.xmlpull.v1.XmlPullParser;

public class DownApkManager {
    private static String a = "content://com.lenovo.providers.querypermissions/pkgname/";

    public static void praseTop100(Context context) {
        Log.d("test", "praseTop100.............");
        Map<String, String> map = new HashMap<>();
        map.put("lastintag", Const.getFromShare("applastin", PushReceiver.READ, null));
        map.put("expiredtag", Const.getFromShare("appexpired", PushReceiver.READ, null));
        Map<String, String> Headmap = new HashMap<>();
        Headmap.put("Accept-Encoding", "gzip,deflate");
        HttpResponse response = NetHttp.sendGETRequest("http://sss.lenovomm.com/sss/1.0/apkpermlistsync", map, null, Headmap);
        try {
            if (response.getStatusLine().getStatusCode() == 200) {
                insertDatabase(context, a(response.getEntity().getContent()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void parseNewApk(Context context) {
        Log.d("test", "parseNewApk.............");
        List<String> apks = new AppDatabase(context).loadUnexistApps(context);
        if (apks != null && apks.size() > 0) {
            StringBuffer sb = new StringBuffer();
            sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>").append("<apklist>");
            for (String app : apks) {
                sb.append("<packagename>").append(app).append("</packagename>");
            }
            sb.append("</apklist>");
            Map<String, String> map = new HashMap<>();
            map.put("Content-Encoding", "gzip");
            map.put("Accept-Encoding", "gzip,deflate");
            PostMethod pst = NetHttpPost.sendPostRequest("http://sss.lenovomm.com/sss/1.0/apkpermquery", NetHttpPost.change(sb.toString()), map);
            if (pst != null) {
                try {
                    if (pst.getStatusCode() == 200) {
                        insertDatabase(context, a(pst.getResponseBodyAsStream()));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static List<String> a(InputStream inStream) {
        List<String> list = new ArrayList<>();
        int tag = 0;
        try {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(new GZIPInputStream(inStream), b.a);
            for (int event = parser.getEventType(); event != 1; event = parser.next()) {
                switch (event) {
                    case 2:
                        if ("apk".equals(parser.getName()) && tag == 0) {
                            list.add(parser.nextText());
                        }
                        if ("lastintag".equals(parser.getName())) {
                            Const.getFromShare("applastin", "update", parser.nextText());
                        }
                        if ("expiredtag".equals(parser.getName())) {
                            Const.getFromShare("appexpired", "update", parser.nextText());
                        }
                        if ("lastinlist".equals(parser.getName())) {
                            tag = 0;
                        }
                        if ("expiredlist".equals(parser.getName())) {
                            tag = 1;
                            break;
                        } else {
                            break;
                        }
                }
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void insertDatabase(Context mContext, List<String> pkgs) {
        ContentResolver resolver = mContext.getContentResolver();
        for (int i = 0; i < pkgs.size(); i++) {
            String pkg = pkgs.get(i);
            Log.d("test", "download pkg: " + pkg);
            String[] parses = pkg.split(",");
            Uri uri = Uri.parse(a + parses[1]);
            ContentValues values = new ContentValues();
            for (int j = 0; j < parses.length; j++) {
                values.put(QueryPermissions.PACKAGENAME, parses[1]);
                values.put("rcontact", parses[2]);
                values.put("rcalendar", parses[3]);
                values.put("rsms", parses[4]);
                values.put("resms", parses[5]);
                values.put("wsms", parses[17]);
                values.put("rhistroy", parses[6]);
                values.put("wcontact", parses[7]);
                values.put("wcalendar", parses[8]);
                values.put("record", parses[9]);
                values.put(AppDatabase.DB_APP_CAMERA, parses[10]);
                values.put("clocation", parses[11]);
                values.put("flocation", parses[12]);
                values.put("elocation", parses[13]);
                values.put(AppDatabase.DB_APP_SENDMESSAGE, parses[14]);
                values.put(AppDatabase.DB_APP_CALL, parses[15]);
                values.put("boot_auto_start", parses[16]);
            }
            int num = resolver.update(uri, values, "pkgname=?", new String[]{parses[1]});
            Log.d("test", "update num: " + num);
            if (num <= 0) {
                Log.d("test", "new uri: " + resolver.insert(uri, values));
            }
        }
    }
}
