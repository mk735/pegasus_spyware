package ledroid.utils;

import java.io.File;

public final class FilePathBuilder {
    private String a;

    public FilePathBuilder(String dirPath) {
        this.a = dirPath;
    }

    public FilePathBuilder(File dir) {
        this(dir.getPath());
    }

    public final FilePathBuilder getSubFile(String name) {
        return new FilePathBuilder(new File(this.a, name));
    }

    public final File getFile() {
        return new File(this.a);
    }

    public final String getPath() {
        return this.a;
    }
}
