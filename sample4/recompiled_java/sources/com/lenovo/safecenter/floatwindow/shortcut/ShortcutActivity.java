package com.lenovo.safecenter.floatwindow.shortcut;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.view.FloatWindow;
import com.lenovo.safecenter.utils.TrackEvent;
import com.tencent.tmsecure.module.update.UpdateConfig;

public class ShortcutActivity extends Activity {
    private Context a;
    private FloatWindow b;
    private a c;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.a = this;
        if (this.c == null) {
            this.c = new a(this, (byte) 0);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.lenovo.safecenter.floatwindow.closewindow");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("com.lenovo.safecenter.floatwindow.delwindow");
            registerReceiver(this.c, intentFilter);
        }
        if ("android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction())) {
            Intent localIntent1 = new Intent("android.intent.action.MAIN");
            localIntent1.addFlags(268435456);
            localIntent1.addFlags(UpdateConfig.UPDATE_FLAG_ALL);
            localIntent1.setClass(this, ShortcutActivity.class);
            Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            localIntent2.putExtra("android.intent.extra.shortcut.NAME", getResources().getString(R.string.switcher_app_name));
            localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, R.drawable.shortcut_app_icon));
            localIntent2.putExtra("duplicate", true);
            localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
            sendBroadcast(localIntent2);
            finish();
            return;
        }
        if (FloatWindow.instanceFloatWindow != null) {
            FloatWindow.instanceFloatWindow = null;
        }
        this.b = new FloatWindow(this);
        this.b.showFloatWindow();
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(ShortcutActivity x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if ("com.lenovo.safecenter.floatwindow.closewindow".equals(intent.getAction())) {
                ShortcutActivity.this.finish();
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) && ShortcutActivity.this.b != null) {
                ShortcutActivity.this.b.delFloatWindow();
            }
            if ("com.lenovo.safecenter.floatwindow.delwindow".equals(intent.getAction()) && ShortcutActivity.this.b != null) {
                ShortcutActivity.this.b.delFloatWindow();
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            unregisterReceiver(this.c);
        }
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
