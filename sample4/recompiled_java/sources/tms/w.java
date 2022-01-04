package tms;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.tmsecure.common.ISDKClient;
import com.tencent.tmsecure.common.SDKClient;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* access modifiers changed from: package-private */
public final class w {
    private static volatile w a;
    private ArrayList<String> b = new ArrayList<>();
    private ConcurrentHashMap<String, ISDKClient> c = new ConcurrentHashMap<>();
    private Context d;
    private Looper e;
    private Handler f;
    private boolean g;

    /* access modifiers changed from: package-private */
    public static abstract class a implements ServiceConnection {
        protected ServiceInfo a;
        protected ISDKClient b;

        public a(ServiceInfo serviceInfo) {
            this.a = serviceInfo;
        }
    }

    private w(Context context) {
        this.d = context;
        this.g = d();
        if (this.g) {
            HandlerThread handlerThread = new HandlerThread(w.class.getName());
            handlerThread.start();
            this.e = handlerThread.getLooper();
            this.f = new Handler(this.e);
        }
    }

    public static w a() {
        if (a == null) {
            synchronized (w.class) {
                if (a == null) {
                    a = new w(TMSApplication.getApplicaionContext());
                }
            }
        }
        return a;
    }

    private boolean a(ServiceInfo serviceInfo) {
        return serviceInfo != null && !this.b.contains(serviceInfo.packageName) && serviceInfo.permission != null && serviceInfo.permission.equals("com.tencent.tmsecure.permission.RECEIVE_SMS") && serviceInfo.exported;
    }

    private ISDKClient b(ServiceInfo serviceInfo) {
        ISDKClient iSDKClient = this.c.get(serviceInfo.packageName);
        if (iSDKClient != null) {
            return iSDKClient;
        }
        Intent intent = new Intent();
        intent.setClassName(serviceInfo.packageName, serviceInfo.name);
        Object obj = new Object();
        Context context = this.d;
        ab abVar = new ab(this, serviceInfo, obj);
        this.f.post(new ac(this, intent, abVar));
        synchronized (obj) {
            try {
                obj.wait(5000);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        return abVar.b;
    }

    private boolean d() {
        boolean z;
        boolean z2;
        boolean z3 = true;
        try {
            PackageInfo packageInfo = this.d.getPackageManager().getPackageInfo(this.d.getPackageName(), 4100);
            String[] strArr = packageInfo.requestedPermissions;
            if (strArr != null) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    } else if (strArr[i].equals("com.tencent.tmsecure.permission.RECEIVE_SMS")) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            z = false;
            PermissionInfo[] permissionInfoArr = packageInfo.permissions;
            if (permissionInfoArr != null) {
                int length2 = permissionInfoArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length2) {
                        break;
                    } else if (permissionInfoArr[i2].name.equals("com.tencent.tmsecure.permission.RECEIVE_SMS")) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            z2 = false;
            if (packageInfo.services != null) {
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                int length3 = serviceInfoArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 < length3) {
                        ServiceInfo serviceInfo = serviceInfoArr[i3];
                        String str = serviceInfo.permission;
                        if (str != null && str.equals("com.tencent.tmsecure.permission.RECEIVE_SMS") && serviceInfo.exported) {
                            break;
                        }
                        i3++;
                    } else {
                        break;
                    }
                }
                return z & z2 & z3;
            }
            z3 = false;
            return z & z2 & z3;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final void a(String str) {
        if (!this.b.contains(str)) {
            this.b.add(str);
        }
    }

    public final ArrayList<ISDKClient> b() {
        ArrayList<ISDKClient> arrayList = new ArrayList<>();
        if (this.g) {
            List<ResolveInfo> queryIntentServices = this.d.getPackageManager().queryIntentServices(new Intent("com.tencent.tmsecure.action.SMS_RECEIVED"), 0);
            ArrayList arrayList2 = new ArrayList();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                String str = serviceInfo.packageName;
                if (!arrayList2.contains(str) && a(serviceInfo)) {
                    ISDKClient instance = str.equals(this.d.getPackageName()) ? SDKClient.getInstance() : b(serviceInfo);
                    if (instance != null) {
                        arrayList.add(instance);
                    }
                }
            }
        }
        return arrayList;
    }

    public final void b(String str) {
        if (this.b.contains(str)) {
            this.b.remove(str);
        }
    }

    public final int c() {
        int i = 0;
        if (!this.g) {
            return 1;
        }
        for (ResolveInfo resolveInfo : this.d.getPackageManager().queryIntentServices(new Intent("com.tencent.tmsecure.action.SMS_RECEIVED"), 0)) {
            i = a(resolveInfo.serviceInfo) ? i + 1 : i;
        }
        return i;
    }
}
