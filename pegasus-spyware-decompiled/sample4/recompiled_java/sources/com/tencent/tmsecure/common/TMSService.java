package com.tencent.tmsecure.common;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.ArrayList;
import java.util.HashMap;
import tms.k;
import tms.p;
import tms.q;

public abstract class TMSService extends Service {
    private static final HashMap<Class<?>, BaseService> a = new HashMap<>();
    private static final HashMap<Class<?>, ArrayList<BaseServiceConnection>> b = new HashMap<>();

    /* access modifiers changed from: package-private */
    public interface a {
        void a();
    }

    /* access modifiers changed from: package-private */
    public static final class b implements a {
        private Service a;

        public b(Service service) {
            this.a = service;
        }

        @Override // com.tencent.tmsecure.common.TMSService.a
        public final void a() {
            this.a.setForeground(true);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class c implements a {
        private Service a;

        public c(Service service) {
            this.a = service;
        }

        @Override // com.tencent.tmsecure.common.TMSService.a
        public final void a() {
            try {
                Notification notification = new Notification();
                notification.setLatestEventInfo(this.a, null, null, PendingIntent.getActivity(this.a, 0, new Intent(), 0));
                this.a.startForeground(Integer.MAX_VALUE, notification);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static IBinder bindService(Class<? extends BaseService> cls, BaseServiceConnection baseServiceConnection) {
        IBinder iBinder;
        synchronized (BaseService.class) {
            BaseService baseService = a.get(cls);
            if (baseService != null) {
                IBinder binder = baseService.getBinder();
                ArrayList<BaseServiceConnection> arrayList = b.get(cls);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    b.put(cls, arrayList);
                }
                arrayList.add(baseServiceConnection);
                iBinder = binder;
            } else {
                iBinder = null;
            }
        }
        return iBinder;
    }

    public static BaseService startService(BaseService baseService) {
        return startService(baseService, null);
    }

    public static BaseService startService(BaseService baseService, Intent intent) {
        synchronized (BaseService.class) {
            if (a.containsKey(baseService.getClass())) {
                a.get(baseService.getClass()).onStart(intent);
            } else {
                baseService.onCreate(TMSApplication.getApplicaionContext());
                baseService.onStart(intent);
                a.put(baseService.getClass(), baseService);
            }
        }
        return baseService;
    }

    public static void stopBackgroundService() {
        Context applicaionContext = TMSApplication.getApplicaionContext();
        applicaionContext.stopService(new Intent(applicaionContext, TMSApplication.getSecureServiceClass()));
        q.a();
    }

    public static synchronized boolean stopService(BaseService baseService) {
        boolean stopService;
        synchronized (TMSService.class) {
            stopService = stopService((Class<? extends BaseService>) baseService.getClass());
        }
        return stopService;
    }

    public static boolean stopService(Class<? extends BaseService> cls) {
        synchronized (BaseService.class) {
            if (!a.containsKey(cls)) {
                return true;
            }
            ArrayList<BaseServiceConnection> arrayList = b.get(cls);
            if (arrayList != null && arrayList.size() != 0) {
                return false;
            }
            a.get(cls).onDestory();
            a.remove(cls);
            b.remove(cls);
            return true;
        }
    }

    public static void unBindService(Class<? extends BaseService> cls, BaseServiceConnection baseServiceConnection) {
        synchronized (BaseService.class) {
            ArrayList<BaseServiceConnection> arrayList = b.get(cls);
            if (arrayList != null) {
                arrayList.remove(baseServiceConnection);
            }
        }
    }

    public final IBinder onBind(Intent intent) {
        return SDKClient.getInstance();
    }

    public void onCreate() {
        super.onCreate();
        (SDKUtil.getSDKVersion() >= 5 ? new c(this) : new b(this)).a();
        a.clear();
        b.clear();
        p.a(TMSApplication.getApplicaionContext()).a();
    }

    public void onDestroy() {
        synchronized (BaseService.class) {
            for (BaseService baseService : a.values()) {
                baseService.onDestory();
            }
            a.clear();
        }
        b.clear();
        super.onDestroy();
    }

    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        String action = intent == null ? null : intent.getAction();
        if (action == null) {
            return;
        }
        if (action.equals("com.tencent.tmsecure.action.SKIP_SMS_RECEIVED_EVENT")) {
            DataEntity dataEntity = new DataEntity(3);
            String stringExtra = intent.getStringExtra("command");
            String stringExtra2 = intent.getStringExtra(SettingUtil.DATA);
            if (stringExtra != null && stringExtra2 != null) {
                try {
                    Bundle bundle = dataEntity.bundle();
                    bundle.putString("command", stringExtra);
                    bundle.putString(SettingUtil.DATA, stringExtra2);
                    SDKClient.getInstance().sendMessage(dataEntity);
                } catch (RemoteException e) {
                    e.printStackTrace();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } else if (action.equals(q.d)) {
            new Thread(new k(this)).start();
        }
    }
}
