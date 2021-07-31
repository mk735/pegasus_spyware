package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetDataEntityFactory;
import com.tencent.tmsecure.module.network.TrafficEntity;
import com.tencent.tmsecure.module.networkload.NetworkloadProperties;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.File;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

public final class dt extends BaseManager {
    private static final String a = null;
    private String b = null;
    private BaseService c = new a(this, (byte) 0);
    private boolean d;
    private long e;
    private int f;
    private Context g;
    private db h;
    private final Map<String, cz> i = new HashMap();
    private IUpdateObserver j = new dc(this);
    private cw k = new cw();

    final class a extends BaseService {
        private HandlerThread b;
        private Looper c;
        private Handler d;
        private Runnable e;
        private b f;

        /* renamed from: tms.dt$a$a  reason: collision with other inner class name */
        final class RunnableC0012a implements Runnable {
            private RunnableC0012a() {
            }

            /* synthetic */ RunnableC0012a(a aVar, byte b) {
                this();
            }

            public final void run() {
                for (cz czVar : dt.this.i.values()) {
                    czVar.a();
                }
                if (dt.this.d) {
                    Handler handler = a.this.d;
                    Runnable runnable = a.this.e;
                    long j = dt.this.e;
                    Date date = new Date();
                    GregorianCalendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.add(5, 1);
                    gregorianCalendar.set(11, 0);
                    gregorianCalendar.set(12, 0);
                    gregorianCalendar.set(13, 1);
                    gregorianCalendar.set(14, 0);
                    long timeInMillis = gregorianCalendar.getTimeInMillis() - date.getTime();
                    if (timeInMillis <= j) {
                        j = timeInMillis;
                    }
                    handler.postDelayed(runnable, j);
                }
            }
        }

        private a() {
            this.e = new RunnableC0012a(this, (byte) 0);
            this.f = new b(dt.this, (byte) 0);
        }

        /* synthetic */ a(dt dtVar, byte b2) {
            this();
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final IBinder onBind() {
            return null;
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final void onCreate(Context context) {
            super.onCreate(context);
            this.b = new HandlerThread(getClass().getName());
            this.b.start();
            this.c = this.b.getLooper();
            this.d = new Handler(this.c);
            this.f.a(dt.this.g);
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final void onDestory() {
            super.onDestory();
            this.d.removeCallbacks(this.e);
            this.c.quit();
            this.f.b(dt.this.g);
        }

        @Override // com.tencent.tmsecure.common.BaseService
        public final void onStart(Intent intent) {
            super.onStart(intent);
            this.d.removeCallbacks(this.e);
            this.d.post(this.e);
        }
    }

    final class b extends BroadcastReceiver {
        private boolean b;

        private b() {
        }

        /* synthetic */ b(dt dtVar, byte b2) {
            this();
        }

        public final void a(Context context) {
            if (!this.b) {
                context.registerReceiver(this, new IntentFilter("android.intent.action.TIME_SET"));
                this.b = true;
            }
        }

        public final void b(Context context) {
            if (this.b) {
                context.unregisterReceiver(this);
                this.b = false;
            }
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.TIME_SET")) {
                for (cz czVar : dt.this.i.values()) {
                    czVar.b();
                }
            }
        }
    }

    public static String a() {
        return !new File("/proc/self/net/dev").exists() ? !new File("/proc/net/dev").exists() ? NetConstant.ERROR : "/proc/net/dev" : "/proc/self/net/dev";
    }

    /* access modifiers changed from: private */
    public int i() {
        try {
            if (v.a(this.g, a, (String) null) == null) {
                return -1;
            }
            this.h.a();
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(int i2) {
        this.f = i2;
        switch (i2) {
            case 0:
                this.e = 300000;
                return;
            case 1:
                this.e = 30000;
                return;
            case 2:
                this.e = c.ap;
                return;
            default:
                return;
        }
    }

    public final void a(long j2) {
        NetworkloadProperties.updateSelfMobileDownloadBytes(j2);
    }

    public final void a(boolean z) {
        if (z != this.d) {
            this.d = z;
            synchronized (this.i) {
                for (cz czVar : this.i.values()) {
                    czVar.a(this.d);
                }
            }
            if (this.d) {
                TMSService.startService(this.c);
            } else {
                TMSService.stopService(this.c);
            }
        }
    }

    public final void a(String[] strArr) {
        this.k.a(strArr);
        NetworkloadProperties.updateSelfMobileDownloadBytes(0);
        NetworkloadProperties.updateSelfMobileUploadBytes(0);
    }

    public final void a(String[] strArr, boolean z) {
        this.k.a(strArr, z);
    }

    public final boolean a(String str) {
        boolean z = false;
        synchronized (this.i) {
            if (this.i.containsKey(str)) {
                if (this.i.remove(str) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final boolean a(String str, INetworkInfoDao iNetworkInfoDao) {
        boolean z;
        synchronized (this.i) {
            if (!(str == null || iNetworkInfoDao == null)) {
                if (!this.i.containsKey(str)) {
                    cy cyVar = new cy(iNetworkInfoDao, this.h);
                    cyVar.a(this.d);
                    this.i.put(str, cyVar);
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public final boolean a(String str, NetDataEntityFactory netDataEntityFactory, INetworkInfoDao iNetworkInfoDao) {
        boolean z = false;
        synchronized (this.i) {
            if (str != null && netDataEntityFactory != null && iNetworkInfoDao != null) {
                cz czVar = new cz(netDataEntityFactory, iNetworkInfoDao);
                czVar.a(this.d);
                if (this.i.put(str, czVar) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final long b() {
        return this.e;
    }

    public final INetworkMonitor b(String str) {
        cz czVar;
        synchronized (this.i) {
            czVar = this.i.containsKey(str) ? this.i.get(str) : null;
        }
        return czVar;
    }

    public final void b(long j2) {
        NetworkloadProperties.updateSelfMobileUploadBytes(j2);
    }

    public final boolean b(String str, INetworkInfoDao iNetworkInfoDao) {
        boolean z;
        synchronized (this.i) {
            if (!(str == null || iNetworkInfoDao == null)) {
                if (!this.i.containsKey(str)) {
                    da daVar = new da(iNetworkInfoDao, this.h);
                    daVar.a(this.d);
                    this.i.put(str, daVar);
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public final int c() {
        return this.f;
    }

    public final TrafficEntity c(String str) {
        return this.k.a(str);
    }

    public final long d(String str) {
        return this.k.b(str);
    }

    public final boolean d() {
        return this.d;
    }

    public final long e(String str) {
        return this.k.c(str);
    }

    public final synchronized void e() {
        if (this.d) {
            for (cz czVar : this.i.values()) {
                czVar.notifyConfigChange();
            }
            if (this.c != null) {
                TMSService.startService(this.c);
            }
        }
    }

    public final long f(String str) {
        return this.k.d(str);
    }

    public final boolean f() {
        return this.k.a();
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).removeObserver(32);
        super.finalize();
    }

    public final long g() {
        return NetworkloadProperties.getSelfMobileDownloadBytes();
    }

    public final long g(String str) {
        return this.k.e(str);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    public final long h() {
        return NetworkloadProperties.getSelfMobileUploadBytes();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.g = context;
        v.a(this.g, UpdateConfig.TRAFFIC_MONITOR_CONFIG_NAME, (String) null);
        this.b = a();
        this.h = new db(this.b);
        this.h.a();
        a(0);
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).addObserver(32, this.j);
    }
}
