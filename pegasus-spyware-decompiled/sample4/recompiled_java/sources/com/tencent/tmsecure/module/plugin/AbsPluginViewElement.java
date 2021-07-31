package com.tencent.tmsecure.module.plugin;

import android.app.Activity;
import android.content.Intent;

public abstract class AbsPluginViewElement<T> {
    protected Activity a;

    public AbsPluginViewElement(Activity activity) {
        this.a = activity;
    }

    public final void dismiss() {
        if (this.a != null) {
            this.a.finish();
        }
    }

    public final Activity getContainer() {
        return this.a;
    }

    public abstract T getPresentContruct();

    public abstract Object onActivityMethodCall(int i, Object... objArr);

    public void setResult(int i) {
        this.a.setResult(i);
    }

    public void setResult(int i, Intent intent) {
        this.a.setResult(i, intent);
    }
}
