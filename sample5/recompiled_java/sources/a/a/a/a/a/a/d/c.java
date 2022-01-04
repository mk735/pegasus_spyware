package a.a.a.a.a.a.d;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f8a = false;
    private DataOutputStream b;
    private ByteArrayOutputStream c;
    private FileOutputStream d;
    private File e;
    private File f;
    private int g;
    private int h;
    private int i = 0;
    private int j = 0;
    private Properties k = new Properties();
    private long l = 0;

    public c() {
        String property = System.getProperty("org.eclipse.paho.client.mqttv3.trace");
        if (property == null) {
            this.e = new File(System.getProperty("user.dir"), "mqtt-trace.properties");
        } else {
            this.e = new File(property);
        }
        a();
    }

    private boolean a() {
        if (!this.e.exists()) {
            this.k.clear();
            this.l = 0;
            this.f8a = false;
            return false;
        } else if (this.e.lastModified() == this.l) {
            return this.f8a;
        } else {
            try {
                this.k.load(new FileInputStream(this.e));
                this.l = this.e.lastModified();
                this.f = new File(this.k.getProperty("org.eclipse.paho.client.mqttv3.trace.outputName", System.getProperty("user.dir")));
                if (!this.f.exists()) {
                    this.k.clear();
                    this.l = 0;
                    this.f8a = false;
                    return false;
                }
                this.g = Integer.parseInt(this.k.getProperty("org.eclipse.paho.client.mqttv3.trace.count", "1"));
                this.h = Integer.parseInt(this.k.getProperty("org.eclipse.paho.client.mqttv3.trace.limit", "5000000"));
                b();
                if (this.d == null) {
                    this.k.clear();
                    this.l = 0;
                    this.f8a = false;
                    return false;
                }
                this.c = new ByteArrayOutputStream();
                this.b = new DataOutputStream(this.c);
                this.f8a = true;
                return true;
            } catch (Exception e2) {
                this.k.clear();
                this.l = 0;
                this.f8a = false;
                return false;
            }
        }
    }

    private void b() {
        if (this.d != null) {
            try {
                this.d.close();
            } catch (IOException e2) {
            }
            this.d = null;
        }
        this.j = 0;
        File file = new File(this.f, "mqtt-" + this.i + ".trc");
        if (file.exists()) {
            file.delete();
        }
        try {
            this.d = new FileOutputStream(file);
        } catch (FileNotFoundException e3) {
            this.f8a = false;
            this.d = null;
        }
    }

    @Override // a.a.a.a.a.a.d.b
    public final synchronized void a(d dVar) {
        synchronized (this) {
            try {
                this.b.writeShort(dVar.f9a);
                this.b.writeLong(dVar.b);
                byte b2 = dVar.c;
                if (dVar.h != null && dVar.h.length > 0) {
                    b2 = (byte) (b2 | 32);
                }
                if (dVar.g != null) {
                    b2 = (byte) (b2 | 64);
                }
                this.b.writeByte(b2);
                this.b.writeShort(dVar.d);
                this.b.writeUTF(dVar.f);
                if (dVar.h != null && dVar.h.length > 0) {
                    this.b.writeShort(dVar.h.length);
                    for (int i2 = 0; i2 < dVar.h.length; i2++) {
                        if (dVar.h[i2] != null) {
                            this.b.writeUTF(dVar.h[i2].toString());
                        } else {
                            this.b.writeUTF("null");
                        }
                    }
                }
                if (dVar.g != null) {
                    StackTraceElement[] stackTrace = dVar.g.getStackTrace();
                    this.b.writeShort(stackTrace.length + 1);
                    this.b.writeUTF(dVar.g.toString());
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        this.b.writeUTF(stackTraceElement.toString());
                    }
                }
                if (this.g > 1 && this.j + this.c.size() > this.h) {
                    this.i++;
                    if (this.i == this.g) {
                        this.i = 0;
                    }
                    b();
                }
                if (this.d != null) {
                    this.j += this.c.size();
                    this.c.writeTo(this.d);
                    this.d.flush();
                }
                this.c.reset();
            } catch (Exception e2) {
                this.f8a = false;
            }
        }
        return;
    }

    @Override // a.a.a.a.a.a.d.b
    public final boolean a(String str) {
        return this.f8a && ("on".equalsIgnoreCase(this.k.getProperty("org.eclipse.paho.client.mqttv3.trace.client.*.status")) || "on".equalsIgnoreCase(this.k.getProperty(new StringBuilder("org.eclipse.paho.client.mqttv3.trace.client.").append(str).append(".status").toString())));
    }
}
