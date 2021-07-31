.class public Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;
.super Ljava/lang/Object;
.source "DataLayerManagerAccelerate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static getBootCountForHealth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;-><init>()V

    .line 22
    .local v0, "dataLayer":Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;
    invoke-virtual {v0, p0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootMap(Landroid/content/Context;)Ljava/util/HashMap;

    .line 23
    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getNeedChangeToForbidJustCount()I

    move-result v1

    return v1
.end method

.method public static isAppCanBoot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 42
    new-instance v2, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v2, p0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "dbHelper":Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;
    invoke-virtual {v2}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 45
    .local v3, "readDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT * FROM BootCom WHERE pkgName=?"

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    const-string v6, "customer_state"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 49
    .local v4, "state":I
    if-ne v4, v0, :cond_0

    .line 50
    .local v0, "canBoot":Z
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    .end local v4    # "state":I
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 55
    invoke-virtual {v2}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 56
    return v0

    .end local v0    # "canBoot":Z
    .restart local v4    # "state":I
    :cond_0
    move v0, v5

    .line 49
    goto :goto_0

    .line 52
    .end local v4    # "state":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "canBoot":Z
    goto :goto_1
.end method

.method public static isManageTheBoot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "manage":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 80
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 81
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const/4 v2, 0x0

    .line 94
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 84
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v4, "com.lenovo.safebox"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.lenovo.safecenter.plugin"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 88
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAppBoot(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # [Ljava/lang/String;
    .param p2, "canBoot"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 64
    if-eqz p1, :cond_0

    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz p2, :cond_2

    .line 68
    .local v1, "wantState":I
    :goto_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;-><init>()V

    .line 69
    .local v0, "dataLayer":Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;
    aget-object v2, p1, v3

    invoke-virtual {v0, p0, v2, v1}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->updateSinglePkgDB(Landroid/content/Context;Ljava/lang/String;I)I

    .line 70
    invoke-static {p0, p1, v1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->setComponentAbleBoot(Landroid/content/Context;[Ljava/lang/String;I)V

    goto :goto_0

    .line 67
    .end local v0    # "dataLayer":Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;
    .end local v1    # "wantState":I
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public static setBootOneKeyConfigForHealth(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v1, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-direct {v1}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;-><init>()V

    .line 28
    .local v1, "dataLayer":Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;
    invoke-virtual {v1, p0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 29
    .local v0, "bootMap":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    invoke-static {p0, v0}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->setComponentAbleBoot(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 30
    invoke-virtual {v1, p0, v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->updatePkgsInBootDB(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 31
    return-void
.end method
