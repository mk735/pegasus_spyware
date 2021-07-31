package com.lenovo.safecenter.floatwindow.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.view.WindowManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;

public class FloatwindowCache extends Activity {
    public static FloatwindowCache instance;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.assist_floatwindow_cache);
        instance = this;
        Bundle bundle = getIntent().getExtras();
        boolean autoFlag = bundle.getBoolean("autoFlag");
        int value = bundle.getInt("value");
        WindowManager.LayoutParams brightnessParams = getWindow().getAttributes();
        if (!autoFlag) {
            Settings.System.putInt(getContentResolver(), "screen_brightness_mode", 0);
            Settings.System.putInt(getContentResolver(), "screen_brightness", value);
            brightnessParams.screenBrightness = ((float) value) / 255.0f;
        } else {
            Settings.System.putInt(getContentResolver(), "screen_brightness_mode", 1);
            brightnessParams.screenBrightness = -1.0f;
        }
        getWindow().setAttributes(brightnessParams);
        getWindow().setAttributes(brightnessParams);
        Intent i = new Intent();
        i.setAction("com.lenovo.safecenter.lightChanges");
        sendBroadcast(i);
        new Thread() {
            /* class com.lenovo.safecenter.floatwindow.view.FloatwindowCache.AnonymousClass1 */

            public final void run() {
                try {
                    sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                FloatwindowCache.this.finish();
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }
}
