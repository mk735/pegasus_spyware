package tms;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.tmsecure.module.plugin.IContext;
import tms.fo;

/* access modifiers changed from: package-private */
public final class em implements IContext.ILayoutInflater {
    final /* synthetic */ fo a;
    final /* synthetic */ fo.b b;

    em(fo.b bVar, fo foVar) {
        this.b = bVar;
        this.a = foVar;
    }

    @Override // com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater
    public final View inflate(Activity activity, int i, ViewGroup viewGroup) {
        this.b.f.a(activity, this.b.e);
        LayoutInflater from = LayoutInflater.from(activity);
        if (from.getFactory() == null) {
            from.setFactory(this.b.g);
        }
        View inflate = from.inflate(this.b.d.getXml(i), viewGroup);
        this.b.f.a();
        return inflate;
    }

    @Override // com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater
    public final View inflate(Activity activity, int i, ViewGroup viewGroup, boolean z) {
        this.b.f.a(activity, this.b.e);
        View inflate = LayoutInflater.from(activity).inflate(this.b.d.getXml(i), viewGroup, z);
        this.b.f.a();
        return inflate;
    }
}
