package com.lenovo.safecenter.broadcast;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.storage.IMountService;
import android.util.Log;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class FormatSDService extends Service {
    private IMountService a;
    private boolean b = false;
    private Method c;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        this.b = true;
        Log.e("ydp", "in FormatSDService");
        this.a = b();
        new Thread() {
            /* class com.lenovo.safecenter.broadcast.FormatSDService.AnonymousClass1 */

            public final void run() {
                FormatSDService.this.formatSDcard(FormatSDService.this.getApplicationContext());
            }
        }.start();
    }

    public void formatSDcard(Context context) {
        ArrayList<String> extendStorageList = a();
        String extraExtendStorage = null;
        String innerExtendStorage = null;
        if (extendStorageList.size() == 2) {
            if (extendStorageList.get(0).equals(Environment.getExternalStorageDirectory().getPath())) {
                innerExtendStorage = Environment.getExternalStorageDirectory().getPath();
                extraExtendStorage = extendStorageList.get(1);
            } else {
                innerExtendStorage = Environment.getExternalStorageDirectory().getPath();
                extraExtendStorage = extendStorageList.get(0);
            }
        } else if (extendStorageList.size() == 1) {
            innerExtendStorage = Environment.getExternalStorageDirectory().getPath();
        }
        Log.i("ydp", "format sdcard");
        Log.i("ydp", "extraExtendStorage sdcard : " + extraExtendStorage);
        Log.i("ydp", "innerExtendStorage sdcard : " + innerExtendStorage);
        if (extraExtendStorage != null) {
            a(extraExtendStorage);
        }
        if (innerExtendStorage != null) {
            a(innerExtendStorage);
        }
        if (innerExtendStorage != null) {
            try {
                this.a.mountVolume(innerExtendStorage);
            } catch (RemoteException e) {
                Log.e("ydp", "mount error:" + e);
                e.printStackTrace();
            }
        }
        if (extraExtendStorage != null) {
            this.a.mountVolume(extraExtendStorage);
        }
        stopSelf();
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0075 A[SYNTHETIC, Splitter:B:30:0x0075] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x007a A[Catch:{ IOException -> 0x008e }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0096 A[SYNTHETIC, Splitter:B:44:0x0096] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x009b A[Catch:{ IOException -> 0x009f }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.ArrayList<java.lang.String> a() {
        /*
        // Method dump skipped, instructions count: 176
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.broadcast.FormatSDService.a():java.util.ArrayList");
    }

    private void a(String path) {
        File f = new File(path);
        try {
            this.c = this.a.getClass().getMethod("unmountVolume", String.class, Boolean.TYPE, Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            try {
                this.c = this.a.getClass().getMethod("unmountVolume", String.class, Boolean.TYPE);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            }
        }
        try {
            if (!f.exists() || this.a.getVolumeState(path).equals("removed")) {
                Log.i("ydp", path + " no found");
                return;
            }
            Log.i("ydp", "extra_sd:" + path + "   state:" + this.a.getVolumeState(path));
            Log.i("ydp", "method:" + this.c);
            if (this.c.getParameterTypes().length == 3) {
                this.c.invoke(this.a, path, false, false);
                Log.i("ydp", "unmountVolume:  3");
            } else {
                this.c.invoke(this.a, path, false);
                Log.i("ydp", "unmountVolume:  2");
            }
            int count = 0;
            while (true) {
                if (!this.b || this.a.getVolumeState(path).equals("unmounted")) {
                    break;
                }
                Thread.sleep(1000);
                if (count > 30) {
                    Log.i("ydp", "unmountVolume time out break " + path);
                    break;
                }
                count++;
            }
            this.a.formatVolume(path);
            Log.e("ydp", "format " + path + " over-----------");
        } catch (RemoteException e3) {
            e3.printStackTrace();
        } catch (IllegalArgumentException e4) {
            e4.printStackTrace();
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        } catch (InterruptedException e7) {
            e7.printStackTrace();
        }
    }

    private synchronized IMountService b() {
        if (this.a == null) {
            IBinder service = ServiceManager.getService("mount");
            if (service != null) {
                this.a = IMountService.Stub.asInterface(service);
            } else {
                Log.e("ydp", "Can't get mount service");
            }
        }
        return this.a;
    }
}
