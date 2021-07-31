package com.lenovo.safecenter.adskill;

import android.content.Context;
import android.util.Log;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.safecenter.support.CMDHelper;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class FileUtils {
    public static final String MD5 = ".md5";
    public static final String XML = ".xml";

    public static synchronized boolean isExist(String path) {
        boolean exists;
        synchronized (FileUtils.class) {
            exists = new File(path).exists();
        }
        return exists;
    }

    public static synchronized boolean mkdirs(String path) {
        boolean mkdirs;
        synchronized (FileUtils.class) {
            mkdirs = new File(path).mkdirs();
        }
        return mkdirs;
    }

    public static synchronized void CopyFile(String src, String dir) {
        synchronized (FileUtils.class) {
            try {
                File emptyFile = new File(src);
                if (emptyFile.length() <= 0) {
                    Log.i("CopyFile", "emptyFile.length===" + emptyFile.length());
                    Log.i("CopyFile", "emptyFile.length  bool===" + new File(dir).createNewFile());
                } else {
                    FileInputStream fin = new FileInputStream(new File(src));
                    FileOutputStream fout = new FileOutputStream(new File(dir));
                    byte[] buffer = new byte[fin.available()];
                    while (fin.read(buffer) != -1) {
                        fout.write(buffer);
                    }
                    fin.close();
                    fout.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return;
    }

    public static synchronized boolean cpAssetsFile(Context context, String from, String to, boolean isReplace) {
        boolean z = false;
        synchronized (FileUtils.class) {
            boolean res = false;
            String path = to.substring(0, to.lastIndexOf(CookieSpec.PATH_DELIM) + 1);
            if (!isExist(path)) {
                mkdirs(path);
            }
            if (isReplace || !isExist(to)) {
                try {
                    InputStream is = context.getAssets().open(from);
                    BufferedReader br = new BufferedReader(new InputStreamReader(is));
                    BufferedWriter bw = new BufferedWriter(new FileWriter(to));
                    StringBuffer sb = new StringBuffer();
                    boolean fistLine = true;
                    while (true) {
                        String line = br.readLine();
                        if (line == null) {
                            break;
                        }
                        if (fistLine) {
                            fistLine = false;
                        } else {
                            bw.newLine();
                            sb.append("\n");
                        }
                        bw.write(line);
                        sb.append(line);
                    }
                    bw.close();
                    br.close();
                    is.close();
                    res = isExist(to);
                } catch (IOException e) {
                }
                z = res;
            }
        }
        return z;
    }

    public static synchronized boolean writeFile(String path, String text) {
        boolean isExist;
        synchronized (FileUtils.class) {
            try {
                if (isExist(path)) {
                    deleteFile(path);
                }
                BufferedWriter bw = new BufferedWriter(new FileWriter(path));
                bw.write(text);
                bw.close();
            } catch (IOException e) {
            }
            isExist = isExist(path);
        }
        return isExist;
    }

    public static synchronized String readFile(String path) {
        String res;
        synchronized (FileUtils.class) {
            res = null;
            if (isExist(path)) {
                try {
                    BufferedInputStream bf = new BufferedInputStream(new FileInputStream(path));
                    byte[] data = new byte[bf.available()];
                    bf.read(data);
                    res = new String(data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return res;
    }

    public static synchronized String getMD5Str(String str) {
        String stringBuffer;
        synchronized (FileUtils.class) {
            byte[] byteArray = null;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.reset();
                messageDigest.update(str.getBytes(b.a));
                byteArray = messageDigest.digest();
            } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            }
            StringBuffer md5StrBuff = new StringBuffer();
            if (byteArray != null) {
                for (int i = 0; i < byteArray.length; i++) {
                    if (Integer.toHexString(byteArray[i] & 255).length() == 1) {
                        md5StrBuff.append("0").append(Integer.toHexString(byteArray[i] & 255));
                    } else {
                        md5StrBuff.append(Integer.toHexString(byteArray[i] & 255));
                    }
                }
            }
            stringBuffer = md5StrBuff.toString();
        }
        return stringBuffer;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0010, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized int getListLenght(java.lang.String r2) {
        /*
            java.lang.Class<com.lenovo.safecenter.adskill.FileUtils> r1 = com.lenovo.safecenter.adskill.FileUtils.class
            monitor-enter(r1)
            java.io.File r0 = new java.io.File     // Catch:{ Exception -> 0x000f, all -> 0x0012 }
            r0.<init>(r2)     // Catch:{ Exception -> 0x000f, all -> 0x0012 }
            java.lang.String[] r0 = r0.list()     // Catch:{ Exception -> 0x000f, all -> 0x0012 }
            int r0 = r0.length     // Catch:{ Exception -> 0x000f, all -> 0x0012 }
        L_0x000d:
            monitor-exit(r1)
            return r0
        L_0x000f:
            r0 = move-exception
            r0 = 0
            goto L_0x000d
        L_0x0012:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.adskill.FileUtils.getListLenght(java.lang.String):int");
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean mkMD5File(java.lang.String r8) {
        /*
            java.lang.Class<com.lenovo.safecenter.adskill.FileUtils> r6 = com.lenovo.safecenter.adskill.FileUtils.class
            monitor-enter(r6)
            r3 = 0
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            r5.<init>()     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.String r7 = ".xml"
            java.lang.StringBuilder r5 = r5.append(r7)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.String r2 = r5.toString()     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.io.FileReader r5 = new java.io.FileReader     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            r5.<init>(r2)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            r0.<init>(r5)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.String r4 = readFile(r2)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            r5.<init>()     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.String r7 = ".md5"
            java.lang.StringBuilder r5 = r5.append(r7)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            java.lang.String r1 = r5.toString()     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            boolean r5 = isExist(r1)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            if (r5 == 0) goto L_0x0041
            deleteFile(r1)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
        L_0x0041:
            java.lang.String r5 = getMD5Str(r4)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            boolean r3 = writeFile(r1, r5)     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
            r0.close()     // Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0051, all -> 0x004e }
        L_0x004c:
            monitor-exit(r6)
            return r3
        L_0x004e:
            r5 = move-exception
            monitor-exit(r6)
            throw r5
        L_0x0051:
            r5 = move-exception
            goto L_0x004c
        L_0x0053:
            r5 = move-exception
            goto L_0x004c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.adskill.FileUtils.mkMD5File(java.lang.String):boolean");
    }

    public static synchronized boolean deleteFile(String path) {
        boolean delete;
        synchronized (FileUtils.class) {
            delete = new File(path).delete();
        }
        return delete;
    }

    public static synchronized boolean cpAssetsFileBySocketClient(Context context, String from, String to, String shPath, boolean isReplace) {
        boolean z;
        synchronized (FileUtils.class) {
            boolean res = false;
            if (!isReplace) {
                if (isExist(to)) {
                    z = false;
                }
            }
            try {
                new StringBuffer().append("mount -o remount,rw " + CMDHelper.getMountDate(context) + " /system \n").append("chmod 666 " + from + "\n").append("cat " + from + " >" + to + "\n");
                res = CMDHelper.exeCmd(context, shPath);
            } catch (Exception e) {
                e.printStackTrace();
            }
            z = res;
        }
        return z;
    }
}
