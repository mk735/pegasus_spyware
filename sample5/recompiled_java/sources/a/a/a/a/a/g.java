package a.a.a.a.a;

import java.io.File;
import java.io.FileFilter;

final class g implements FileFilter {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f30a;

    g(e eVar) {
        this.f30a = eVar;
    }

    public final boolean accept(File file) {
        return file.getName().endsWith(".bup");
    }
}
