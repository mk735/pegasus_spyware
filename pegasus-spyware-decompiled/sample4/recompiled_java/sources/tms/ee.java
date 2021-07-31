package tms;

import java.io.File;
import java.io.FilenameFilter;

/* access modifiers changed from: package-private */
public final class ee implements FilenameFilter {
    final /* synthetic */ fo a;

    ee(fo foVar) {
        this.a = foVar;
    }

    public final boolean accept(File file, String str) {
        return !this.a.h.containsKey(str) && str.endsWith(".tsp");
    }
}
