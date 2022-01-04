package com.lenovo.performancecenter.framework;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.safecenter.R;

public class PolicyService extends Service {
    private ScanApplicationInfo a;
    private final IBinder b = new LocalBinder();
    private Handler c = new Handler() {
        /* class com.lenovo.performancecenter.framework.PolicyService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    PolicyService.a(PolicyService.this, msg.arg1, msg.arg2);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(PolicyService x0, int x1, int x2) {
        if (x1 != 0) {
            Toast toast = new Toast(x0);
            View inflate = LayoutInflater.from(x0).inflate(R.layout.toast, (ViewGroup) null);
            ((TextView) inflate.findViewById(R.id.toast_title)).setText(x0.getString(R.string.auto_clean_notifycation, new Object[]{Integer.valueOf(x1), Formatter.formatFileSize(x0, (long) x2)}));
            toast.setDuration(0);
            toast.setView(inflate);
            toast.show();
        }
    }

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public PolicyService getService() {
            return PolicyService.this;
        }
    }

    public void onCreate() {
        super.onCreate();
        Log.i("PolicyService", "PolicyService : onCreate");
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i("PolicyService", "PolicyService : onStartCommand");
        this.a = ScanApplicationInfo.getSingleton(this, this.c);
        return super.onStartCommand(intent, flags, startId);
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        Log.i("PolicyService", "PolicyService : onStart");
    }

    public IBinder onBind(Intent intent) {
        Log.i("PolicyService", "PolicyService : onBind");
        if (this.a == null) {
            this.a = ScanApplicationInfo.getSingleton(this, this.c);
        }
        return this.b;
    }

    public boolean onUnbind(Intent intent) {
        Log.i("PolicyService", "PolicyService : onUnbind");
        return super.onUnbind(intent);
    }

    public void onRebind(Intent intent) {
        super.onRebind(intent);
        Log.i("PolicyService", "PolicyService : onRebind");
    }

    public void updateConfiguration(String key, Object value, Context context) {
        this.a.updateConfiguration(key, value, context);
    }

    public void onDestroy() {
        this.a.stopPolicyTask(this);
        ScanApplicationInfo.releaseInstance();
        this.a = null;
        Log.i("PolicyService", "PolicyService : onDestroy");
        try {
            startService(new Intent(this, PolicyService.class));
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onDestroy();
    }
}
