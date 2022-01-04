package tms;

import tms.gn;

/* access modifiers changed from: package-private */
public final class fl implements gn.a {
    final /* synthetic */ gn.d a;

    fl(gn.d dVar) {
        this.a = dVar;
    }

    @Override // tms.gn.a
    public final void a(String str) {
        for (gn.b bVar : gn.this.a) {
            bVar.onPackageReinstall(str);
        }
    }
}
