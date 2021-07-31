package ledroid.services;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.RemoteException;
import ledroid.root.RootPermissionException;

public class LedroidPackageManager extends LedroidSupport {
    private PackageManager a;

    public LedroidPackageManager(Context ctx) {
        super(ctx);
        this.a = ctx.getPackageManager();
    }

    public PackageManager getAndroidPackageManager() {
        return this.a;
    }

    public void setApplicationEnabledSetting(String packageName, int newState, int flags) throws RootPermissionException {
        try {
            getLenovoManager().setApplicationEnabledSetting(packageName, newState, flags);
        } catch (RemoteException e1) {
            e1.printStackTrace();
        }
    }

    public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags) throws RootPermissionException {
        try {
            getLenovoManager().setComponentEnabledSetting(componentName, newState, flags);
        } catch (RemoteException e1) {
            e1.printStackTrace();
        }
    }

    public void addPreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity) throws RootPermissionException {
        try {
            getLenovoManager().addPreferredActivity(filter, match, set, activity);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00e1, code lost:
        if ((!"file".equals(r23) && !com.lenovo.safecenter.database.AppDatabase.CONTENT.equals(r23)) != false) goto L_0x00e3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void addPreferredActivity(android.content.Intent r27, android.content.ComponentName r28) throws ledroid.root.RootPermissionException {
        /*
        // Method dump skipped, instructions count: 435
        */
        throw new UnsupportedOperationException("Method not decompiled: ledroid.services.LedroidPackageManager.addPreferredActivity(android.content.Intent, android.content.ComponentName):void");
    }

    public void clearPackagePreferredActivities(String packageName) throws RootPermissionException {
        try {
            getLenovoManager().clearPackagePreferredActivities(packageName);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void installPackage(Uri packageURI, ILedroidPackageInstallObserver observer, int flags, String installerPackageName) throws RootPermissionException {
        try {
            getLenovoManager().installPackage(packageURI, observer, flags, installerPackageName);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void deleteApplicationCacheFiles(String packageName, ILedroidPackageDataObserver observer) throws RootPermissionException {
        try {
            getLenovoManager().deleteApplicationCacheFiles(packageName, observer);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void freeStorageAndNotify(long freeStorageSize, ILedroidPackageDataObserver observer) throws RootPermissionException {
        try {
            getLenovoManager().freeStorageAndNotify(freeStorageSize, observer);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void movePackage(String packageName, ILedroidPackageMoveObserver observer, int flags) throws RootPermissionException {
        try {
            getLenovoManager().movePackage(packageName, observer, flags);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void deletePackage(String packageName, ILedroidPackageDeleteObserver observer, int flags) throws RootPermissionException {
        try {
            getLenovoManager().deletePackage(packageName, observer, flags);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
