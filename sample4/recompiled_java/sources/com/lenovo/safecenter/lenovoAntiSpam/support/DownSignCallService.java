package com.lenovo.safecenter.lenovoAntiSpam.support;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.CallLog;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.antivirus.utils.MD5Util;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.database.NetAppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Untils;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.commons.httpclient.cookie.Cookie2;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

public class DownSignCallService extends Service {
    Handler a = new Handler() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownSignCallService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    int result = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (result == 3) {
                        DownSignCallService.this.setUpdateIntent(HttpUtils.execService("sign_lastin", DownSignCallService.this), 1, 3);
                        try {
                            new Thread() {
                                /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownSignCallService.AnonymousClass1.AnonymousClass1 */

                                public final void run() {
                                    List<SignCall> getSignList = DownSignCallService.this.e.getSignList();
                                    StringBuffer snumber = new StringBuffer();
                                    StringBuffer stype = new StringBuffer();
                                    for (SignCall call : getSignList) {
                                        if (call.getIsUpload() == 0) {
                                            snumber.append(call.getNumber()).append(",");
                                            stype.append(call.getsType()).append(",");
                                        }
                                    }
                                    if (!TextUtils.isEmpty(snumber.toString()) && new HttpUtils().upload_sign(DownSignCallService.this, snumber.deleteCharAt(snumber.length() - 1).toString(), stype.deleteCharAt(stype.length() - 1).toString()) == 2) {
                                        DownSignCallService.this.e.updateAllSign();
                                    }
                                }
                            }.start();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } else if (result == 2) {
                        DownSignCallService.this.setUpdateIntent(HttpUtils.execService("sign_lastin", DownSignCallService.this), 0, 3);
                        try {
                            new Thread() {
                                /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownSignCallService.AnonymousClass1.AnonymousClass2 */

                                public final void run() {
                                    List<SignCall> getSignList = DownSignCallService.this.e.getSignList();
                                    StringBuffer snumber = new StringBuffer();
                                    StringBuffer stype = new StringBuffer();
                                    for (SignCall call : getSignList) {
                                        if (call.getIsUpload() == 0) {
                                            snumber.append(call.getNumber()).append(",");
                                            stype.append(call.getsType()).append(",");
                                        }
                                    }
                                    if (!TextUtils.isEmpty(snumber.toString()) && new HttpUtils().upload_sign(DownSignCallService.this, snumber.deleteCharAt(snumber.length() - 1).toString(), stype.deleteCharAt(stype.length() - 1).toString()) == 2) {
                                        DownSignCallService.this.e.updateAllSign();
                                    }
                                }
                            }.start();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    } else {
                        DownSignCallService.this.setUpdateIntent(HttpUtils.execService("sign_lastin", DownSignCallService.this), 2, 3);
                    }
                    DownSignCallService.this.stopSelf();
                    return;
                case 2:
                    int result1 = msg.getData().getInt(QueryPermissions.RECOMMENDEDACTION);
                    if (result1 == 3) {
                        DownSignCallService.this.setQueryIntent(1);
                    } else if (result1 == 2) {
                        DownSignCallService.this.setQueryIntent(0);
                    } else {
                        DownSignCallService.this.setQueryIntent(2);
                    }
                    DownSignCallService.this.stopSelf();
                    return;
                default:
                    return;
            }
        }
    };
    private HttpUtils b;
    private String c;
    private String d;
    private AppDatabase e;
    private NetAppDatabase f;

    public void onDestroy() {
        super.onDestroy();
        System.gc();
    }

    public void onCreate() {
        super.onCreate();
        this.e = new AppDatabase(this);
        this.f = new NetAppDatabase(this);
    }

    public void setQueryIntent(int status) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antispam.signcallqueryresult");
        intent.putExtra("status", status);
        sendBroadcast(intent);
    }

    public void setUpdateIntent(String time, int status, int type) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antispam.signcallupdateresult");
        intent.putExtra("status", status);
        intent.putExtra("type", type);
        intent.putExtra(com.lenovo.safecenter.database.AppDatabase.TIME, time);
        sendBroadcast(intent);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        this.b = new HttpUtils();
        if (intent == null) {
            return;
        }
        if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_UPDATE_SIGNCALL_LAB)) {
            downSign("update");
        } else if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_QUERY_SIGNCALL_LAB)) {
            downSign("query");
        }
    }

    public void downSign(final String cmd) {
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownSignCallService.AnonymousClass2 */

            public final void run() {
                synchronized (SecurityService.lock) {
                    try {
                        DownSignCallService.this.uplocal_sign(DownSignCallService.this, DownSignCallService.this.getSignCallList());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    try {
                        int result = DownSignCallService.this.initDown(DownSignCallService.this, cmd);
                        Log.i("xmlresult", result + "==lastin_list=" + DownSignCallService.this.c + "=====expired_list==" + DownSignCallService.this.d);
                        if (cmd.equals("update")) {
                            if (result == 2) {
                                DownSignCallService.this.f.insert_NetSign(DownSignCallService.this.c, DownSignCallService.this.d);
                            }
                            DownSignCallService.this.c = DownSignCallService.this.d = null;
                            Message mes = new Message();
                            mes.what = 1;
                            mes.getData().putInt(QueryPermissions.RECOMMENDEDACTION, result);
                            DownSignCallService.this.a.sendMessage(mes);
                        } else if (cmd.equals("query")) {
                            Message mes2 = new Message();
                            mes2.what = 2;
                            mes2.getData().putInt(QueryPermissions.RECOMMENDEDACTION, result);
                            DownSignCallService.this.a.sendMessage(mes2);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    public int initDown(Context context, String cmd) {
        TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
        Map<String, String> params = new HashMap<>();
        params.put("lang", "zh-cn");
        params.put("lastintag", HttpUtils.execService("sign_lastin", context));
        params.put("expiredtag", HttpUtils.execService("sign_expired", context));
        params.put("devicefamily", "lephone");
        params.put("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            params.put("deviceid", "N/A");
        } else {
            params.put("deviceid", manager.getDeviceId());
        }
        params.put("devicevendor", Build.MANUFACTURER);
        return a("http://sss.lenovomm.com/sss/1.0/tagnolistsync", params, b.a, cmd);
    }

    private int a(String path, Map<String, String> params, String encoding, String cmd) {
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
            httpClient.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 5000);
            httpClient.getParams().setParameter("http.socket.timeout", 5000);
            httpGet.setHeader("Accept-Encoding", "gzip,deflate");
            HttpResponse response = httpClient.execute(httpGet);
            HttpEntity httpEntity = response.getEntity();
            Log.i("StatusCode", response.getStatusLine().getStatusCode() + ">>>>>>>>>>");
            if (response.getStatusLine().getStatusCode() == 200) {
                if (cmd.equals("update")) {
                    return a(httpEntity.getContent());
                }
                return 2;
            } else if (response.getStatusLine().getStatusCode() == 304) {
                return 3;
            } else {
                return 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    private int a(InputStream inStream) throws Exception {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(new GZIPInputStream(inStream), b.a);
        int tag = 0;
        for (int event = parser.getEventType(); event != 1; event = parser.next()) {
            switch (event) {
                case 2:
                    if ("lastintag".equals(parser.getName())) {
                        tag = 1;
                        this.b.UpdateConfig("sign_lastin", parser.nextText(), this);
                    }
                    if ("expiredtag".equals(parser.getName())) {
                        tag = 2;
                        this.b.UpdateConfig("sign_expired", parser.nextText(), this);
                    }
                    if (tag == 1) {
                        if ("numbers4call".equals(parser.getName())) {
                            this.c = parser.nextText();
                            break;
                        } else {
                            break;
                        }
                    } else if (tag == 2 && "numbers4call".equals(parser.getName())) {
                        this.d = parser.nextText();
                        break;
                    }
            }
        }
        return 2;
    }

    public String getSignCallList() {
        String[] projection = {com.lenovo.safecenter.database.AppDatabase.NUMBER, "name", "type", "date"};
        Cursor cursor = getContentResolver().query(CallLog.Calls.CONTENT_URI, projection, "type=? and date>?", new String[]{String.valueOf(1), String.valueOf(System.currentTimeMillis() - 86400000)}, "number,date desc ");
        StringBuffer sb = new StringBuffer();
        String preNum = "";
        while (cursor.moveToNext()) {
            String number = cursor.getString(cursor.getColumnIndex(com.lenovo.safecenter.database.AppDatabase.NUMBER));
            if (Untils.isPhoneNUmber(number) && !number.equals(preNum)) {
                preNum = number;
                if (TextUtils.isEmpty(cursor.getString(cursor.getColumnIndex("name"))) && !this.f.isExistSign(number)) {
                    sb.append(number).append(",");
                }
            }
        }
        cursor.close();
        if (sb.length() <= 0) {
            return null;
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public void uplocal_sign(Context context, String numbers) {
        TelephonyManager manager = (TelephonyManager) context.getSystemService("phone");
        Map<String, String> params = new HashMap<>();
        params.put("lang", "zh-cn");
        params.put("devicefamily", "lephone");
        params.put("deviceidtype", "imei");
        if (manager.getDeviceId() == null) {
            params.put("deviceid", "N/A");
        } else {
            params.put("deviceid", manager.getDeviceId());
        }
        params.put("devicevendor", Build.MANUFACTURER);
        Log.i(Cookie2.PATH, "numbers==" + numbers);
        if (numbers != null) {
            params.put("no", numbers);
            a("http://sss.lenovomm.com/sss/1.0/querytagno", params, b.a, numbers.split(",").length);
        }
    }

    private void a(String path, Map<String, String> params, String encoding, int num) {
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
            httpClient.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 5000);
            httpClient.getParams().setParameter("http.socket.timeout", 5000);
            httpGet.setHeader("Accept-Encoding", "gzip,deflate");
            httpGet.setHeader("ticket", MD5Util.getMD5String("c81e728d9d4c2f636f067f89cc14862c" + num));
            HttpResponse response = httpClient.execute(httpGet);
            Log.i(Cookie2.PATH, "response.getStatusLine().getStatusCode()" + response.getStatusLine().getStatusCode());
            if (response.getStatusLine().getStatusCode() == 200) {
                StringBuilder sb_in = new StringBuilder();
                GZIPInputStream gzip = new GZIPInputStream(response.getEntity().getContent());
                byte[] b2 = new byte[4096];
                while (true) {
                    int n = gzip.read(b2);
                    if (n != -1) {
                        sb_in.append(new String(b2, 0, n));
                    } else {
                        gzip.close();
                        Log.i(Cookie2.PATH, sb_in.toString());
                        a(sb_in.toString());
                        return;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String strResult) {
        try {
            JSONArray jsonObjs = new JSONArray(strResult);
            if (jsonObjs.length() > 0) {
                List<SignCall> list = new ArrayList<>();
                for (int i = 0; i < jsonObjs.length(); i++) {
                    JSONObject jsonObj = (JSONObject) jsonObjs.get(i);
                    list.add(new SignCall(jsonObj.getString("no"), jsonObj.getInt(DatabaseTables.LOG_TAG), jsonObj.getInt("count")));
                }
                this.f.insert_LocalNetSign(list);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
