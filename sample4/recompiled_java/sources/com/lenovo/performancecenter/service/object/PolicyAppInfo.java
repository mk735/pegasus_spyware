package com.lenovo.performancecenter.service.object;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.Drawable;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.framework.PerformanceDatabaseHelper;
import java.io.Serializable;
import java.util.ArrayList;

public class PolicyAppInfo implements Serializable {
    public static final String ANR_TYPE = "ANR";
    public static final String APP_TYPE_SYSTEM = "system";
    public static final String APP_TYPE_USER = "user";
    public static final String CRASHED_TYPE = "CRASHED";
    public static final String DescribeFromWeiYunXing = "performance.UsedAppInfo.weiyunxing";
    public static final String DescribeFromYiChang = "performance.UsedAppInfo.yichang";
    public static final String DescribeFromZhengYunXing = "performance.UsedAppInfo.zhengzaiyunxing";
    private String a;
    private boolean b;
    private boolean c;
    private boolean d;
    private long e;
    private long f;
    public int flag;
    private long g;
    private long h = -1;
    private long i = -1;
    public Drawable icon;
    private String j;
    private String k;
    private String l;
    public String label;
    protected long lastErrorTime = -1;
    private ArrayList<Float> m = new ArrayList<>();
    private Context n;
    private PackageManager o;
    public String packageName;
    public int pid;
    public String processName;
    public int uid;

    public PolicyAppInfo(int uid2, String processName2, Context context) {
        this.uid = uid2;
        this.processName = processName2;
        this.o = context.getPackageManager();
        this.n = context;
    }

    public PolicyAppInfo(String processName2, String errorCondition) {
        this.processName = processName2;
        this.k = errorCondition;
        this.lastErrorTime = System.currentTimeMillis();
    }

    public Long getTotleImpLevel() {
        long levelResult = (long) Math.floor(((double) this.g) / ((double) this.e));
        if (levelResult < 100) {
            return Long.valueOf(this.f);
        }
        return Long.valueOf(levelResult);
    }

    public void updateUAIRunningTimeToDatebase() {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(this.n.getApplicationContext());
        SQLiteDatabase db = dbh.getWritableDatabase();
        ContentValues evs = new ContentValues();
        evs.put(DatabaseTables.LAST_RUNNING_TIME, Long.valueOf(getRunningTime()));
        evs.put(DatabaseTables.LAST_FOREGROUND, Long.valueOf(getForegoing()));
        try {
            db.update(DatabaseTables.UsedAppInfo_TABLE_NAME, evs, "Package_Name= '" + this.packageName + "'", null);
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            db.close();
            dbh.close();
        }
    }

    public Long generateAppTotleImpLevel() {
        long levelResult = (long) Math.floor(((double) this.g) / ((double) this.e));
        if (levelResult < 100) {
            return Long.valueOf(this.f);
        }
        this.g = levelResult;
        this.f = levelResult;
        this.e = 1;
        return Long.valueOf(levelResult);
    }

    public int hashCode() {
        return this.packageName.hashCode();
    }

    public boolean equals(Object o2) {
        if (this.packageName.equals(((PolicyAppInfo) o2).packageName)) {
            return true;
        }
        return false;
    }

    public int compareTo(PolicyAppInfo obj) {
        if (!DataLayerManager.isInSysWhiteList(this.processName, this.n) && !DataLayerManager.isInSysWhiteList(obj.processName, this.n)) {
            return -1;
        }
        if (this.d && !obj.d) {
            return -1;
        }
        if (!this.d && obj.d) {
            return 1;
        }
        if (this.g > obj.g) {
            return 1;
        }
        if (this.g >= obj.g) {
            return 0;
        }
        return -1;
    }

    public boolean isHasStore() {
        return this.b;
    }

    public void setHasStore(boolean hasStore) {
        this.b = hasStore;
    }

    public long getImportance() {
        return this.f;
    }

    public void setImportance(long importance) {
        if (importance > 100) {
            this.f = importance;
            this.g += importance;
        } else if (importance == 100) {
            this.f = importance;
            this.g = this.e * importance;
        }
    }

    public long getNum() {
        return this.e;
    }

    public void addNum() {
        this.e++;
    }

    public long getForegoing() {
        return this.h;
    }

    public void setForegoing(long foregoing) {
        this.h = foregoing;
    }

    public long getRunningTime() {
        return this.i;
    }

    public void setRunningTime(long runningTime) {
        this.i = runningTime;
    }

    public ArrayList<Float> getCpuInfoTenTime() {
        return this.m;
    }

    public void setCpuInfoTenTime(ArrayList<Float> cpuInfoTenTime) {
        this.m = cpuInfoTenTime;
    }

    public boolean isCanUninstall() {
        return this.d;
    }

    public void setCanUninstall(boolean canUninstall) {
        this.d = canUninstall;
    }

    public boolean isTodayUsed() {
        return this.c;
    }

    public void setTodayUsed(boolean todayUsed) {
        this.c = todayUsed;
    }

    public String getAppDir() {
        return this.a;
    }

    public void setAppDir(String appDir) {
        this.a = appDir;
    }

    public long getLastErrorTime() {
        return this.lastErrorTime;
    }

    public void setLastErrorTime(long lastErrorTime2) {
        this.lastErrorTime = lastErrorTime2;
    }

    public String getLastCondition() {
        return this.k;
    }

    public void setLastCondition(String lastCondition) {
        this.k = lastCondition;
    }

    public String getLastStackTrace() {
        return this.l;
    }

    public void setLastStackTrace(String lastStackTrace) {
        this.l = lastStackTrace;
    }

    public String getLastLongMsg() {
        return this.j;
    }

    public void setLastLongMsg(String lastLongMsg) {
        this.j = lastLongMsg;
    }
}
