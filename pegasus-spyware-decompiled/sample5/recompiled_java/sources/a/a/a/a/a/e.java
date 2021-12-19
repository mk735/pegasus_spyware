package a.a.a.a.a;

import a.a.a.a.a.a.i;
import a.a.a.a.a.a.n;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public final class e implements c {
    private static final FilenameFilter d = new f();

    /* renamed from: a  reason: collision with root package name */
    private File f29a;
    private File b;
    private i c;

    public e() {
        this(System.getProperty("user.dir"));
    }

    public e(String str) {
        this.b = null;
        this.c = null;
        this.f29a = new File(str);
    }

    private void a(File file) {
        File[] listFiles = file.listFiles(new g(this));
        for (int i = 0; i < listFiles.length; i++) {
            File file2 = new File(file, listFiles[i].getName().substring(0, listFiles[i].getName().length() - 4));
            if (!listFiles[i].renameTo(file2)) {
                file2.delete();
                listFiles[i].renameTo(file2);
            }
        }
    }

    private static boolean a(char c2) {
        return Character.isJavaIdentifierPart(c2) || c2 == '-';
    }

    private void d() {
        if (this.b == null) {
            throw new l();
        }
    }

    private File[] e() {
        d();
        File[] listFiles = this.b.listFiles(d);
        if (listFiles != null) {
            return listFiles;
        }
        throw new l();
    }

    @Override // a.a.a.a.a.c
    public final k a(String str) {
        d();
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(this.b, String.valueOf(str) + ".msg"));
            int available = fileInputStream.available();
            byte[] bArr = new byte[available];
            for (int i = 0; i < available; i += fileInputStream.read(bArr, i, available - i)) {
            }
            fileInputStream.close();
            return new n(str, bArr, bArr.length);
        } catch (IOException e) {
            throw new l(e);
        }
    }

    @Override // a.a.a.a.a.c
    public final void a() {
        d();
        if (this.c != null) {
            this.c.a();
            File file = new File(this.b, ".lck");
            if (file.exists()) {
                file.delete();
            }
        }
        if (this.b.listFiles(d).length == 0) {
            this.b.delete();
        }
        this.b = null;
    }

    @Override // a.a.a.a.a.c
    public final void a(String str, k kVar) {
        d();
        File file = new File(this.b, String.valueOf(str) + ".msg");
        File file2 = new File(this.b, String.valueOf(str) + ".msg.bup");
        if (file.exists() && !file.renameTo(file2)) {
            file2.delete();
            file.renameTo(file2);
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(kVar.a(), kVar.c(), kVar.b());
            if (kVar.d() != null) {
                fileOutputStream.write(kVar.d(), kVar.f(), kVar.e());
            }
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (file2.exists()) {
                file2.delete();
            }
            if (file2.exists() && !file2.renameTo(file)) {
                file.delete();
                file2.renameTo(file);
            }
        } catch (IOException e) {
            throw new l(e);
        } catch (Throwable th) {
            if (file2.exists() && !file2.renameTo(file)) {
                file.delete();
                file2.renameTo(file);
            }
            throw th;
        }
    }

    @Override // a.a.a.a.a.c
    public final void a(String str, String str2) {
        if (!this.f29a.exists() || this.f29a.isDirectory()) {
            if (!this.f29a.exists()) {
                if (!this.f29a.mkdirs()) {
                    throw new l();
                }
            } else if (!this.f29a.canWrite()) {
                throw new l();
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (a(charAt)) {
                    stringBuffer.append(charAt);
                }
            }
            stringBuffer.append("-");
            for (int i2 = 0; i2 < str2.length(); i2++) {
                char charAt2 = str2.charAt(i2);
                if (a(charAt2)) {
                    stringBuffer.append(charAt2);
                }
            }
            this.b = new File(this.f29a, stringBuffer.toString());
            if (!this.b.exists()) {
                this.b.mkdir();
            }
            try {
                this.c = new i(new File(this.b, ".lck"));
                a(this.b);
            } catch (Exception e) {
                throw new l((byte) 0);
            }
        } else {
            throw new l();
        }
    }

    @Override // a.a.a.a.a.c
    public final Enumeration b() {
        d();
        File[] e = e();
        Vector vector = new Vector(e.length);
        for (File file : e) {
            String name = file.getName();
            vector.addElement(name.substring(0, name.length() - 4));
        }
        return vector.elements();
    }

    @Override // a.a.a.a.a.c
    public final void b(String str) {
        d();
        File file = new File(this.b, String.valueOf(str) + ".msg");
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // a.a.a.a.a.c
    public final void c() {
        File[] e;
        d();
        for (File file : e()) {
            file.delete();
        }
    }

    @Override // a.a.a.a.a.c
    public final boolean c(String str) {
        d();
        return new File(this.b, String.valueOf(str) + ".msg").exists();
    }
}
