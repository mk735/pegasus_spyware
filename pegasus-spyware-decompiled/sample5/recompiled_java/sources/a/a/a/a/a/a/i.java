package a.a.a.a.a.a;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f19a;
    private Object b;

    public i(File file) {
        if (h.a("java.nio.channels.FileLock")) {
            try {
                this.f19a = new RandomAccessFile(file, "rw");
                Object invoke = this.f19a.getClass().getMethod("getChannel", new Class[0]).invoke(this.f19a, new Object[0]);
                this.b = invoke.getClass().getMethod("tryLock", new Class[0]).invoke(invoke, new Object[0]);
                this.f19a.close();
            } catch (NoSuchMethodException e) {
                this.b = null;
            } catch (IllegalArgumentException e2) {
                this.b = null;
            } catch (IllegalAccessException e3) {
                this.b = null;
            }
        }
    }

    public final void a() {
        try {
            if (this.b != null) {
                this.b.getClass().getMethod("release", new Class[0]).invoke(this.b, new Object[0]);
            }
        } catch (Exception e) {
        }
        if (this.f19a != null) {
            try {
                this.f19a.close();
            } catch (IOException e2) {
            }
        }
    }
}
