package com.lenovo.lps.reaper.sdk.api;

import com.lenovo.lps.reaper.sdk.util.TLog;

public final class CustomParameterManager {
    private final CustomParameter[] a = new CustomParameter[5];
    private int b;

    public CustomParameterManager() {
        for (int i = 0; i < 5; i++) {
            this.a[i] = new CustomParameter();
        }
    }

    public final void setCustomParameter(int index, String name, String value) {
        if (CustomParameter.check(index, name, value)) {
            synchronized (this) {
                StringBuilder sb = new StringBuilder(256);
                if (sb.append(name).append(value).length() > 256) {
                    value = sb.substring(name.length(), 256).toString();
                }
                if (!this.a[index - 1].isValid()) {
                    this.b++;
                }
                this.a[index - 1].setIndex(index);
                this.a[index - 1].setName(name);
                this.a[index - 1].setValue(value);
            }
        }
    }

    public final synchronized CustomParameter[] getAllCustomParameters() {
        CustomParameter[] result;
        int i;
        result = new CustomParameter[this.b];
        CustomParameter[] arr$ = this.a;
        int len$ = arr$.length;
        int i$ = 0;
        int i2 = 0;
        while (i$ < len$) {
            CustomParameter customParameter = arr$[i$];
            if (customParameter.isValid()) {
                i = i2 + 1;
                result[i2] = customParameter;
            } else {
                i = i2;
            }
            i$++;
            i2 = i;
        }
        return result;
    }

    public final synchronized void clear() {
        for (int i = 0; i < this.a.length; i++) {
            try {
                this.a[i].reset();
            } catch (Exception e) {
                TLog.w("CustomParameterManager", "ClearCustomParameter. " + e.getMessage());
            }
        }
        this.b = 0;
        return;
    }
}
