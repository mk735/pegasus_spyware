package tms;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class m {
    public static List<Object> a(Context context, String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        try {
            Class<?> cls = Class.forName("android.content.pm.PackageParser");
            Object newInstance = cls.getConstructor(String.class).newInstance(str);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayMetrics.setToDefaults();
            Object invoke = cls.getDeclaredMethod("parsePackage", File.class, String.class, DisplayMetrics.class, Integer.TYPE).invoke(newInstance, new File(str), str, displayMetrics, 0);
            ApplicationInfo applicationInfo = (ApplicationInfo) invoke.getClass().getDeclaredField("applicationInfo").get(invoke);
            Class<?> cls2 = Class.forName("android.content.res.AssetManager");
            Object newInstance2 = cls2.getConstructor(null).newInstance(null);
            cls2.getDeclaredMethod("addAssetPath", String.class).invoke(newInstance2, str);
            Resources resources = context.getResources();
            Resources resources2 = (Resources) Resources.class.getConstructor(newInstance2.getClass(), resources.getDisplayMetrics().getClass(), resources.getConfiguration().getClass()).newInstance(newInstance2, resources.getDisplayMetrics(), resources.getConfiguration());
            CharSequence text = applicationInfo.labelRes != 0 ? resources2.getText(applicationInfo.labelRes) : null;
            arrayList.add(text != null ? text.toString() : null);
            if (z) {
                arrayList.add(applicationInfo.icon != 0 ? resources2.getDrawable(applicationInfo.icon) : null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            System.gc();
        }
        return arrayList;
    }
}
