package com.lenovo.safecenter.notificationintercept.support;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.text.Html;
import android.util.Xml;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.notificationintercept.NotificationTabActivity;
import com.lenovo.safecenter.support.MD5Util;
import com.lenovo.safecenter.utils.WflUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.xmlpull.v1.XmlPullParser;

public class ScanUtilsImpl implements IScanUtils {
    @Override // com.lenovo.safecenter.notificationintercept.support.IScanUtils
    public void notifyScanSingle(Context context, String packageName) {
        a(context, packageName);
    }

    @Override // com.lenovo.safecenter.notificationintercept.support.IScanUtils
    public void notifyScanAll(Context context) {
        a(context, (String) null);
    }

    private static int a(Context context, String packageName) {
        Cursor cursor;
        List<Appinfo> appInfos;
        if (!WflUtils.isNetworkAvailable(context)) {
            return 0;
        }
        if (packageName == null || "".equals(packageName)) {
            cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.antivirus.AppinfoProvider/appinfo"), null, null, null, null);
        } else {
            cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.antivirus.AppinfoProvider/appinfo"), null, "pkgname=?", new String[]{packageName}, null);
        }
        if (cursor == null) {
            appInfos = null;
        } else {
            appInfos = new ArrayList<>();
            LogUtils.i(" query.count == " + cursor.getCount());
            while (cursor.moveToNext()) {
                appInfos.add(new Appinfo(cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME)), cursor.getString(cursor.getColumnIndex("md5")), cursor.getString(cursor.getColumnIndex("sha1")), cursor.getString(cursor.getColumnIndex("filesize")), cursor.getString(cursor.getColumnIndex(AppDatabase.DB_APP))));
            }
        }
        List<NotiAdBean> notifyApps = cloudScanGlobal(appInfos, context);
        if (notifyApps == null || notifyApps.size() == 0) {
            return 2;
        }
        LogUtils.i(" notifyApps == " + notifyApps);
        a(context, notifyApps);
        return 1;
    }

    private static void a(Context context, List<NotiAdBean> notifyApps) {
        NotificationDB db = new NotificationDB(context);
        db.insertList(notifyApps);
        db.closeDatabase();
        PermissionDB db2 = new PermissionDB(context);
        List<InterceptPermission> permissions = db2.findAll();
        db2.closeDatabase();
        List<InterceptPermission> newPermission = new ArrayList<>();
        List<InterceptPermission> oldPermission = new ArrayList<>();
        for (NotiAdBean adBean : notifyApps) {
            boolean contains = false;
            Iterator i$ = permissions.iterator();
            while (true) {
                if (!i$.hasNext()) {
                    break;
                }
                InterceptPermission permissionBean = i$.next();
                if (adBean.getPkgName().equals(permissionBean.pkgname)) {
                    contains = true;
                    if (permissionBean.permission == 1) {
                        permissionBean.permission = 2;
                        oldPermission.add(permissionBean);
                    }
                }
            }
            if (!contains) {
                InterceptPermission p = new InterceptPermission();
                p.pkgname = adBean.getPkgName();
                p.permission = 2;
                newPermission.add(p);
            }
        }
        PermissionDB pDB = new PermissionDB(context);
        pDB.insertList(newPermission);
        pDB.updateList(oldPermission);
        pDB.closeDatabase();
        List<String> labelList = new ArrayList<>();
        PackageManager packageManager = context.getPackageManager();
        for (InterceptPermission permission : oldPermission) {
            try {
                labelList.add(packageManager.getApplicationInfo(permission.pkgname, 1).loadLabel(packageManager).toString());
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        for (InterceptPermission permission2 : newPermission) {
            try {
                labelList.add(packageManager.getApplicationInfo(permission2.pkgname, 1).loadLabel(packageManager).toString());
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        LogUtils.i(" Show Notification !!! labelList.size === " + labelList.size() + " oldPermission=" + oldPermission.size() + " newPermission=" + newPermission.size());
        if (labelList.size() != 0) {
            StringBuilder sb = new StringBuilder();
            if (labelList.size() <= 1) {
                sb.append(labelList.get(0));
            } else {
                sb.append(labelList.get(0)).append("、").append(labelList.get(1)).append("...");
            }
            String labelText = sb.toString();
            Notification mNotification = new Notification();
            mNotification.icon = R.drawable.notification_intercept_icon_green;
            mNotification.tickerText = Html.fromHtml(context.getString(R.string.notfication_scan_result_tickle, labelText));
            Intent intent = new Intent(context, NotificationTabActivity.class);
            intent.putExtra("tab", "noti_permission");
            PendingIntent contentIntent = PendingIntent.getActivity(context, 0, intent, 0);
            mNotification.setLatestEventInfo(context, context.getString(R.string.test_report), Html.fromHtml(context.getString(R.string.notfication_scan_result_tickle, labelText)), contentIntent);
            ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).notify(InterceptUtils.NOTIFY_ID, mNotification);
        }
    }

    public static List<NotiAdBean> cloudScanGlobal(List<Appinfo> list, Context context) {
        List<NotiAdBean> list_v = null;
        if (list == null || list.size() <= 0) {
            return null;
        }
        int num = 0;
        StringBuffer sb = new StringBuffer();
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>").append("<apklist>");
        LogUtils.i(" CloudScan size == " + list.size());
        for (Appinfo info : list) {
            num++;
            sb.append("<apk>");
            if (!info.getSHA1().equalsIgnoreCase("preload")) {
                sb.append("<packagesha1>").append(info.getSHA1()).append("</packagesha1>");
            } else {
                sb.append("<certmd5>").append(info.getMD5()).append("</certmd5>");
                sb.append("<filesize>").append(info.getFilesize()).append("</filesize>");
                sb.append("<packagename>").append(info.getPkgName()).append("</packagename>");
            }
            sb.append("</apk>");
        }
        sb.append("</apklist>");
        try {
            HttpClient httpClient = new HttpClient();
            PostMethod post = new PostMethod("http://sss.lenovomm.com/sss/1.0/adcloudscan");
            ByteArrayInputStream bis = new ByteArrayInputStream(sb.toString().getBytes());
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            GZIPOutputStream gos = new GZIPOutputStream(bos);
            byte[] bytes = new byte[1024];
            while (true) {
                int length = bis.read(bytes, 0, bytes.length);
                if (length == -1) {
                    break;
                }
                gos.write(bytes, 0, length);
            }
            gos.close();
            bos.close();
            bis.close();
            post.setRequestEntity(new InputStreamRequestEntity(new ByteArrayInputStream(bos.toByteArray()), "text/xml"));
            post.addRequestHeader("Content-Encoding", "gzip");
            post.addRequestHeader("ticket", MD5Util.getMD5String("c81e728d9d4c2f636f067f89cc14862c" + num));
            int status = httpClient.executeMethod(post);
            LogUtils.i(status + "===statusstatus" + "=" + post.getResponseBodyAsString());
            if (status == 200) {
                if (post.getResponseBodyAsString().equals("")) {
                    LogUtils.i(status + "===statusstatus string is not null");
                } else {
                    list_v = parseXML(post.getResponseBodyAsStream(), context);
                }
            }
        } catch (Exception e) {
            LogUtils.e(" exception == " + e.getMessage());
            e.printStackTrace();
        }
        return list_v;
    }

    public static List<NotiAdBean> parseXML(InputStream inStream, Context context) throws IOException {
        Exception e;
        List<NotiAdBean> list = new ArrayList<>();
        NotiAdBean demo = null;
        try {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(inStream, b.a);
            int event = parser.getEventType();
            while (event != 1) {
                switch (event) {
                    case 2:
                        try {
                            if ("apk".equals(parser.getName())) {
                                demo = new NotiAdBean();
                            } else {
                                demo = demo;
                            }
                            if ("adname".equals(parser.getName())) {
                                demo.setAdname(parser.nextText());
                            }
                            if (AppDatabase.APP_PKG_NAME.equals(parser.getName())) {
                                demo.setPkgName(parser.nextText());
                            }
                            if ("description".equals(parser.getName())) {
                                demo.setDescription(parser.nextText());
                                break;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            return list;
                        }
                        break;
                    case 3:
                        if ("apk".equals(parser.getName())) {
                            list.add(demo);
                            demo = null;
                            break;
                        }
                    default:
                        demo = demo;
                        break;
                }
                event = parser.next();
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return list;
        }
        return list;
    }

    @Override // com.lenovo.safecenter.notificationintercept.support.IScanUtils
    public void adScan() {
    }
}
