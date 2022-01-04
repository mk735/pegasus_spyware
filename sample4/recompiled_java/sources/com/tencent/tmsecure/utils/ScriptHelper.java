package com.tencent.tmsecure.utils;

import android.os.Process;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tms.hf;
import tms.l;
import tms.v;

public final class ScriptHelper {
    public static final int ROOT_GOT = 0;
    public static final String ROOT_GOT_ACTION = "com.tencent.tmsecure.root";
    public static final int ROOT_NOT_GOT = 2;
    public static final int ROOT_NOT_SUPPORT = 1;
    public static final int ROOT_NO_RESPOND = -1;
    private static boolean a = false;
    private static boolean b = false;
    private static Object c = new Object();
    private static final String d = "/dev/socket/script_socket";
    private static final String e = TMSApplication.getApplicaionContext().getPackageName();
    private static final String f = "athena_v2.dat";
    private static final boolean g;
    private static final boolean h = new File(d).exists();
    private static final int i = 30000;
    private static l j = null;

    public interface Callback {
        void onFinish(int i);
    }

    /* access modifiers changed from: package-private */
    public static final class a {
        int a;
        int b;
        int c;
        byte[] d;

        a() {
        }
    }

    /* access modifiers changed from: package-private */
    public static final class b {
        int a;
        byte[] b;

        b() {
        }
    }

    static {
        boolean z = false;
        if (v.h("/system/bin/su") || v.h("/system/xbin/su") || v.h("/sbin/su")) {
            z = true;
        }
        g = z;
    }

    private static int a() {
        String runScript = runScript(QueryPermissions.ID);
        if (runScript == null) {
            return 2;
        }
        if (runScript.contains("uid=0")) {
            return 0;
        }
        String runScript2 = runScript("su");
        if (runScript2 == null) {
            return 2;
        }
        if (runScript2.contains("Kill") || runScript2.contains("kill")) {
            return -1;
        }
        String runScript3 = runScript(QueryPermissions.ID);
        if (runScript3 == null || !runScript3.contains("uid=0")) {
            return 2;
        }
        b();
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0085 A[SYNTHETIC, Splitter:B:21:0x0085] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008a A[SYNTHETIC, Splitter:B:24:0x008a] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00e3 A[SYNTHETIC, Splitter:B:61:0x00e3] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00e8 A[SYNTHETIC, Splitter:B:64:0x00e8] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static synchronized com.tencent.tmsecure.utils.ScriptHelper.b a(com.tencent.tmsecure.utils.ScriptHelper.a r12, boolean r13) {
        /*
        // Method dump skipped, instructions count: 341
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmsecure.utils.ScriptHelper.a(com.tencent.tmsecure.utils.ScriptHelper$a, boolean):com.tencent.tmsecure.utils.ScriptHelper$b");
    }

    private static void b() {
        Set<Map.Entry<String, String>> entrySet = new ProcessBuilder(new String[0]).environment().entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : entrySet) {
            arrayList.add("export " + entry.getKey() + "=" + entry.getValue());
        }
        runScript(arrayList);
    }

    private static void c() {
        IOException e2;
        OutputStream outputStream = null;
        String a2 = v.a(TMSApplication.getApplicaionContext(), f, (String) null);
        String str = "chmod 755 " + a2 + "\n" + (a2 + " " + e + " " + Process.myUid()) + "\n";
        ProcessBuilder processBuilder = new ProcessBuilder(new String[0]);
        processBuilder.command("sh");
        try {
            processBuilder.redirectErrorStream(true);
            outputStream = processBuilder.start().getOutputStream();
            outputStream.write(str.getBytes());
            outputStream.flush();
            if (outputStream != null) {
                try {
                    outputStream.close();
                    return;
                } catch (IOException e3) {
                    e2 = e3;
                }
            } else {
                return;
            }
            e2.printStackTrace();
        } catch (IOException e4) {
            e4.printStackTrace();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e5) {
                    e2 = e5;
                }
            }
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static int canRunAtRoot() {
        return canRunAtRoot(1);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x001e, code lost:
        r2 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x001f, code lost:
        if (r2 >= r4) goto L_0x0028;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0021, code lost:
        r0 = a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0026, code lost:
        if (r0 == -1) goto L_0x0049;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0028, code lost:
        if (r0 != 0) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x002c, code lost:
        if (com.tencent.tmsecure.utils.ScriptHelper.a != false) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x002e, code lost:
        com.tencent.tmsecure.common.TMSApplication.getApplicaionContext().sendBroadcast(new android.content.Intent(com.tencent.tmsecure.utils.ScriptHelper.ROOT_GOT_ACTION));
        com.tencent.tmsecure.utils.ScriptHelper.a = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003e, code lost:
        r1 = com.tencent.tmsecure.utils.ScriptHelper.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0040, code lost:
        monitor-enter(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        com.tencent.tmsecure.utils.ScriptHelper.b = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0044, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0049, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:?, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int canRunAtRoot(int r4) {
        /*
            r1 = 1
            r0 = 0
            boolean r2 = com.tencent.tmsecure.utils.ScriptHelper.h
            if (r2 == 0) goto L_0x0007
        L_0x0006:
            return r0
        L_0x0007:
            boolean r2 = com.tencent.tmsecure.utils.ScriptHelper.g
            if (r2 != 0) goto L_0x000d
            r0 = r1
            goto L_0x0006
        L_0x000d:
            java.lang.Object r2 = com.tencent.tmsecure.utils.ScriptHelper.c
            monitor-enter(r2)
            boolean r3 = com.tencent.tmsecure.utils.ScriptHelper.b     // Catch:{ all -> 0x0017 }
            if (r3 == 0) goto L_0x001a
            r0 = 2
            monitor-exit(r2)     // Catch:{ all -> 0x0017 }
            goto L_0x0006
        L_0x0017:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L_0x001a:
            r3 = 1
            com.tencent.tmsecure.utils.ScriptHelper.b = r3
            monitor-exit(r2)
            r2 = r0
        L_0x001f:
            if (r2 >= r4) goto L_0x0028
            int r0 = a()
            r3 = -1
            if (r0 == r3) goto L_0x0049
        L_0x0028:
            if (r0 != 0) goto L_0x003e
            boolean r2 = com.tencent.tmsecure.utils.ScriptHelper.a
            if (r2 != 0) goto L_0x003e
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "com.tencent.tmsecure.root"
            r2.<init>(r3)
            android.content.Context r3 = com.tencent.tmsecure.common.TMSApplication.getApplicaionContext()
            r3.sendBroadcast(r2)
            com.tencent.tmsecure.utils.ScriptHelper.a = r1
        L_0x003e:
            java.lang.Object r1 = com.tencent.tmsecure.utils.ScriptHelper.c
            monitor-enter(r1)
            r2 = 0
            com.tencent.tmsecure.utils.ScriptHelper.b = r2     // Catch:{ all -> 0x0046 }
            monitor-exit(r1)     // Catch:{ all -> 0x0046 }
            goto L_0x0006
        L_0x0046:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        L_0x0049:
            int r2 = r2 + 1
            goto L_0x001f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmsecure.utils.ScriptHelper.canRunAtRoot(int):int");
    }

    public static void canRunAtRoot(Callback callback) {
        new hf(callback).start();
    }

    public static boolean isRootGot() {
        a aVar = new a();
        aVar.b = 1000;
        aVar.d = "id\n".getBytes();
        b a2 = a(aVar, false);
        return a2 != null && new String(a2.b).contains("uid=0");
    }

    public static boolean isSystemUid() {
        return Process.myUid() == 1000;
    }

    public static l provider() {
        return j;
    }

    public static boolean providerSupportCancelMissCall() {
        return j != null && j.a(2);
    }

    public static boolean providerSupportCpuRelative() {
        return j != null && j.a(3);
    }

    public static boolean providerSupportGetAllApkFiles() {
        return j != null && j.a(1);
    }

    public static boolean providerSupportPmRelative() {
        return j != null && j.a(4);
    }

    public static int runScript(StringBuilder sb, List<String> list) {
        String runScript = runScript(list);
        if (!(runScript == null || sb == null)) {
            sb.append(runScript);
        }
        return runScript == null ? 0 : -1;
    }

    public static int runScript(StringBuilder sb, String... strArr) {
        return runScript(sb, Arrays.asList(strArr));
    }

    public static String runScript(int i2, List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append(str).append("\n");
        }
        a aVar = new a();
        aVar.b = i2;
        aVar.d = sb.toString().getBytes();
        b a2 = a(aVar, true);
        if (a2 != null) {
            return new String(a2.b).trim();
        }
        return null;
    }

    public static String runScript(int i2, String... strArr) {
        return runScript(i2, Arrays.asList(strArr));
    }

    public static String runScript(List<String> list) {
        return runScript(30000, list);
    }

    public static String runScript(String... strArr) {
        return runScript(30000, Arrays.asList(strArr));
    }

    public static int runScriptAsRoot(StringBuilder sb, List<String> list) {
        if (canRunAtRoot() != 0) {
            return -1;
        }
        String runScript = runScript(list);
        if (!(runScript == null || sb == null)) {
            sb.append(runScript);
        }
        return runScript != null ? 0 : -1;
    }

    public static int runScriptAsRoot(StringBuilder sb, String... strArr) {
        return runScriptAsRoot(sb, Arrays.asList(strArr));
    }

    public static int runScriptAsRoot(List<String> list) {
        return runScriptAsRoot(new StringBuilder(), list);
    }

    public static int runScriptAsRoot(String... strArr) {
        return runScriptAsRoot(new StringBuilder(), Arrays.asList(strArr));
    }

    public static int runScriptIfSystemUidOrAsRoot(List<String> list) {
        return isSystemUid() ? runScript(new StringBuilder(), list) : runScriptAsRoot(list);
    }

    public static int runScriptIfSystemUidOrAsRoot(String... strArr) {
        return isSystemUid() ? runScript(new StringBuilder(), strArr) : runScriptAsRoot(strArr);
    }

    public static String[] runScriptSplitLines(String... strArr) {
        StringBuilder sb = new StringBuilder();
        runScript(sb, Arrays.asList(strArr));
        return sb.toString().trim().split("\n");
    }

    public static void setProvider(l lVar) {
        boolean z = false;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int length = stackTrace.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            if (stackTraceElement.getClass().isAssignableFrom(TMSApplication.class) && stackTraceElement.getMethodName().indexOf("init") >= 0) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            Log.e("ScriptHelper", "Unauthorized caller");
        } else {
            j = lVar;
        }
    }
}
