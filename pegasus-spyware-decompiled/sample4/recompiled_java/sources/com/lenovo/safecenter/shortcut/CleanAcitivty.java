package com.lenovo.safecenter.shortcut;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Log;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;

public class CleanAcitivty extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent localIntent = getIntent();
        String action = localIntent.getAction();
        Log.i("CleanAcitivty", "getIntent().getAction() == " + action);
        if ("android.intent.action.CREATE_SHORTCUT".equals(action)) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setClassName(this, getClass().getName());
            intent.addCategory("android.intent.category.LAUNCHER");
            Intent intent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent2.putExtra("android.intent.extra.shortcut.NAME", getString(R.string.one_key_widget_clean));
            intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, R.drawable.onkey_shutcut_green));
            sendBroadcast(intent2);
            finish();
            return;
        }
        if (localIntent.getSourceBounds() != null) {
            Rect rect = localIntent.getSourceBounds();
            Log.i("CleanAcitivty", "getIntent().getSourceBounds() == " + rect.left + " " + rect.right + " " + rect.top + " " + rect.bottom);
            localIntent.putExtra(ClearnView.ONEKEY_LAUNCHER, ClearnView.ONEKEY_SHORTCUT);
            localIntent.setClass(getApplicationContext(), CleanViewService.class);
            localIntent.setSourceBounds(localIntent.getSourceBounds());
            startService(localIntent);
        }
        finish();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        Log.i("CleanAcitivty", "---> onResume");
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        Log.i("CleanAcitivty", "---> onPause");
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        Log.i("CleanAcitivty", "---> onDestroy");
        super.onDestroy();
    }
}
