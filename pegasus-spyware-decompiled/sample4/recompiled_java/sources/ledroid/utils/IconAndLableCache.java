package ledroid.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;

public final class IconAndLableCache {
    private static IconAndLableCache e = new IconAndLableCache();
    private final Bitmap a;
    private final HashMap<String, a> b = new HashMap<>(50);
    private Context c;
    private PackageManager d;

    /* access modifiers changed from: private */
    public static final class a {
        private Bitmap a;
        private String b;

        /* synthetic */ a(byte b2) {
            this();
        }

        private a() {
        }
    }

    private IconAndLableCache() {
        Drawable a2 = a();
        Bitmap createBitmap = Bitmap.createBitmap(Math.max(a2.getIntrinsicWidth(), 1), Math.max(a2.getIntrinsicHeight(), 1), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        a2.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
        a2.draw(canvas);
        if (Build.VERSION.SDK_INT > 10) {
            canvas.setBitmap(null);
        }
        this.a = createBitmap;
    }

    public static IconAndLableCache getIconCacheInstance(Context context) {
        if (e.c == null || e.d == null) {
            e.c = context.getApplicationContext();
            e.d = context.getPackageManager();
        }
        return e;
    }

    private Drawable a() {
        return a(Resources.getSystem(), 17301651);
    }

    private Drawable a(Resources resources, int iconId) {
        Drawable d2;
        try {
            d2 = resources.getDrawable(iconId);
        } catch (Resources.NotFoundException e2) {
            d2 = null;
        }
        return d2 != null ? d2 : a();
    }

    public final Drawable getFullResIcon(String packageName, int iconId) {
        Resources resources;
        try {
            resources = this.d.getResourcesForApplication(packageName);
        } catch (PackageManager.NameNotFoundException e2) {
            resources = null;
        }
        if (resources == null || iconId == 0) {
            return a();
        }
        return a(resources, iconId);
    }

    private Drawable a(ActivityInfo info) {
        Resources resources;
        int iconId;
        try {
            resources = this.d.getResourcesForApplication(info.applicationInfo);
        } catch (PackageManager.NameNotFoundException e2) {
            resources = null;
        }
        if (resources == null || (iconId = info.getIconResource()) == 0) {
            return a();
        }
        return a(resources, iconId);
    }

    private Drawable a(ApplicationInfo applicationInfo) {
        Resources resources;
        int iconId;
        try {
            resources = this.d.getResourcesForApplication(applicationInfo);
        } catch (PackageManager.NameNotFoundException e2) {
            resources = null;
        }
        if (resources == null || (iconId = applicationInfo.icon) == 0) {
            return a();
        }
        return a(resources, iconId);
    }

    public final void remove(String packageName) {
        synchronized (this.b) {
            this.b.remove(packageName);
        }
    }

    public final void flush() {
        synchronized (this.b) {
            this.b.clear();
        }
    }

    public final Bitmap getIcon(Intent intent) {
        Bitmap bitmap;
        synchronized (this.b) {
            ResolveInfo resolveInfo = this.d.resolveActivity(intent, 0);
            String packageName = intent.getComponent().getPackageName();
            if (resolveInfo == null || packageName == null) {
                bitmap = this.a;
            } else {
                bitmap = a(resolveInfo).a;
            }
        }
        return bitmap;
    }

    public final String getLable(Intent intent) {
        String str;
        synchronized (this.b) {
            ResolveInfo resolveInfo = this.d.resolveActivity(intent, 0);
            String packageName = intent.getComponent().getPackageName();
            if (resolveInfo == null || packageName == null) {
                str = null;
            } else {
                str = a(resolveInfo).b;
            }
        }
        return str;
    }

    public final Bitmap getIcon(ResolveInfo resolveInfo) {
        Bitmap bitmap;
        synchronized (this.b) {
            if (resolveInfo == null) {
                bitmap = null;
            } else {
                bitmap = a(resolveInfo).a;
            }
        }
        return bitmap;
    }

    public final String getLable(ResolveInfo resolveInfo) {
        String str;
        synchronized (this.b) {
            if (resolveInfo == null) {
                str = null;
            } else {
                str = a(resolveInfo).b;
            }
        }
        return str;
    }

    public final Bitmap getIcon(PackageInfo packageInfo) {
        Bitmap bitmap;
        synchronized (this.b) {
            if (packageInfo == null) {
                bitmap = null;
            } else {
                bitmap = a(packageInfo).a;
            }
        }
        return bitmap;
    }

    public final String getLable(PackageInfo packageInfo) {
        String str;
        synchronized (this.b) {
            if (packageInfo == null) {
                str = null;
            } else {
                str = a(packageInfo).b;
            }
        }
        return str;
    }

    public final Bitmap getIcon(ApplicationInfo applicationInfo) {
        Bitmap bitmap;
        synchronized (this.b) {
            if (applicationInfo == null) {
                bitmap = null;
            } else {
                bitmap = b(applicationInfo).a;
            }
        }
        return bitmap;
    }

    public final String getLable(ApplicationInfo applicationInfo) {
        String str;
        synchronized (this.b) {
            if (applicationInfo == null) {
                str = null;
            } else {
                str = b(applicationInfo).b;
            }
        }
        return str;
    }

    public final Bitmap getIcon(String packageName) {
        Bitmap bitmap;
        synchronized (this.b) {
            if (TextUtils.isEmpty(packageName)) {
                bitmap = null;
            } else {
                try {
                    bitmap = b(this.d.getApplicationInfo(packageName, 0)).a;
                } catch (PackageManager.NameNotFoundException e2) {
                    bitmap = this.a;
                }
            }
        }
        return bitmap;
    }

    public final String getLable(String packageName) {
        synchronized (this.b) {
            if (TextUtils.isEmpty(packageName)) {
                packageName = null;
            } else {
                try {
                    packageName = b(this.d.getApplicationInfo(packageName, 0)).b;
                } catch (PackageManager.NameNotFoundException e2) {
                }
            }
        }
        return packageName;
    }

    public final boolean isDefaultIcon(Bitmap icon) {
        return this.a.equals(icon);
    }

    private a a(PackageInfo packageInfo) {
        return b(packageInfo.applicationInfo);
    }

    private a b(ApplicationInfo applicationInfo) {
        String packageName = applicationInfo.packageName;
        a entry = this.b.get(packageName);
        if (entry == null) {
            entry = new a((byte) 0);
            entry.b = applicationInfo.loadLabel(this.d).toString();
            if (entry.b == null) {
                entry.b = applicationInfo.name;
            }
            entry.a = IconUtilities.createIconBitmap(a(applicationInfo), this.c);
            this.b.put(packageName, entry);
        }
        return entry;
    }

    private a a(ResolveInfo info) {
        String packageName = info.resolvePackageName != null ? info.resolvePackageName : info.activityInfo != null ? info.activityInfo.packageName : info.serviceInfo.packageName;
        a entry = this.b.get(packageName);
        if (entry == null) {
            entry = new a((byte) 0);
            entry.b = info.loadLabel(this.d).toString();
            if (entry.b == null) {
                entry.b = info.activityInfo != null ? info.activityInfo.name : info.serviceInfo.name;
            }
            entry.a = IconUtilities.createIconBitmap(a(info.activityInfo), this.c);
            this.b.put(packageName, entry);
        }
        return entry;
    }

    public final HashMap<String, Bitmap> getAllIcons() {
        HashMap<String, Bitmap> set;
        synchronized (this.b) {
            set = new HashMap<>();
            for (String key : this.b.keySet()) {
                set.put(key, this.b.get(key).a);
            }
        }
        return set;
    }
}
