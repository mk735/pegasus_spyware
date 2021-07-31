package ledroid.services;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.content.Context;
import android.os.RemoteException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import ledroid.root.RootPermissionException;
import ledroid.utils.ReflectClass;

public class LedroidActivityManager extends LedroidSupport {
    private IActivityManager a;
    private ReflectClass b = new ReflectClass(IActivityManager.class);

    public LedroidActivityManager(Context ctx) {
        super(ctx);
        try {
            this.b.setInstance(getAndroidActivityManager());
        } catch (RemoteException e) {
        }
    }

    public IActivityManager getAndroidActivityManager() throws RemoteException {
        if (this.a == null) {
            this.a = ActivityManagerNative.getDefault();
        }
        return this.a;
    }

    public List<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags) throws SecurityException {
        Method getRecentTasks = this.b.getDeclaredMethod("getRecentTasks", Integer.TYPE, Integer.TYPE);
        if (getRecentTasks != null) {
            try {
                return (List) this.b.invoke(getRecentTasks, Integer.valueOf(maxNum), 0);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
                return null;
            }
        } else {
            Method getRecentTasks2 = this.b.getDeclaredMethod("getRecentTasks", Integer.TYPE, Integer.TYPE, Integer.TYPE);
            if (getRecentTasks2 == null) {
                return null;
            }
            return (List) this.b.invoke(getRecentTasks2, Integer.valueOf(maxNum), 0, 0);
        }
    }

    public void clearRecentTask(int flags) throws RootPermissionException {
        try {
            getLenovoManager().clearRecentTask(flags);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x005a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x005b, code lost:
        r0.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x005a A[ExcHandler: RemoteException (r0v0 'e' android.os.RemoteException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void forceStopPackage(java.lang.String r7) {
        /*
            r6 = this;
            ledroid.services.ILedroidService r1 = r6.getLenovoManager()     // Catch:{ RootPermissionException -> 0x0008, RemoteException -> 0x005a }
            r1.forceStopPackage(r7)     // Catch:{ RootPermissionException -> 0x0008, RemoteException -> 0x005a }
        L_0x0007:
            return
        L_0x0008:
            r1 = move-exception
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r2 = 16
            if (r1 <= r2) goto L_0x003c
            ledroid.utils.ReflectClass r1 = r6.b     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            java.lang.String r2 = "killBackgroundProcesses"
            r3 = 2
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r4 = 0
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r3[r4] = r5     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r4 = 1
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r3[r4] = r5     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r3)     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            if (r1 == 0) goto L_0x0007
            ledroid.utils.ReflectClass r2 = r6.b     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r4 = 0
            r3[r4] = r7     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r4 = 1
            r5 = 0
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r3[r4] = r5     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r2.invoke(r1, r3)     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            goto L_0x0007
        L_0x003a:
            r1 = move-exception
            goto L_0x0007
        L_0x003c:
            ledroid.utils.ReflectClass r1 = r6.b     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            java.lang.String r2 = "killBackgroundProcesses"
            r3 = 1
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r4 = 0
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r3[r4] = r5     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r3)     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            if (r1 == 0) goto L_0x0007
            ledroid.utils.ReflectClass r2 = r6.b     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r4 = 0
            r3[r4] = r7     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            r2.invoke(r1, r3)     // Catch:{ Exception -> 0x003a, RemoteException -> 0x005a }
            goto L_0x0007
        L_0x005a:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: ledroid.services.LedroidActivityManager.forceStopPackage(java.lang.String):void");
    }
}
