package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import java.util.ArrayList;
import java.util.List;

public final class gn extends BaseManager {
    private List<b> a = new ArrayList();
    private Context b;
    private BaseService c;

    /* access modifiers changed from: package-private */
    public interface a {
        void a(String str);
    }

    /* access modifiers changed from: package-private */
    public static final class b implements IPackageChangedListener {
        private IPackageChangedListener a;

        public b(IPackageChangedListener iPackageChangedListener) {
            this.a = iPackageChangedListener;
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof b)) {
                return false;
            }
            return this.a.getClass().equals(((b) obj).a.getClass());
        }

        @Override // com.tencent.tmsecure.module.tools.IPackageChangedListener
        public final void onPackageAdded(String str) {
            new fc(this, str).start();
        }

        @Override // com.tencent.tmsecure.module.tools.IPackageChangedListener
        public final void onPackageReinstall(String str) {
            new fe(this, str).start();
        }

        @Override // com.tencent.tmsecure.module.tools.IPackageChangedListener
        public final void onPackageRemoved(String str) {
            new fd(this, str).start();
        }
    }

    final class c extends BaseService {
        private d b;

        private c() {
        }

        /* synthetic */ c(gn gnVar, byte b2) {
            this();
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final IBinder onBind() {
            return null;
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final void onCreate(Context context) {
            super.onCreate(context);
            this.b = new d(gn.this, (byte) 0);
            this.b.a();
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final void onDestory() {
            this.b.b();
            super.onDestory();
        }
    }

    final class d extends BroadcastReceiver {
        private a b;
        private a c;
        private a d;

        private d() {
            this.b = new fg(this);
            this.c = new fh(this);
            this.d = new fl(this);
        }

        /* synthetic */ d(gn gnVar, byte b2) {
            this();
        }

        private void a(a aVar, String str) {
            new fm(this, aVar, str).start();
        }

        public final void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.setPriority(Integer.MAX_VALUE);
            intentFilter.addDataScheme("package");
            gn.this.b.registerReceiver(this, intentFilter);
        }

        public final void b() {
            gn.this.b.unregisterReceiver(this);
        }

        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            char c2 = 65535;
            if (extras != null && extras.containsKey("android.intent.extra.REPLACING")) {
                c2 = extras.getBoolean("android.intent.extra.REPLACING") ? (char) 0 : 1;
            }
            if (action.equals("android.intent.action.PACKAGE_ADDED") && c2 != 0) {
                a(this.b, intent.getDataString().substring(8));
            } else if (action.equals("android.intent.action.PACKAGE_REMOVED") && c2 != 0) {
                a(this.c, intent.getDataString().substring(8));
            } else if (action.equals("android.intent.action.PACKAGE_REPLACED")) {
                a(this.d, intent.getDataString().substring(8));
            }
        }
    }

    public final IPackageChangedListener a(IPackageChangedListener iPackageChangedListener) {
        synchronized (this.a) {
            b bVar = iPackageChangedListener != null ? new b(iPackageChangedListener) : null;
            if (bVar == null || this.a.contains(bVar)) {
                return null;
            }
            this.a.add(bVar);
            return iPackageChangedListener;
        }
    }

    public final IPackageChangedListener b(IPackageChangedListener iPackageChangedListener) {
        b bVar = new b(iPackageChangedListener);
        synchronized (this.a) {
            if (this.a.contains(bVar)) {
                this.a.remove(bVar);
            } else {
                iPackageChangedListener = null;
            }
        }
        return iPackageChangedListener;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        this.c = new c(this, (byte) 0);
        TMSService.startService(this.c, null);
    }
}
