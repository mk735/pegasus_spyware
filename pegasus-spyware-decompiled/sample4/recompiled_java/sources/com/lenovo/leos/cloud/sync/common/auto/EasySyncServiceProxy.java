package com.lenovo.leos.cloud.sync.common.auto;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.lenovo.leos.cloud.sync.common.auto.ILesyncService;

public class EasySyncServiceProxy {
    private static ILesyncService a;
    private static ServiceConnection b;
    private static boolean c = false;

    public interface EasySyncCallback {
        void onFail(String str);

        void onFinish(BackupDiffInfo backupDiffInfo);
    }

    public static void unbind(Context context) {
        if (c) {
            context.unbindService(b);
            c = false;
        }
    }

    public static void queryContactDiffInfo(Context context, EasySyncCallback callback) {
        b = new a(callback);
        c = context.bindService(new Intent("com.lenovo.leos.cloud.sync.AUTO_SYNC"), b, 1);
    }

    private static class a implements ServiceConnection {
        private EasySyncCallback a;

        public a(EasySyncCallback callback) {
            this.a = callback;
        }

        public final void onServiceDisconnected(ComponentName name) {
            ILesyncService unused = EasySyncServiceProxy.a = null;
        }

        public final void onServiceConnected(ComponentName name, IBinder service) {
            ILesyncService unused = EasySyncServiceProxy.a = ILesyncService.Stub.asInterface(service);
            try {
                this.a.onFinish(EasySyncServiceProxy.a.getContactDiff());
            } catch (RemoteException e) {
                e.printStackTrace();
                this.a.onFail("invoke remote service failed.");
            }
        }
    }
}
