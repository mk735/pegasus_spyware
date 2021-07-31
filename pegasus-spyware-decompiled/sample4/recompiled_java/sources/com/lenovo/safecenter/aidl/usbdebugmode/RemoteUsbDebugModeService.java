package com.lenovo.safecenter.aidl.usbdebugmode;

import android.app.Service;
import android.content.ContentResolver;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RemoteUsbDebugModeService extends Service {
    private final IRemoteUsbDebugModeService.Stub a = new IRemoteUsbDebugModeService.Stub() {
        /* class com.lenovo.safecenter.aidl.usbdebugmode.RemoteUsbDebugModeService.AnonymousClass1 */

        @Override // com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService
        public final boolean setUsbDebugMode(boolean isEnable) throws RemoteException {
            return RemoteUsbDebugModeService.this.a(isEnable);
        }
    };

    public void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        Log.i("wu0wu", "RemoteService onDestroy()");
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        Log.i("wu0wu", "RemoteService onBind action=" + intent.getAction());
        return this.a;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean a(final boolean isEnable) {
        ExecutorService exec = Executors.newFixedThreadPool(1);
        Future<Boolean> future = null;
        Boolean result = false;
        try {
            future = exec.submit(new Callable<Boolean>() {
                /* class com.lenovo.safecenter.aidl.usbdebugmode.RemoteUsbDebugModeService.AnonymousClass2 */

                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Boolean call() throws Exception {
                    boolean z = false;
                    int i = 0;
                    z = false;
                    if (RemoteUsbDebugModeService.this.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") == 0 && RemoteUsbDebugModeService.this.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) {
                        ContentResolver contentResolver = RemoteUsbDebugModeService.this.getContentResolver();
                        if (isEnable) {
                            i = 1;
                        }
                        z = Settings.Secure.putInt(contentResolver, "adb_enabled", i);
                    }
                    return Boolean.valueOf(z);
                }
            });
            result = future.get(300, TimeUnit.MILLISECONDS);
        } catch (TimeoutException ex) {
            future.cancel(true);
            ex.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        exec.shutdown();
        return result.booleanValue();
    }
}
