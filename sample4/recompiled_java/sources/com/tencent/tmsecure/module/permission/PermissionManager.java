package com.tencent.tmsecure.module.permission;

import android.content.Context;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.Log;
import java.util.List;
import tms.es;

public final class PermissionManager extends BaseManager {
    public static final int VERSION_CODE = 8;
    private es a;
    private PermissionControlConfig b;

    public interface IInitStepObserver {
        public static final int STEP_ASK_REBOOT = 2;
        public static final int STEP_CHECK_HAD_REG = 3;
        public static final int STEP_FINISH = 6;
        public static final int STEP_GET_SERVICE_BINDER = 4;
        public static final int STEP_HAD_BEEN_ROOT = 1;
        public static final int STEP_IMPORT_DATA = 5;
        public static final int STEP_OS_ARCH_CHECK = 0;

        boolean onReached(int i, boolean z);
    }

    private static Object[] a(int i) {
        Log.i(QueryPermissions.PERMISSION, "process: " + i);
        return es.a(i);
    }

    public final void addPermissionTableItem(PermissionTableItem permissionTableItem) {
        if (!isExpired()) {
            this.a.a(permissionTableItem);
        }
    }

    public final boolean canStartService() {
        if (isExpired()) {
            return false;
        }
        return this.a.d();
    }

    public final PermissionControlConfig getPermissionTable() {
        return isExpired() ? this.b : this.a.a();
    }

    public final int[] getRidByPermission(List<String> list) {
        return es.a(list);
    }

    public final void init(IInitStepObserver iInitStepObserver, PermissionControlConfig permissionControlConfig) {
        if (isExpired()) {
            this.b = permissionControlConfig;
        } else {
            this.a.a(iInitStepObserver, permissionControlConfig);
        }
    }

    public final boolean isEnable() {
        if (isExpired()) {
            return false;
        }
        return this.a.b();
    }

    public final boolean isFinishInit() {
        if (isExpired()) {
            return false;
        }
        return this.a.c();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new es();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void removePermissionTableItem(PermissionTableItem permissionTableItem) {
        if (!isExpired()) {
            this.a.b(permissionTableItem);
        }
    }

    public final void setCallback(AbsDummyServiceCallback absDummyServiceCallback) {
        if (!isExpired()) {
            this.a.a(absDummyServiceCallback);
        }
    }

    public final void setEnable(boolean z) {
        if (!isExpired()) {
            this.a.a(z);
        }
    }

    public final void updatePermissionTable(int i, int i2, int i3) {
        if (!isExpired()) {
            this.a.a(i, i2, i3);
        }
    }

    public final void updatePermissionTable(PermissionTableItem permissionTableItem) {
        if (!isExpired()) {
            this.a.c(permissionTableItem);
        }
    }
}
