package tms;

import QQPIM.ConfInfo;
import android.content.Context;
import android.os.Environment;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.mmsutils.CharacterSets;
import com.lenovo.safecenter.mmsutils.ContentType;
import com.tencent.tccdb.RuleFileHeader;
import com.tencent.tccdb.SmsChecker;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.ScriptHelper;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.methods.multipart.FilePart;

public final class v {
    private static boolean a;
    private static final String[][] b = {new String[]{"3gp", ContentType.VIDEO_3GPP}, new String[]{"apk", "application/vnd.android.package-archive"}, new String[]{"asf", "video/x-ms-asf"}, new String[]{"avi", "video/x-msvideo"}, new String[]{"bin", FilePart.DEFAULT_CONTENT_TYPE}, new String[]{"bmp", "image/bmp"}, new String[]{"c", "text/plain"}, new String[]{"class", FilePart.DEFAULT_CONTENT_TYPE}, new String[]{"conf", "text/plain"}, new String[]{"cpp", "text/plain"}, new String[]{"doc", "application/msword"}, new String[]{"docx", "application/msword"}, new String[]{"exe", FilePart.DEFAULT_CONTENT_TYPE}, new String[]{"gif", ContentType.IMAGE_GIF}, new String[]{"gtar", "application/x-gtar"}, new String[]{"gz", "application/x-gzip"}, new String[]{"h", "text/plain"}, new String[]{"htm", ContentType.TEXT_HTML}, new String[]{"html", ContentType.TEXT_HTML}, new String[]{"jar", "application/java-archive"}, new String[]{"java", "text/plain"}, new String[]{"jpeg", ContentType.IMAGE_JPEG}, new String[]{"jpg", ContentType.IMAGE_JPEG}, new String[]{"js", "application/x-javascript"}, new String[]{"log", "text/plain"}, new String[]{"m3u", "audio/x-mpegurl"}, new String[]{"m4a", "audio/mp4a-latm"}, new String[]{"m4b", "audio/mp4a-latm"}, new String[]{"m4p", "audio/mp4a-latm"}, new String[]{"m4u", "video/vnd.mpegurl"}, new String[]{"m4v", "video/x-m4v"}, new String[]{"mov", "video/quicktime"}, new String[]{"mp2", ContentType.AUDIO_X_MPEG}, new String[]{"mp3", ContentType.AUDIO_X_MPEG}, new String[]{"mp4", ContentType.VIDEO_MP4}, new String[]{"mpc", "application/vnd.mpohn.certificate"}, new String[]{"mpe", "video/mpeg"}, new String[]{"mpeg", "video/mpeg"}, new String[]{"mpg", "video/mpeg"}, new String[]{"mpg4", ContentType.VIDEO_MP4}, new String[]{"mpga", ContentType.AUDIO_MPEG}, new String[]{"msg", "application/vnd.ms-outlook"}, new String[]{"ogg", "audio/ogg"}, new String[]{"pdf", "application/pdf"}, new String[]{"png", ContentType.IMAGE_PNG}, new String[]{"pps", "application/vnd.ms-powerpoint"}, new String[]{"ppsx", "application/vnd.ms-powerpoint"}, new String[]{"ppt", "application/vnd.ms-powerpoint"}, new String[]{"pptx", "application/vnd.ms-powerpoint"}, new String[]{"xls", "application/vnd.ms-excel"}, new String[]{"xlsx", "application/vnd.ms-excel"}, new String[]{"prop", "text/plain"}, new String[]{"rar", "application/x-rar-compressed"}, new String[]{"rc", "text/plain"}, new String[]{"rmvb", "audio/x-pn-realaudio"}, new String[]{"rtf", "application/rtf"}, new String[]{"sh", "text/plain"}, new String[]{"tar", "application/x-tar"}, new String[]{"tgz", "application/x-compressed"}, new String[]{"txt", "text/plain"}, new String[]{"wav", "audio/x-wav"}, new String[]{"wma", "audio/x-ms-wma"}, new String[]{"wmv", "audio/x-ms-wmv"}, new String[]{"wps", "application/vnd.ms-works"}, new String[]{"xml", "text/plain"}, new String[]{"z", "application/x-compress"}, new String[]{"zip", "application/zip"}, new String[]{"epub", "application/epub+zip"}, new String[]{"", "*/*"}};

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0038, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0039, code lost:
        r2 = null;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0045, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0046, code lost:
        r1.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x004a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x004b, code lost:
        r2 = null;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0058, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0059, code lost:
        r1.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x005d, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x005e, code lost:
        r2 = null;
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x006a, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x006b, code lost:
        r1.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x006f, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0076, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0077, code lost:
        r1.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:?, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:?, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:?, code lost:
        return com.tencent.tmsecure.common.ErrorCode.ERR_FILE_OP;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:?, code lost:
        return com.tencent.tmsecure.common.ErrorCode.ERR_FILE_OP;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:?, code lost:
        return -2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:?, code lost:
        return -2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        return com.tencent.tmsecure.common.ErrorCode.ERR_FILE_OP;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:?, code lost:
        return -2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0041 A[SYNTHETIC, Splitter:B:24:0x0041] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0054 A[SYNTHETIC, Splitter:B:32:0x0054] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0066 A[SYNTHETIC, Splitter:B:40:0x0066] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x006f A[ExcHandler: all (th java.lang.Throwable), Splitter:B:6:0x000d] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0072 A[SYNTHETIC, Splitter:B:46:0x0072] */
    /* JADX WARNING: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(android.content.Context r6, java.lang.Object r7, java.lang.String r8, java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 139
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.a(android.content.Context, java.lang.Object, java.lang.String, java.lang.String):int");
    }

    public static long a(Context context) {
        AtomicReference atomicReference = new AtomicReference();
        String a2 = a(context, UpdateConfig.SMS_CHECKER_NAME, (String) null);
        if (a2 == null) {
            return 0;
        }
        SmsChecker.getRuleFileHeader(context, atomicReference, a2);
        RuleFileHeader ruleFileHeader = (RuleFileHeader) atomicReference.get();
        if (ruleFileHeader != null) {
            return (long) ruleFileHeader.time;
        }
        return -1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000c, code lost:
        if (r11.equals("") != false) goto L_0x000e;
     */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a6 A[SYNTHETIC, Splitter:B:44:0x00a6] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00ab A[SYNTHETIC, Splitter:B:47:0x00ab] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00c3 A[SYNTHETIC, Splitter:B:63:0x00c3] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00c8 A[SYNTHETIC, Splitter:B:66:0x00c8] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized java.lang.String a(android.content.Context r9, java.lang.String r10, java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 238
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.a(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String a(String str) {
        String lowerCase = str.substring(str.lastIndexOf(".") + 1, str.length()).toLowerCase();
        for (int i = 0; i < b.length; i++) {
            if (lowerCase.equals(b[i][0])) {
                return b[i][1];
            }
        }
        return "/*";
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x002f A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.String a(java.lang.String r4, java.lang.String r5) {
        /*
            r1 = 0
            java.lang.String r0 = android.net.Uri.decode(r4)
            if (r0 == 0) goto L_0x0032
            r2 = 63
            int r2 = r0.indexOf(r2)
            if (r2 <= 0) goto L_0x0014
            r3 = 0
            java.lang.String r0 = r0.substring(r3, r2)
        L_0x0014:
            java.lang.String r2 = "/"
            boolean r2 = r0.endsWith(r2)
            if (r2 != 0) goto L_0x0032
            r2 = 47
            int r2 = r0.lastIndexOf(r2)
            int r2 = r2 + 1
            if (r2 <= 0) goto L_0x0032
            java.lang.String r0 = r0.substring(r2)
        L_0x002a:
            if (r0 != 0) goto L_0x002d
            r0 = r5
        L_0x002d:
            if (r0 != 0) goto L_0x0031
            java.lang.String r0 = "downloadfile"
        L_0x0031:
            return r0
        L_0x0032:
            r0 = r1
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.a(java.lang.String, java.lang.String):java.lang.String");
    }

    private static String a(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            cArr2[i * 2] = cArr[(b2 >>> 4) & 15];
            cArr2[(i * 2) + 1] = cArr[b2 & 15];
        }
        return new String(cArr2);
    }

    public static List<String> a(File file, List<String> list) {
        return a(file, list, true);
    }

    public static List<String> a(File file, List<String> list, boolean z) {
        if (ScriptHelper.providerSupportGetAllApkFiles()) {
            return ScriptHelper.provider().a(file, list);
        }
        ArrayList arrayList = new ArrayList();
        fu fuVar = new fu(list, z, arrayList);
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        File[] listFiles = file.listFiles(fuVar);
        if (listFiles != null) {
            linkedBlockingQueue.addAll(Arrays.asList(listFiles));
        }
        while (linkedBlockingQueue.size() > 0) {
            File[] listFiles2 = ((File) linkedBlockingQueue.poll()).listFiles(fuVar);
            if (listFiles2 != null) {
                linkedBlockingQueue.addAll(Arrays.asList(listFiles2));
            }
        }
        return arrayList;
    }

    public static void a(File file) {
        if (file.exists()) {
            file.delete();
        }
    }

    public static void a(ArrayList<String> arrayList, File file, String[] strArr) {
        if (file.exists()) {
            if (file.isDirectory()) {
                if (strArr != null) {
                    for (String str : strArr) {
                        if (file.getName().toLowerCase().contains(str)) {
                            return;
                        }
                    }
                }
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        a(arrayList, file2, strArr);
                    }
                }
            } else if (file.getName().endsWith(".apk")) {
                arrayList.add(file.getAbsolutePath());
            }
        }
    }

    public static boolean a() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x003b A[SYNTHETIC, Splitter:B:26:0x003b] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x004a A[SYNTHETIC, Splitter:B:33:0x004a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized byte[] a(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = 0
            java.lang.Class<tms.v> r2 = tms.v.class
            monitor-enter(r2)
            android.content.Context r1 = com.tencent.tmsecure.common.TMSApplication.getApplicaionContext()     // Catch:{ all -> 0x0031 }
            r3 = 0
            java.lang.String r1 = a(r1, r6, r3)     // Catch:{ all -> 0x0031 }
            java.io.File r3 = new java.io.File     // Catch:{ all -> 0x0031 }
            r3.<init>(r1)     // Catch:{ all -> 0x0031 }
            boolean r1 = r3.exists()     // Catch:{ all -> 0x0031 }
            if (r1 != 0) goto L_0x001d
            r0 = 0
            byte[] r0 = new byte[r0]     // Catch:{ all -> 0x0031 }
        L_0x001b:
            monitor-exit(r2)
            return r0
        L_0x001d:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0034, all -> 0x0044 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0034, all -> 0x0044 }
            byte[] r0 = tms.r.a(r1)     // Catch:{ IOException -> 0x0055 }
            if (r1 == 0) goto L_0x001b
            r1.close()     // Catch:{ IOException -> 0x002c }
            goto L_0x001b
        L_0x002c:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x001b
        L_0x0031:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L_0x0034:
            r1 = move-exception
            r1 = r0
        L_0x0036:
            r0 = 0
            byte[] r0 = new byte[r0]     // Catch:{ all -> 0x0053 }
            if (r1 == 0) goto L_0x001b
            r1.close()     // Catch:{ IOException -> 0x003f }
            goto L_0x001b
        L_0x003f:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x001b
        L_0x0044:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0048:
            if (r1 == 0) goto L_0x004d
            r1.close()     // Catch:{ IOException -> 0x004e }
        L_0x004d:
            throw r0
        L_0x004e:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x004d
        L_0x0053:
            r0 = move-exception
            goto L_0x0048
        L_0x0055:
            r0 = move-exception
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.a(android.content.Context, java.lang.String):byte[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0025 A[SYNTHETIC, Splitter:B:18:0x0025] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002a A[SYNTHETIC, Splitter:B:21:0x002a] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x006d A[SYNTHETIC, Splitter:B:41:0x006d] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0072 A[SYNTHETIC, Splitter:B:44:0x0072] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0088 A[SYNTHETIC, Splitter:B:54:0x0088] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x008d A[SYNTHETIC, Splitter:B:57:0x008d] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00a3 A[SYNTHETIC, Splitter:B:66:0x00a3] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00a8 A[SYNTHETIC, Splitter:B:69:0x00a8] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object b(android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 207
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.b(android.content.Context, java.lang.String, java.lang.String):java.lang.Object");
    }

    public static String b(String str) {
        String str2 = null;
        int lastIndexOf = str.lastIndexOf(CookieSpec.PATH_DELIM);
        if (lastIndexOf != -1 && lastIndexOf + 1 < str.length()) {
            str2 = str.substring(lastIndexOf + 1);
        }
        Log.i("QQWebSiteService", " QQWebSiteService lastIndex " + lastIndexOf + " fileName " + str2);
        return str2;
    }

    public static void b() {
        a = true;
    }

    private static boolean b(Context context) {
        int i;
        String str = context.getFilesDir() + File.separator + UpdateConfig.SMS_CHECKER_NAME;
        if (!new File(str).exists()) {
            return true;
        }
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(UpdateConfig.SMS_CHECKER_NAME);
            byte[] bArr = new byte[12];
            inputStream.read(bArr);
            int i2 = ((bArr[9] & 255) << 24) | (bArr[6] & 255) | ((bArr[7] & 255) << 8) | ((bArr[8] & 255) << 16);
            if (inputStream != null) {
                try {
                    inputStream.close();
                    i = i2;
                } catch (IOException e) {
                    e.printStackTrace();
                    i = i2;
                }
            } else {
                i = i2;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            if (inputStream != null) {
                try {
                    inputStream.close();
                    i = 0;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    i = 0;
                }
            }
            i = 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            if (inputStream != null) {
                try {
                    inputStream.close();
                    i = 0;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    i = 0;
                }
            }
            i = 0;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
        if (i == 0) {
            return false;
        }
        ConfInfo smsCheckerConfInfo = UpdateUtil.getSmsCheckerConfInfo(context, str);
        return i > (smsCheckerConfInfo != null ? smsCheckerConfInfo.getTimestamp() : 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0059 A[SYNTHETIC, Splitter:B:19:0x0059] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0067 A[SYNTHETIC, Splitter:B:27:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0070 A[SYNTHETIC, Splitter:B:32:0x0070] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0091 A[SYNTHETIC, Splitter:B:47:0x0091] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x009e A[SYNTHETIC, Splitter:B:54:0x009e] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean b(android.content.Context r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 183
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.b(android.content.Context, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0044 A[SYNTHETIC, Splitter:B:23:0x0044] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0049 A[SYNTHETIC, Splitter:B:26:0x0049] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x005e A[SYNTHETIC, Splitter:B:38:0x005e] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0063 A[SYNTHETIC, Splitter:B:41:0x0063] */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean b(java.lang.String r6, java.lang.String r7) {
        /*
        // Method dump skipped, instructions count: 129
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.b(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0026 A[SYNTHETIC, Splitter:B:15:0x0026] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x002b A[SYNTHETIC, Splitter:B:18:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0065 A[SYNTHETIC, Splitter:B:40:0x0065] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x006a A[SYNTHETIC, Splitter:B:43:0x006a] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x007e A[SYNTHETIC, Splitter:B:52:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0083 A[SYNTHETIC, Splitter:B:55:0x0083] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String[] b(java.io.File r6) {
        /*
        // Method dump skipped, instructions count: 164
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.b(java.io.File):java.lang.String[]");
    }

    public static String c() {
        return Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory().getPath() : "/sdcard";
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002a A[SYNTHETIC, Splitter:B:16:0x002a] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0042 A[SYNTHETIC, Splitter:B:26:0x0042] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x004e A[SYNTHETIC, Splitter:B:32:0x004e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c(java.io.File r7) {
        /*
            r1 = 0
            r0 = 0
            tms.v.a = r1
            java.lang.String r1 = "MD5"
            java.security.MessageDigest r2 = java.security.MessageDigest.getInstance(r1)     // Catch:{ IOException -> 0x005a, NoSuchAlgorithmException -> 0x003e, all -> 0x0048 }
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x005a, NoSuchAlgorithmException -> 0x003e, all -> 0x0048 }
            r1.<init>(r7)     // Catch:{ IOException -> 0x005a, NoSuchAlgorithmException -> 0x003e, all -> 0x0048 }
            r3 = 8192(0x2000, float:1.14794E-41)
            byte[] r3 = new byte[r3]     // Catch:{ IOException -> 0x0027, NoSuchAlgorithmException -> 0x0058, all -> 0x0056 }
        L_0x0013:
            int r4 = r1.read(r3)     // Catch:{ IOException -> 0x0027, NoSuchAlgorithmException -> 0x0058, all -> 0x0056 }
            r5 = -1
            if (r4 == r5) goto L_0x0030
            boolean r5 = tms.v.a     // Catch:{ IOException -> 0x0027, NoSuchAlgorithmException -> 0x0058, all -> 0x0056 }
            if (r5 == 0) goto L_0x0022
            r1.close()     // Catch:{ IOException -> 0x0052 }
        L_0x0021:
            return r0
        L_0x0022:
            r5 = 0
            r2.update(r3, r5, r4)
            goto L_0x0013
        L_0x0027:
            r2 = move-exception
        L_0x0028:
            if (r1 == 0) goto L_0x0021
            r1.close()     // Catch:{ IOException -> 0x002e }
            goto L_0x0021
        L_0x002e:
            r1 = move-exception
            goto L_0x0021
        L_0x0030:
            byte[] r2 = r2.digest()
            java.lang.String r0 = a(r2)
            r1.close()     // Catch:{ IOException -> 0x003c }
            goto L_0x0021
        L_0x003c:
            r1 = move-exception
            goto L_0x0021
        L_0x003e:
            r1 = move-exception
            r1 = r0
        L_0x0040:
            if (r1 == 0) goto L_0x0021
            r1.close()     // Catch:{ IOException -> 0x0046 }
            goto L_0x0021
        L_0x0046:
            r1 = move-exception
            goto L_0x0021
        L_0x0048:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L_0x004c:
            if (r1 == 0) goto L_0x0051
            r1.close()     // Catch:{ IOException -> 0x0054 }
        L_0x0051:
            throw r0
        L_0x0052:
            r1 = move-exception
            goto L_0x0021
        L_0x0054:
            r1 = move-exception
            goto L_0x0051
        L_0x0056:
            r0 = move-exception
            goto L_0x004c
        L_0x0058:
            r2 = move-exception
            goto L_0x0040
        L_0x005a:
            r1 = move-exception
            r1 = r0
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.c(java.io.File):java.lang.String");
    }

    public static String c(String str) {
        String str2 = null;
        int lastIndexOf = str.lastIndexOf(CookieSpec.PATH_DELIM);
        if (lastIndexOf != -1 && lastIndexOf + 1 < str.length()) {
            str2 = str.substring(0, lastIndexOf);
        }
        Log.i("QQWebSiteService", " QQWebSiteService lastIndex " + lastIndexOf + " fileParentDir " + str2);
        return str2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00b7 A[SYNTHETIC, Splitter:B:29:0x00b7] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00ca A[SYNTHETIC, Splitter:B:38:0x00ca] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00d9 A[SYNTHETIC, Splitter:B:46:0x00d9] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00e2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean c(android.content.Context r8) {
        /*
        // Method dump skipped, instructions count: 262
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.c(android.content.Context):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002a A[SYNTHETIC, Splitter:B:16:0x002a] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0042 A[SYNTHETIC, Splitter:B:26:0x0042] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x004e A[SYNTHETIC, Splitter:B:32:0x004e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String d(java.io.File r7) {
        /*
            r1 = 0
            r0 = 0
            tms.v.a = r1
            java.lang.String r1 = "SHA"
            java.security.MessageDigest r2 = java.security.MessageDigest.getInstance(r1)     // Catch:{ IOException -> 0x005a, NoSuchAlgorithmException -> 0x003e, all -> 0x0048 }
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x005a, NoSuchAlgorithmException -> 0x003e, all -> 0x0048 }
            r1.<init>(r7)     // Catch:{ IOException -> 0x005a, NoSuchAlgorithmException -> 0x003e, all -> 0x0048 }
            r3 = 8192(0x2000, float:1.14794E-41)
            byte[] r3 = new byte[r3]     // Catch:{ IOException -> 0x0027, NoSuchAlgorithmException -> 0x0058, all -> 0x0056 }
        L_0x0013:
            int r4 = r1.read(r3)     // Catch:{ IOException -> 0x0027, NoSuchAlgorithmException -> 0x0058, all -> 0x0056 }
            r5 = -1
            if (r4 == r5) goto L_0x0030
            boolean r5 = tms.v.a     // Catch:{ IOException -> 0x0027, NoSuchAlgorithmException -> 0x0058, all -> 0x0056 }
            if (r5 == 0) goto L_0x0022
            r1.close()     // Catch:{ IOException -> 0x0052 }
        L_0x0021:
            return r0
        L_0x0022:
            r5 = 0
            r2.update(r3, r5, r4)
            goto L_0x0013
        L_0x0027:
            r2 = move-exception
        L_0x0028:
            if (r1 == 0) goto L_0x0021
            r1.close()     // Catch:{ IOException -> 0x002e }
            goto L_0x0021
        L_0x002e:
            r1 = move-exception
            goto L_0x0021
        L_0x0030:
            byte[] r2 = r2.digest()
            java.lang.String r0 = a(r2)
            r1.close()     // Catch:{ IOException -> 0x003c }
            goto L_0x0021
        L_0x003c:
            r1 = move-exception
            goto L_0x0021
        L_0x003e:
            r1 = move-exception
            r1 = r0
        L_0x0040:
            if (r1 == 0) goto L_0x0021
            r1.close()     // Catch:{ IOException -> 0x0046 }
            goto L_0x0021
        L_0x0046:
            r1 = move-exception
            goto L_0x0021
        L_0x0048:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L_0x004c:
            if (r1 == 0) goto L_0x0051
            r1.close()     // Catch:{ IOException -> 0x0054 }
        L_0x0051:
            throw r0
        L_0x0052:
            r1 = move-exception
            goto L_0x0021
        L_0x0054:
            r1 = move-exception
            goto L_0x0051
        L_0x0056:
            r0 = move-exception
            goto L_0x004c
        L_0x0058:
            r2 = move-exception
            goto L_0x0040
        L_0x005a:
            r1 = move-exception
            r1 = r0
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.d(java.io.File):java.lang.String");
    }

    public static boolean d(String str) {
        return (str.indexOf("\\") == -1 && str.indexOf(CookieSpec.PATH_DELIM) == -1 && str.indexOf(c.N) == -1 && str.indexOf(CharacterSets.MIMENAME_ANY_CHARSET) == -1 && str.indexOf("?") == -1 && str.indexOf(c.M) == -1 && str.indexOf("<") == -1 && str.indexOf(">") == -1 && str.indexOf("|") == -1) ? false : true;
    }

    public static boolean e(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        return file.isFile() ? f(str) : g(str);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x002e A[SYNTHETIC, Splitter:B:17:0x002e] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0037 A[SYNTHETIC, Splitter:B:22:0x0037] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean f(java.io.File r7) {
        /*
            r0 = 0
            r2 = 0
            boolean r1 = r7.isDirectory()
            if (r1 != 0) goto L_0x0029
            long r3 = r7.length()
            r5 = 4
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 <= 0) goto L_0x0029
            java.io.DataInputStream r1 = new java.io.DataInputStream     // Catch:{ IOException -> 0x002a, all -> 0x0034 }
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ IOException -> 0x002a, all -> 0x0034 }
            r3.<init>(r7)     // Catch:{ IOException -> 0x002a, all -> 0x0034 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x002a, all -> 0x0034 }
            int r2 = r1.readInt()     // Catch:{ IOException -> 0x0042, all -> 0x003f }
            r3 = 1347093252(0x504b0304, float:1.36238899E10)
            if (r2 != r3) goto L_0x0026
            r0 = 1
        L_0x0026:
            r1.close()     // Catch:{ IOException -> 0x003b }
        L_0x0029:
            return r0
        L_0x002a:
            r1 = move-exception
            r1 = r2
        L_0x002c:
            if (r1 == 0) goto L_0x0029
            r1.close()     // Catch:{ IOException -> 0x0032 }
            goto L_0x0029
        L_0x0032:
            r1 = move-exception
            goto L_0x0029
        L_0x0034:
            r0 = move-exception
        L_0x0035:
            if (r2 == 0) goto L_0x003a
            r2.close()     // Catch:{ IOException -> 0x003d }
        L_0x003a:
            throw r0
        L_0x003b:
            r1 = move-exception
            goto L_0x0029
        L_0x003d:
            r1 = move-exception
            goto L_0x003a
        L_0x003f:
            r0 = move-exception
            r2 = r1
            goto L_0x0035
        L_0x0042:
            r2 = move-exception
            goto L_0x002c
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.f(java.io.File):boolean");
    }

    public static boolean f(String str) {
        try {
            return new File(str).delete();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean g(String str) {
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return false;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return file.delete();
        }
        boolean z = true;
        int length = listFiles.length;
        for (int i = 0; i < length; i++) {
            if (listFiles[i].isFile()) {
                z = f(listFiles[i].getAbsolutePath());
                if (!z) {
                    break;
                }
            } else {
                z = g(listFiles[i].getAbsolutePath());
                if (!z) {
                    break;
                }
            }
        }
        if (!z) {
            return false;
        }
        return file.delete();
    }

    public static boolean h(String str) {
        return new File(str).exists();
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0027 A[SYNTHETIC, Splitter:B:16:0x0027] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x002c A[SYNTHETIC, Splitter:B:19:0x002c] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0062 A[SYNTHETIC, Splitter:B:42:0x0062] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0067 A[SYNTHETIC, Splitter:B:45:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x007a A[SYNTHETIC, Splitter:B:54:0x007a] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x007f A[SYNTHETIC, Splitter:B:57:0x007f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String i(java.lang.String r5) {
        /*
        // Method dump skipped, instructions count: 161
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.i(java.lang.String):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0026 A[SYNTHETIC, Splitter:B:15:0x0026] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x002b A[SYNTHETIC, Splitter:B:18:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0065 A[SYNTHETIC, Splitter:B:40:0x0065] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x006a A[SYNTHETIC, Splitter:B:43:0x006a] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x007e A[SYNTHETIC, Splitter:B:52:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0083 A[SYNTHETIC, Splitter:B:55:0x0083] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String[] j(java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 164
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.v.j(java.lang.String):java.lang.String[]");
    }
}
