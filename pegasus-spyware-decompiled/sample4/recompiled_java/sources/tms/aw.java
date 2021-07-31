package tms;

import java.util.Comparator;
import tms.bb;

final class aw implements Comparator<bb.d> {
    final /* synthetic */ bb.c a;

    aw(bb.c cVar) {
        this.a = cVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(bb.d dVar, bb.d dVar2) {
        return Integer.valueOf(dVar.a).compareTo(Integer.valueOf(dVar2.a));
    }
}
