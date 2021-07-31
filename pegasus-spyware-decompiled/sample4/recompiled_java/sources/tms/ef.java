package tms;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.tmsecure.module.plugin.IContext;
import tms.fo;

/* access modifiers changed from: package-private */
public final class ef implements IContext.ILayoutInflater {
    LayoutInflater a = LayoutInflater.from(fo.this.b);
    final /* synthetic */ fo b;
    final /* synthetic */ fo.a c;

    ef(fo.a aVar, fo foVar) {
        this.c = aVar;
        this.b = foVar;
    }

    @Override // com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater
    public final View inflate(Activity activity, int i, ViewGroup viewGroup) {
        return this.a.inflate(i, viewGroup);
    }

    @Override // com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater
    public final View inflate(Activity activity, int i, ViewGroup viewGroup, boolean z) {
        return this.a.inflate(i, viewGroup, z);
    }
}
