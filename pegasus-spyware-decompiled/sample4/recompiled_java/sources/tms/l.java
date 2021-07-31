package tms;

import android.content.pm.PackageManager;
import java.io.File;
import java.util.List;

public interface l {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 0;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 3;
    public static final int i = 4;
    public static final int j = 0;
    public static final int k = 1;
    public static final int l = 2;

    List<String> a(File file, List<String> list);

    void a(int i2, int i3, boolean z);

    void a(String str) throws IllegalArgumentException;

    boolean a();

    boolean a(int i2);

    boolean a(String str, String str2, boolean z);

    int b(int i2);

    void b();

    boolean b(String str);

    void c();

    boolean c(String str) throws PackageManager.NameNotFoundException;

    String[] c(int i2);

    void d();

    void d(int i2);

    boolean d(String str) throws PackageManager.NameNotFoundException;

    String e();

    boolean e(String str);

    int f();

    boolean f(String str);

    int g();
}
