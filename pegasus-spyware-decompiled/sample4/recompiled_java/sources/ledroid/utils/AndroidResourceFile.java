package ledroid.utils;

import android.content.res.Resources;
import java.io.File;
import java.io.InputStream;

public final class AndroidResourceFile {
    private int a = -1;
    private Resources b = null;

    public AndroidResourceFile(Resources resources, int resId) {
        this.b = resources;
        this.a = resId;
    }

    /* JADX INFO: finally extract failed */
    public final int getLength() {
        InputStream inStream = null;
        try {
            inStream = this.b.openRawResource(this.a);
            int available = inStream.available();
            FileUtils.closeIOCloseable(inStream);
            return available;
        } catch (Exception e) {
            e.printStackTrace();
            FileUtils.closeIOCloseable(inStream);
            return -1;
        } catch (Throwable th) {
            FileUtils.closeIOCloseable(inStream);
            throw th;
        }
    }

    public final boolean writeTo(String path) {
        return writeTo(new File(path));
    }

    public final boolean writeTo(File to) {
        InputStream inStream = null;
        try {
            inStream = this.b.openRawResource(this.a);
            return FileUtils.copyToFile(this.b.openRawResource(this.a), to);
        } finally {
            FileUtils.closeIOCloseable(inStream);
        }
    }
}
