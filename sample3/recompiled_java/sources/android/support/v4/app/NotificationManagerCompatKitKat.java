package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.lang.reflect.InvocationTargetException;

class NotificationManagerCompatKitKat {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";

    NotificationManagerCompatKitKat() {
    }

    public static boolean areNotificationsEnabled(Context context) {
        AppOpsManager appOps = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo appInfo = context.getApplicationInfo();
        String pkg = context.getApplicationContext().getPackageName();
        int uid = appInfo.uid;
        try {
            Class<?> appOpsClass = Class.forName(AppOpsManager.class.getName());
            return ((Integer) appOpsClass.getMethod(CHECK_OP_NO_THROW, new Class[]{Integer.TYPE, Integer.TYPE, String.class}).invoke(appOps, new Object[]{Integer.valueOf(((Integer) appOpsClass.getDeclaredField(OP_POST_NOTIFICATION).get(Integer.class)).intValue()), Integer.valueOf(uid), pkg})).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
            return true;
        }
    }
}
