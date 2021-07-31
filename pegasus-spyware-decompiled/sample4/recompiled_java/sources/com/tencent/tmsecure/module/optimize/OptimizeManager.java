package com.tencent.tmsecure.module.optimize;

import android.content.Context;
import android.content.pm.PackageManager;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import tms.eh;
import tms.ei;
import tms.ej;
import tms.ek;

public final class OptimizeManager extends BaseManager {
    private ek a;
    private eh b;
    private ej c;
    private ei d;

    public final boolean closeProcess(String str) throws PackageManager.NameNotFoundException {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str);
    }

    public final boolean closeProcess(String str, boolean z, boolean z2) throws PackageManager.NameNotFoundException {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str, z, z2);
    }

    public final boolean closeProcess(List<String> list) throws PackageManager.NameNotFoundException {
        if (isExpired()) {
            return false;
        }
        return this.a.a(list);
    }

    public final boolean closeProcess(List<String> list, boolean z, boolean z2) throws PackageManager.NameNotFoundException {
        do {
        } while (!isExpired());
        return false;
    }

    public final ArrayList<ProcessEntity> getAllRunningProcess(boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.a(z);
    }

    public final synchronized IAutoBootHelper getAutoBootHelper() {
        IAutoBootHelper a2;
        if (isExpired()) {
            if (this.b == null) {
                this.b = new eh();
            }
            a2 = this.b;
        } else {
            a2 = this.a.a();
        }
        return a2;
    }

    public final synchronized ICpuHelper getCpuHelper() {
        ICpuHelper c2;
        ICpuHelper c3 = this.a.c();
        if (isExpired()) {
            if (this.d == null) {
                this.d = new ei(c3);
            }
            c2 = this.d;
        } else {
            c2 = this.a.c();
        }
        return c2;
    }

    public final synchronized IMemoryHelper getMemoryHelper() {
        IMemoryHelper b2;
        IMemoryHelper b3 = this.a.b();
        if (isExpired()) {
            if (this.c == null) {
                this.c = new ej(b3);
            }
            b2 = this.c;
        } else {
            b2 = this.a.b();
        }
        return b2;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new ek();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
