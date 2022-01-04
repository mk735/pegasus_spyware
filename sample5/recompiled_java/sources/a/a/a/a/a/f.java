package a.a.a.a.a;

import java.io.File;
import java.io.FilenameFilter;

final class f implements FilenameFilter {
    f() {
    }

    public final boolean accept(File file, String str) {
        return str.endsWith(".msg");
    }
}
