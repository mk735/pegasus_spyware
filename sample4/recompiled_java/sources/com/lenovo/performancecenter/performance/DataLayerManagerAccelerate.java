package com.lenovo.performancecenter.performance;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.Drawable;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.framework.PerformanceDatabaseHelper;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.utils.Const;
import java.util.HashMap;

public class DataLayerManagerAccelerate {
    public static int getBootCountForHealth(Context context) {
        DataLayerManageBoot dataLayer = new DataLayerManageBoot();
        dataLayer.getBootMap(context);
        return dataLayer.getNeedChangeToForbidJustCount();
    }

    public static void setBootOneKeyConfigForHealth(Context context) {
        DataLayerManageBoot dataLayer = new DataLayerManageBoot();
        HashMap<String[], int[]> bootMap = dataLayer.getBootMap(context);
        RootPassage.setComponentAbleBoot(context, bootMap);
        dataLayer.updatePkgsInBootDB(context, bootMap);
    }

    public static boolean isAppCanBoot(Context context, String pkgName) {
        boolean canBoot = true;
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase readDB = dbHelper.getReadableDatabase();
        Cursor cursor = readDB.rawQuery("SELECT * FROM BootCom WHERE pkgName=?", new String[]{pkgName});
        if (cursor == null || !cursor.moveToFirst()) {
            canBoot = true;
        } else {
            if (cursor.getInt(cursor.getColumnIndex(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE)) != 1) {
                canBoot = false;
            }
            cursor.close();
        }
        readDB.close();
        dbHelper.close();
        return canBoot;
    }

    public static void setAppBoot(Context context, String[] componentName, boolean canBoot) {
        int wantState = 1;
        if (componentName != null && componentName[0] != null && componentName[1] != null) {
            if (!canBoot) {
                wantState = 2;
            }
            new DataLayerManageBoot().updateSinglePkgDB(context, componentName[0], wantState);
            RootPassage.setComponentAbleBoot(context, componentName, wantState);
        }
    }

    public static boolean isManageTheBoot(Context context, String pkgName) {
        try {
            if ((context.getPackageManager().getApplicationInfo(pkgName, 0).flags & 1) != 0 || context.getApplicationContext().getPackageName().equals(pkgName) || Const.PACKAGENAME_APP_LOCK.equals(pkgName) || NetConstant.TRAFFIC_PLUGIN.equals(pkgName)) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public static class a implements Comparable<a> {
        Drawable a;
        CharSequence b;
        String c;
        String d;
        String e;
        int f;
        int g;

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(a aVar) {
            a aVar2 = aVar;
            int i = this.f - aVar2.f;
            return i != 0 ? i : this.b.toString().compareTo(aVar2.b.toString());
        }

        public a(Drawable appIcon, CharSequence appName, String pkgName, String proName, String clsName, int state, int expertSuggest) {
            this.a = appIcon;
            this.b = appName;
            this.c = pkgName;
            this.d = proName;
            this.e = clsName;
            this.f = state;
            this.g = expertSuggest;
        }

        public final String toString() {
            return "appName:" + ((Object) this.b) + " pkgName:" + this.c + " proName:" + this.d + " clsName:" + this.e + " state:" + this.f + " expertSuggest:" + this.g;
        }

        public final int hashCode() {
            return ((this.f + 629) * 37) + this.b.hashCode();
        }

        public final boolean equals(Object o) {
            if (!(o instanceof a)) {
                return false;
            }
            a app = (a) o;
            if (this.f != app.f || !this.b.equals(app.b)) {
                return false;
            }
            return true;
        }
    }
}
