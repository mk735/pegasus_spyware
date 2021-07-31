package com.tencent.tmsecure.module.permission;

import android.os.RemoteException;
import com.tencent.tmsecure.module.permission.IDummyServiceCallback;
import tms.el;

public abstract class AbsDummyServiceCallback extends IDummyServiceCallback.Stub {
    public abstract void onHandleAslynRequest(PermissionRequestInfo permissionRequestInfo) throws Exception;

    /* access modifiers changed from: protected */
    public abstract int onHandleSyncRequest(PermissionRequestInfo permissionRequestInfo) throws Exception;

    @Override // com.tencent.tmsecure.module.permission.IDummyServiceCallback
    public final int onRequest(PermissionRequestInfo permissionRequestInfo) throws RemoteException {
        if (permissionRequestInfo.mValue == 1 || permissionRequestInfo.mValue == 0) {
            new el(this, permissionRequestInfo).start();
            return 0;
        } else if (permissionRequestInfo.mValue != 2) {
            return 0;
        } else {
            try {
                return onHandleSyncRequest(permissionRequestInfo);
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
    }
}
