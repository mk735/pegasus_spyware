package tms;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.plugin.AbsPluginControler;
import com.tencent.tmsecure.module.plugin.AbsPluginDatabaseFactor;
import com.tencent.tmsecure.module.plugin.IContext;
import com.tencent.tmsecure.module.plugin.IPluginDatabase;
import com.tencent.tmsecure.module.plugin.IPluginInterface;
import com.tencent.tmsecure.module.plugin.PluginEntity;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class fo extends BaseManager {
    static final /* synthetic */ boolean a = (!fo.class.desiredAssertionStatus());
    private static final HashMap<String, Constructor<?>> i = new HashMap<>();
    private Context b;
    private PackageManager c;
    private String d;
    private IContext e;
    private AbsPluginControler f;
    private ClassLoader g = IPluginInterface.class.getClassLoader();
    private final Map<String, PluginEntity> h = new HashMap();
    private boolean j;

    /* access modifiers changed from: package-private */
    public final class a implements IContext {
        private IContext.ILayoutInflater b;
        private AssetManager c;
        private Resources d;

        public a() {
            this.b = new ef(this, fo.this);
            this.c = fo.this.b.getAssets();
            this.d = fo.this.b.getResources();
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final AssetManager getAssertManager() {
            return this.c;
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final Context getContext() {
            return fo.this.b.getApplicationContext();
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final IContext.ILayoutInflater getLayoutInflater() {
            return this.b;
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final Resources getResources() {
            return this.d;
        }
    }

    /* access modifiers changed from: package-private */
    public final class b implements IContext {
        private IContext.ILayoutInflater b;
        private AssetManager c;
        private Resources d;
        private Resources.Theme e;
        private c f;
        private LayoutInflater.Factory g = new eg(this);

        public b(String str) {
            try {
                this.c = (AssetManager) AssetManager.class.newInstance();
                Method declaredMethod = AssetManager.class.getDeclaredMethod("addAssetPath", String.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.c, str);
            } catch (SecurityException e2) {
                e2.printStackTrace();
            } catch (NoSuchMethodException e3) {
                e3.printStackTrace();
            } catch (IllegalArgumentException e4) {
                e4.printStackTrace();
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            } catch (InstantiationException e7) {
                e7.printStackTrace();
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            this.f = new c((byte) 0);
            this.d = new Resources(this.c, fo.this.b.getResources().getDisplayMetrics(), fo.this.b.getResources().getConfiguration());
            this.e = this.d.newTheme();
            this.e.applyStyle(c.a, true);
            this.b = new em(this, fo.this);
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final AssetManager getAssertManager() {
            return this.c;
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final Context getContext() {
            return fo.this.b.getApplicationContext();
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final IContext.ILayoutInflater getLayoutInflater() {
            return this.b;
        }

        @Override // com.tencent.tmsecure.module.plugin.IContext
        public final Resources getResources() {
            return this.d;
        }
    }

    /* access modifiers changed from: package-private */
    public static final class c {
        static int a;
        private static Field b;
        private Activity c;
        private Resources.Theme d;

        static {
            try {
                a = Class.forName("com.android.internal.R$style").getDeclaredField("Theme").getInt(null);
                b = ContextThemeWrapper.class.getDeclaredField("mTheme");
                b.setAccessible(true);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            } catch (SecurityException e3) {
                e3.printStackTrace();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchFieldException e5) {
                e5.printStackTrace();
            }
        }

        private c() {
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        public final void a() {
            synchronized (this) {
                if (!(b == null || this.d == null)) {
                    try {
                        b.set(this.c, this.d);
                    } catch (IllegalArgumentException e) {
                        e.printStackTrace();
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    }
                }
                this.c = null;
                this.d = null;
            }
        }

        public final void a(Activity activity, Resources.Theme theme) {
            synchronized (this) {
                if (b != null) {
                    try {
                        this.c = activity;
                        this.d = (Resources.Theme) b.get(this.c);
                        b.set(this.c, theme);
                    } catch (IllegalArgumentException e) {
                        e.printStackTrace();
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    private PluginEntity a(String str) {
        PluginEntity pluginEntity;
        InstantiationException instantiationException;
        IllegalAccessException illegalAccessException;
        ClassNotFoundException classNotFoundException;
        String absolutePath = this.b.getDir("plugins_dex", 0).getAbsolutePath();
        if (new File(str).exists()) {
            PackageInfo packageArchiveInfo = this.c.getPackageArchiveInfo(str, 64);
            if (packageArchiveInfo == null) {
                return null;
            }
            b bVar = new b(str);
            String str2 = packageArchiveInfo.packageName;
            String a2 = a(bVar, "plugin_class", str2);
            String a3 = a(bVar, "plugin_name", str2);
            String a4 = a(bVar, "plugin_version", str2);
            try {
                IPluginInterface iPluginInterface = (IPluginInterface) new DexClassLoader(str, absolutePath, null, this.g).loadClass(a2).newInstance();
                iPluginInterface.onCreate(this.e, bVar, this.f);
                PluginEntity pluginEntity2 = new PluginEntity();
                try {
                    pluginEntity2.mPluginPkgName = str2;
                    pluginEntity2.mPluginFilePath = str.substring(0, str.length() - 4);
                    pluginEntity2.mPluginName = a3;
                    pluginEntity2.mPluginVerion = Integer.valueOf(a4).intValue();
                    pluginEntity2.mPluginInterface = iPluginInterface;
                    pluginEntity = pluginEntity2;
                } catch (ClassNotFoundException e2) {
                    pluginEntity = pluginEntity2;
                    classNotFoundException = e2;
                    classNotFoundException.printStackTrace();
                    return pluginEntity;
                } catch (IllegalAccessException e3) {
                    pluginEntity = pluginEntity2;
                    illegalAccessException = e3;
                    illegalAccessException.printStackTrace();
                    return pluginEntity;
                } catch (InstantiationException e4) {
                    pluginEntity = pluginEntity2;
                    instantiationException = e4;
                    instantiationException.printStackTrace();
                    return pluginEntity;
                }
            } catch (ClassNotFoundException e5) {
                classNotFoundException = e5;
                pluginEntity = null;
                classNotFoundException.printStackTrace();
                return pluginEntity;
            } catch (IllegalAccessException e6) {
                illegalAccessException = e6;
                pluginEntity = null;
                illegalAccessException.printStackTrace();
                return pluginEntity;
            } catch (InstantiationException e7) {
                instantiationException = e7;
                pluginEntity = null;
                instantiationException.printStackTrace();
                return pluginEntity;
            }
        } else {
            pluginEntity = null;
        }
        return pluginEntity;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x002b A[SYNTHETIC, Splitter:B:14:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0037 A[SYNTHETIC, Splitter:B:21:0x0037] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0040 A[SYNTHETIC, Splitter:B:27:0x0040] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(android.content.pm.Signature r3) {
        /*
            r1 = 0
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch:{ CertificateException -> 0x0024, Exception -> 0x0030, all -> 0x003c }
            byte[] r0 = r3.toByteArray()     // Catch:{ CertificateException -> 0x0024, Exception -> 0x0030, all -> 0x003c }
            r2.<init>(r0)     // Catch:{ CertificateException -> 0x0024, Exception -> 0x0030, all -> 0x003c }
            java.lang.String r0 = "X.509"
            java.security.cert.CertificateFactory r0 = java.security.cert.CertificateFactory.getInstance(r0)     // Catch:{ CertificateException -> 0x005c, Exception -> 0x005a }
            java.security.cert.Certificate r0 = r0.generateCertificate(r2)     // Catch:{ CertificateException -> 0x005c, Exception -> 0x005a }
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0     // Catch:{ CertificateException -> 0x005c, Exception -> 0x005a }
            byte[] r0 = r0.getEncoded()     // Catch:{ CertificateException -> 0x005c, Exception -> 0x005a }
            java.lang.String r0 = tms.ae.c(r0)     // Catch:{ CertificateException -> 0x005c, Exception -> 0x005a }
            if (r2 == 0) goto L_0x0023
            r2.close()     // Catch:{ IOException -> 0x0053 }
        L_0x0023:
            return r0
        L_0x0024:
            r0 = move-exception
            r2 = r1
        L_0x0026:
            r0.printStackTrace()     // Catch:{ all -> 0x0058 }
            if (r2 == 0) goto L_0x002e
            r2.close()     // Catch:{ IOException -> 0x0049 }
        L_0x002e:
            r0 = r1
            goto L_0x0023
        L_0x0030:
            r0 = move-exception
            r2 = r1
        L_0x0032:
            r0.printStackTrace()
            if (r2 == 0) goto L_0x003a
            r2.close()     // Catch:{ IOException -> 0x004e }
        L_0x003a:
            r0 = r1
            goto L_0x0023
        L_0x003c:
            r0 = move-exception
            r2 = r1
        L_0x003e:
            if (r2 == 0) goto L_0x0043
            r2.close()     // Catch:{ IOException -> 0x0044 }
        L_0x0043:
            throw r0
        L_0x0044:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0043
        L_0x0049:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x002e
        L_0x004e:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x003a
        L_0x0053:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0023
        L_0x0058:
            r0 = move-exception
            goto L_0x003e
        L_0x005a:
            r0 = move-exception
            goto L_0x0032
        L_0x005c:
            r0 = move-exception
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.fo.a(android.content.pm.Signature):java.lang.String");
    }

    private static String a(IContext iContext, String str, String str2) {
        Resources resources = iContext.getResources();
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier != 0) {
            return resources.getString(identifier);
        }
        return null;
    }

    public final AbsPluginControler a() {
        return this.f;
    }

    public final IPluginDatabase a(AbsPluginDatabaseFactor absPluginDatabaseFactor) {
        return new dz(this.b, absPluginDatabaseFactor);
    }

    public final PluginEntity a(int i2) {
        PluginEntity pluginEntity;
        synchronized (this.h) {
            Iterator<PluginEntity> it = this.h.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    pluginEntity = null;
                    break;
                }
                pluginEntity = it.next();
                if (pluginEntity.getKey() == i2) {
                    break;
                }
            }
        }
        return pluginEntity;
    }

    public final void a(AbsPluginControler absPluginControler) {
        this.f = absPluginControler;
    }

    public final synchronized List<PluginEntity> b() {
        File[] listFiles;
        if (!this.j) {
            synchronized (this.h) {
                File file = new File(TMSApplication.getStrFromEnvMap(TMSApplication.CON_PLUGIN_DIR));
                if (file.exists() && (listFiles = file.listFiles(new ee(this))) != null && listFiles.length > 0) {
                    for (File file2 : listFiles) {
                        File file3 = new File(file2.getAbsolutePath() + ".apk");
                        file2.renameTo(file3);
                        PluginEntity a2 = a(file3.getAbsolutePath());
                        file3.renameTo(file2);
                        if (a2 != null) {
                            this.h.put(file2.getAbsolutePath(), a2);
                        }
                    }
                }
            }
            this.j = true;
        }
        return new ArrayList(this.h.values());
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        this.c = this.b.getPackageManager();
        this.e = new a();
        try {
            this.d = a(this.c.getPackageInfo(this.b.getPackageName(), 64).signatures[0]);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        if (!a && this.d == null) {
            throw new AssertionError();
        }
    }
}
