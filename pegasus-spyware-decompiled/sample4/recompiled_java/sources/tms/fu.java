package tms;

import java.io.File;
import java.io.FileFilter;
import java.util.List;

/* access modifiers changed from: package-private */
public final class fu implements FileFilter {
    final /* synthetic */ List a;
    final /* synthetic */ boolean b;
    final /* synthetic */ List c;

    fu(List list, boolean z, List list2) {
        this.a = list;
        this.b = z;
        this.c = list2;
    }

    public final boolean accept(File file) {
        if (file.isDirectory() && (this.a == null || !this.a.contains(file.getAbsolutePath()))) {
            return true;
        }
        if (file.getAbsolutePath().toLowerCase().endsWith(".apk") || (this.b && (v.f(file)))) {
            this.c.add(file.getAbsolutePath());
        }
        return false;
    }
}
