package tms;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public final class fb {
    private static int a = 41;
    private static int b = 43;
    private IBinder c;

    public fb() {
        if (ah.a("android.app.admin.IDevicePolicyManager$Stub")) {
            a = ah.a("TRANSACTION_packageHasActiveAdmins", 41);
            b = ah.a("TRANSACTION_removeActiveAdmin", 43);
            this.c = ai.a("device_policy");
        }
    }

    public final boolean a(String str) {
        boolean z = false;
        if (this.c != null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("android.app.admin.IDevicePolicyManager");
                obtain.writeString(str);
                this.c.transact(a, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain.recycle();
            } catch (RemoteException e) {
                e.printStackTrace();
                obtain.recycle();
            } catch (Throwable th) {
                obtain.recycle();
                obtain2.recycle();
                throw th;
            }
            obtain2.recycle();
        }
        return z;
    }

    public final boolean b(String str) {
        if (this.c != null) {
            Intent intent = new Intent("android.app.action.DEVICE_ADMIN_ENABLED");
            intent.setPackage(str);
            List<ResolveInfo> queryBroadcastReceivers = TMSApplication.getApplicaionContext().getPackageManager().queryBroadcastReceivers(intent, 0);
            if (queryBroadcastReceivers.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                    if (resolveInfo.activityInfo.enabled) {
                        arrayList.add(String.format("service call %s %d i32 1 s16 %s s16 %s", "device_policy", Integer.valueOf(b), resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                    }
                }
                if (arrayList.size() > 0) {
                    ScriptHelper.runScriptAsRoot(arrayList);
                }
            }
        }
        return false;
    }
}
