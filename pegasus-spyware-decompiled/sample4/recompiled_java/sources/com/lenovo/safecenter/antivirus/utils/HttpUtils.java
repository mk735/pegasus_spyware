package com.lenovo.safecenter.antivirus.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import android.util.Xml;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.VirusDemo;
import com.lenovo.safecenter.antivirus.support.AntiVirusDBHelper;
import com.lenovo.safecenter.database.AppDatabase;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.xmlpull.v1.XmlPullParser;

public class HttpUtils {
    private static int b = 1;
    public static int count = 0;
    public static final int down_success = 2;
    public static boolean hasVirus = false;
    public static boolean isDowning = false;
    public static boolean isInstall = false;
    public static boolean isOpen = false;
    public static boolean isfrom = false;
    public static boolean isupdating = false;
    public static final int net_disconnect = 1;
    public static final int server_disconnect = 0;
    public static String usenet = null;
    public static final int version_isNew = 3;
    List<UpdateInfo> a = null;

    public int updateVirus(final Context context) {
        UpdateManager mUpdateManager = (UpdateManager) ManagerCreator.getManager(UpdateManager.class);
        mUpdateManager.check(8, new ICheckListener() {
            /* class com.lenovo.safecenter.antivirus.utils.HttpUtils.AnonymousClass1 */

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckCanceled() {
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckEvent(int arg0) {
                int unused = HttpUtils.b = 1;
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckFinished(CheckResult arg0) {
                try {
                    HttpUtils.this.a = arg0.mUpdateInfoList;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckStarted() {
            }
        });
        if (this.a != null && this.a.size() > 0) {
            mUpdateManager.update(this.a, new IUpdateListener() {
                /* class com.lenovo.safecenter.antivirus.utils.HttpUtils.AnonymousClass2 */

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onProgressChanged(UpdateInfo arg0, int arg1) {
                    Log.i("demo", arg0.url + "=====");
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateEvent(UpdateInfo arg0, int arg1) {
                    int unused = HttpUtils.b = 1;
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateFinished() {
                    int unused = HttpUtils.b = 2;
                    HttpUtils.UpdateConfig("virus_state", "3", context);
                    if (HttpUtils.this.a != null) {
                        HttpUtils.this.a = null;
                    }
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateStarted() {
                }

                @Override // com.tencent.tmsecure.module.update.IUpdateListener
                public final void onUpdateCanceled() {
                }
            });
        }
        return b;
    }

    public int updateVirusQuery(Context context) {
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).check(8, new ICheckListener() {
            /* class com.lenovo.safecenter.antivirus.utils.HttpUtils.AnonymousClass3 */

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckCanceled() {
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckEvent(int arg0) {
                Log.i("demo", "CheckResult=========onCheckEvent1");
                int unused = HttpUtils.b = 1;
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckFinished(CheckResult arg0) {
                try {
                    Log.i("demo", "CheckResult=========onCheckFinished1");
                    if (arg0 != null) {
                        int unused = HttpUtils.b = 2;
                        if (arg0.mUpdateInfoList.size() == 0) {
                            int unused2 = HttpUtils.b = 3;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // com.tencent.tmsecure.module.update.ICheckListener
            public final void onCheckStarted() {
                Log.i("demo", "CheckResult=========onCheckStarted1");
            }
        });
        return b;
    }

    public static String FormetFileSize(long fileS) {
        DecimalFormat df = new DecimalFormat("#.00");
        if (fileS < 1024) {
            return df.format((double) fileS) + "B";
        }
        if (fileS < 1048576) {
            return df.format(((double) fileS) / 1024.0d) + "K";
        }
        if (fileS < 1073741824) {
            return df.format(((double) fileS) / 1048576.0d) + "M";
        }
        return df.format(((double) fileS) / 1.073741824E9d) + "G";
    }

    public static List<VirusDemo> parseXML(InputStream inStream, Context context) {
        Exception e;
        VirusDemo demo;
        List<VirusDemo> list = new ArrayList<>();
        List<VirusDemo> expireList = new ArrayList<>();
        List<VirusDemo> memolist = new ArrayList<>();
        try {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(inStream, b.a);
            int event = parser.getEventType();
            int tag = 0;
            VirusDemo demo2 = null;
            while (event != 1) {
                switch (event) {
                    case 2:
                        try {
                            if ("lastinviruses".equals(parser.getName())) {
                                UpdateConfig("lastintag", parser.getAttributeValue(0), context);
                                UpdateConfig("lastVirusUpdateTime", String.valueOf(System.currentTimeMillis()), context);
                                tag = 1;
                            }
                            if ("expiredviruses".equals(parser.getName())) {
                                UpdateConfig("expiredtag", parser.getAttributeValue(0), context);
                                tag = 2;
                            }
                            if ("memolist".equals(parser.getName())) {
                                tag = 3;
                            }
                            if ("onememo".equals(parser.getName())) {
                                demo2 = new VirusDemo();
                            }
                            if ("onevirus".equals(parser.getName())) {
                                demo = new VirusDemo();
                            } else {
                                demo = demo2;
                            }
                            if ("virusname".equals(parser.getName())) {
                                demo.setName(parser.nextText());
                            }
                            if (AppDatabase.APP_PKG_NAME.equals(parser.getName())) {
                                demo.setPkgName(parser.nextText());
                            }
                            if ("packagesha1".equals(parser.getName())) {
                                demo.setPkgSha1(parser.nextText().toLowerCase());
                            }
                            if ("certmd5".equals(parser.getName())) {
                                demo.setCertmd5(parser.nextText().toUpperCase());
                            }
                            if ("vid".equals(parser.getName())) {
                                demo.setType(parser.nextText());
                            }
                            if ("description".equals(parser.getName())) {
                                demo.setVirusDesc(parser.nextText());
                            }
                            if ("filesize".equals(parser.getName())) {
                                demo.setFilesize(parser.nextText());
                                break;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            return list;
                        }
                        break;
                    case 3:
                        if ("onevirus".equals(parser.getName())) {
                            if (tag == 1) {
                                list.add(demo2);
                            } else if (tag == 2) {
                                expireList.add(demo2);
                            }
                            demo = null;
                        } else {
                            demo = demo2;
                        }
                        if ("onememo".equals(parser.getName())) {
                            if (tag == 3) {
                                memolist.add(demo);
                            }
                            demo = null;
                            break;
                        }
                        break;
                    default:
                        demo = demo2;
                        break;
                }
                event = parser.next();
                demo2 = demo;
            }
            new AntiVirusDBHelper(context).add2(list, expireList, memolist);
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return list;
        }
        return list;
    }

    public static String execService(String method, Context context) {
        return context.getSharedPreferences("virusversionconfig", 0).getString(method, "");
    }

    public static void UpdateConfig(String method, String value, Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences("virusversionconfig", 0).edit();
        editor.putString(method, value);
        editor.commit();
    }

    public static void removeConfig(String method, Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences("virusversionconfig", 0).edit();
        editor.remove(method);
        editor.commit();
    }

    public static String getDate(String longtime) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(Long.parseLong(longtime)));
    }

    public static String getDateALL(String longtime) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.parseLong(longtime)));
    }

    public static void initVirusVersion(Context cxt) {
        try {
            Properties properties = new Properties();
            properties.load(cxt.getResources().openRawResource(R.raw.url));
            String virusVersion = properties.getProperty("viruseversion");
            String expireVersion = properties.getProperty("expireversion");
            UpdateConfig("lastintag", virusVersion, cxt);
            UpdateConfig("expiredtag", expireVersion, cxt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void sendGETRequest_virus(Context context) {
        try {
            HttpGet httpGet = new HttpGet("http://sss.lenovomm.com/sss/1.0/viruscount");
            DefaultHttpClient httpClient = new DefaultHttpClient();
            httpClient.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 5000);
            httpClient.getParams().setParameter("http.socket.timeout", 5000);
            HttpResponse response = httpClient.execute(httpGet);
            if (response.getStatusLine().getStatusCode() == 200) {
                UpdateConfig("virusnetadd", EntityUtils.toString(response.getEntity()), context);
                UpdateConfig("virusnetaddtime", String.valueOf(System.currentTimeMillis()), context);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean isSameDate(Long date1, Long date2) {
        Calendar cal1 = Calendar.getInstance();
        Calendar cal2 = Calendar.getInstance();
        cal1.setTimeInMillis(date1.longValue());
        cal2.setTimeInMillis(date2.longValue());
        if (cal1.get(1) - cal2.get(1) == 0 && cal1.get(3) == cal2.get(3)) {
            return true;
        }
        return false;
    }
}
