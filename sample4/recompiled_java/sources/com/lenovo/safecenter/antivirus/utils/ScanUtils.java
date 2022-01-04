package com.lenovo.safecenter.antivirus.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.format.Formatter;
import android.util.Log;
import android.util.Xml;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.domain.VirusDemo;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.utils.Untils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.xmlpull.v1.XmlPullParser;

public class ScanUtils {
    public static boolean isNetScan_cancel = false;

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo[] info;
        ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService("connectivity");
        if (!(connectivity == null || (info = connectivity.getAllNetworkInfo()) == null)) {
            for (NetworkInfo networkInfo : info) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<VirusDemo> netPost(List<Appinfo> list, Context context, PostMethod post) {
        List<VirusDemo> list_v = new ArrayList<>();
        if (list.size() <= 0) {
            return list_v;
        }
        StringBuffer sb = new StringBuffer();
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>").append("<apklist>");
        for (Appinfo info : list) {
            if (!info.getSHA1().equalsIgnoreCase("preload")) {
                sb.append("<apk>");
                sb.append("<packagesha1>").append(info.getSHA1()).append("</packagesha1>");
                sb.append("</apk>");
            } else {
                sb.append("<apk>");
                sb.append("<certmd5>").append(info.getMD5()).append("</certmd5>");
                sb.append("<filesize>").append(info.getFilesize()).append("</filesize>");
                sb.append("<packagename>").append(info.getPkgName()).append("</packagename>");
                sb.append("</apk>");
            }
        }
        sb.append("</apklist>");
        try {
            HttpClient httpClient = new HttpClient();
            if (post == null) {
                post = new PostMethod("http://sss.lenovomm.com/sss/1.0/viruscloudscan");
            }
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
            post.addRequestHeader("ticket", "aaabbbccc");
            int status = httpClient.executeMethod(post);
            Log.i("msg", status + "===statusstatus" + "=" + post.getResponseBodyAsString());
            if (status == 200) {
                if (post.getResponseBodyAsString().equals("")) {
                    Log.i("msg", status + "===statusstatus string is not null");
                } else {
                    list_v = parseXML(post.getResponseBodyAsStream(), context);
                    for (VirusDemo demo : list_v) {
                        Log.i("msg", status + "===statusstatus" + demo.getVirusDesc() + demo.getName() + demo.getPkgName());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list_v;
    }

    public static List<VirusDemo> parseXML(InputStream inStream, Context context) {
        Exception e;
        List<VirusDemo> list = new ArrayList<>();
        VirusDemo demo = null;
        try {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(inStream, b.a);
            int event = parser.getEventType();
            while (event != 1) {
                switch (event) {
                    case 2:
                        try {
                            if ("apk".equals(parser.getName())) {
                                demo = new VirusDemo();
                            } else {
                                demo = demo;
                            }
                            if ("virusname".equals(parser.getName())) {
                                demo.setName(parser.nextText());
                            }
                            if (AppDatabase.APP_PKG_NAME.equals(parser.getName())) {
                                demo.setPkgName(parser.nextText());
                            }
                            if ("description".equals(parser.getName())) {
                                demo.setVirusDesc(parser.nextText());
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

    public List<VirusDemo> cloudScanGlobal(List<Appinfo> list, Context context) {
        Exception e;
        List<VirusDemo> list_v = null;
        if (list.size() <= 0) {
            return new ArrayList();
        }
        int num = 0;
        StringBuffer sb = new StringBuffer();
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>").append("<apklist>");
        try {
            for (Appinfo info : list) {
                if (!info.getSHA1().equalsIgnoreCase("preload") || !info.getMD5().equalsIgnoreCase("preload") || (info.getMD5() != null && !"".equals(info.getMD5()) && info.getFilesize() != null && !"".equals(info.getFilesize()) && info.getPkgName() != null && !"".equals(info.getPkgName()))) {
                    num++;
                    sb.append("<apk>");
                    if (!info.getSHA1().equalsIgnoreCase("preload")) {
                        sb.append("<packagesha1>").append(info.getSHA1()).append("</packagesha1>");
                    } else {
                        sb.append("<certmd5>").append(info.getMD5()).append("</certmd5>");
                        sb.append("<filesize>").append(info.getFilesize()).append("</filesize>");
                        sb.append("<packagename>").append(info.getPkgName()).append("</packagename>");
                    }
                    if (info.getPathKey() != 0) {
                        sb.append("<pathkey>").append(info.getPathKey()).append("</pathkey>");
                    }
                    sb.append("</apk>");
                }
            }
            sb.append("</apklist>");
            Log.i("msg", sb.toString());
            HttpClient httpClient = new HttpClient();
            PostMethod post = new PostMethod("http://sss.lenovomm.com/sss/1.0/viruscloudglobal");
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
            HttpUtils.usenet = Formatter.formatFileSize(context, (long) bos.toByteArray().length);
            post.addRequestHeader("Content-Encoding", "gzip");
            post.addRequestHeader("ticket", MD5Util.getMD5String("c81e728d9d4c2f636f067f89cc14862c" + num));
            int status = httpClient.executeMethod(post);
            Log.i("msg", status + "===statusstatus" + "=" + post.getResponseBodyAsString());
            if (status == 200) {
                if (post.getResponseBodyAsString().equals("")) {
                    List<VirusDemo> list_v2 = new ArrayList<>();
                    try {
                        Log.i("msg", status + "===statusstatus string is not null");
                        list_v = list_v2;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        return new ArrayList();
                    }
                } else {
                    list_v = parseXMLGlobal(post.getResponseBodyAsStream(), context);
                    for (VirusDemo demo : list_v) {
                        Log.i("msg", status + "===statusstatus" + demo.getVirusDesc() + demo.getName() + demo.getPkgName());
                    }
                }
            }
            return list_v;
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return new ArrayList();
        }
    }

    public static List<VirusDemo> parseXMLGlobal(InputStream inStream, Context context) {
        Exception e;
        String pathkey;
        List<VirusDemo> list = new ArrayList<>();
        VirusDemo demo = null;
        try {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(inStream, b.a);
            int event = parser.getEventType();
            while (event != 1) {
                switch (event) {
                    case 2:
                        try {
                            if ("apk".equals(parser.getName())) {
                                demo = new VirusDemo();
                            } else {
                                demo = demo;
                            }
                            if ("virusname".equals(parser.getName())) {
                                demo.setName(parser.nextText());
                            }
                            if (AppDatabase.APP_PKG_NAME.equals(parser.getName())) {
                                demo.setPkgName(parser.nextText());
                            }
                            if ("description".equals(parser.getName())) {
                                demo.setVirusDesc(parser.nextText());
                            }
                            if ("pathkey".equals(parser.getName()) && (pathkey = parser.nextText()) != null && !"".equals(pathkey)) {
                                demo.setPathKey(Integer.parseInt(pathkey));
                                break;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            return null;
                        }
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
            return list;
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Multiple debug info for r2v2 java.util.Iterator<java.lang.String>: [D('i$' java.util.Iterator), D('i$' int)] */
    public void ExecError(String pkgname, Context context) {
        String viruspkgnamelist = HttpUtils.execService("viruspkgname", context);
        if (!viruspkgnamelist.equals("")) {
            String[] strs = viruspkgnamelist.split(",");
            List<String> list = new ArrayList<>();
            for (String str1 : strs) {
                list.add(str1);
            }
            int i = list.size() - 1;
            while (true) {
                if (i < 0) {
                    break;
                } else if (list.get(i).equals(pkgname)) {
                    list.remove(i);
                    break;
                } else {
                    i--;
                }
            }
            if (list.size() > 0) {
                StringBuilder sb = new StringBuilder();
                for (String str : list) {
                    sb.append(str).append(Untils.PAUSE);
                }
                HttpUtils.UpdateConfig("viruspkgname", sb.deleteCharAt(sb.length() - 1).toString(), context);
                return;
            }
            HttpUtils.UpdateConfig("viruspkgname", "", context);
            HttpUtils.hasVirus = false;
        }
    }
}
