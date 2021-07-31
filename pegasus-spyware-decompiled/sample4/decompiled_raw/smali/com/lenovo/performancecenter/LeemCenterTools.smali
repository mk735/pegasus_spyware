.class public Lcom/lenovo/performancecenter/LeemCenterTools;
.super Ljava/lang/Object;
.source "LeemCenterTools.java"


# static fields
.field public static final CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field public static final IMPORTANCE_BACKGROUND:I = 0x190

.field public static final IMPORTANCE_CANNOT_STAR:I = 0x258

.field public static final IMPORTANCE_CANT_SAVE_STATE:I = 0xaa

.field public static final IMPORTANCE_EMPTY:I = 0x1f4

.field public static final IMPORTANCE_FOREGROUND:I = 0x64

.field public static final IMPORTANCE_PERCEPTIBLE:I = 0x82

.field public static final IMPORTANCE_SERVICE:I = 0x12c

.field public static final IMPORTANCE_VISIBLE:I = 0xc8

.field public static final LAST_BOOT_TIME:Ljava/lang/String; = "lastTime"

.field public static final LAST_CHECKUP_AUTOOPTIMEZE_SHAREDPREFERENCE:Ljava/lang/String; = "autooptimize"

.field public static final LAST_CHECKUP_SCORE_SHAREDPREFERENCE:Ljava/lang/String; = "lastscore"

.field public static final LAST_CHECKUP_SHAREDPREFERENCE:Ljava/lang/String; = "check"

.field public static final LAST_CHECKUP_TIME_SHAREDPREFERENCE:Ljava/lang/String; = "lasttime"

.field public static final LAST_CHECK_TIME:Ljava/lang/String; = "last_check_time"

.field public static final LAST_UPDATE_MODEL_CHECK_TIME:Ljava/lang/String; = "last_update_model_check_time"

.field public static final NOT_OFTEN_USED:I = 0x7

.field public static final UPTIME_FILE:Ljava/lang/String; = "uptime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBootCount(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "count":I
    if-nez p0, :cond_0

    .line 104
    const/4 v9, 0x0

    .line 131
    :goto_0
    return v9

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 106
    .local v5, "mPm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x258

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 109
    .local v8, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    .line 110
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v6, "maps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 112
    .local v7, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 113
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    const-string v9, "LeemCenterTools"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBootCount()...app.pkgName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "---label="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, p0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->isInSysWhiteList(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 119
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_1

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 121
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 122
    .local v2, "enableCount":I
    const/4 v9, 0x2

    if-eq v2, v9, :cond_1

    .line 123
    const-string v9, "LeemCenterTools"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "|||||||||||...app.pkgName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "---label="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "enableCount":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "maps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_2
    move v9, v1

    .line 131
    goto/16 :goto_0
.end method

.method public static getBootStartTime(Landroid/content/Context;)F
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v2, "uptime"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "currentTime"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 64
    .local v1, "time":F
    return v1
.end method

.method public static getLastBootStartTime(Landroid/content/Context;)F
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v2, "uptime"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "lastTime"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 73
    .local v1, "time":F
    return v1
.end method

.method public static writeBootStartTime(Landroid/content/Context;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/lenovo/performancecenter/LeemCenterTools;->getBootStartTime(Landroid/content/Context;)F

    move-result v2

    .line 79
    .local v2, "lastBootCost":F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v1, v4, v5

    .line 80
    .local v1, "f":F
    const-string v4, "LeemCenterTools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeBootStartTime()...lastBootCost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "---currentCost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v4, "uptime"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 83
    .local v3, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "lastTime"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 85
    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 86
    const-string v4, "lastTime"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 90
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void

    .line 88
    :cond_0
    const-string v4, "currentTime"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
