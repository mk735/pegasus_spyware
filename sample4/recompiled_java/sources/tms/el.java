package tms;

import com.tencent.tmsecure.module.permission.AbsDummyServiceCallback;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;

public class el extends Thread {
    final /* synthetic */ PermissionRequestInfo a;
    final /* synthetic */ AbsDummyServiceCallback b;

    public el(AbsDummyServiceCallback absDummyServiceCallback, PermissionRequestInfo permissionRequestInfo) {
        this.b = absDummyServiceCallback;
        this.a = permissionRequestInfo;
    }

    public void run() {
        try {
            this.b.onHandleAslynRequest(this.a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
