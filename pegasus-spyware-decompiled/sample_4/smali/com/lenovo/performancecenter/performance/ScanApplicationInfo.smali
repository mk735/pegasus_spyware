.class public Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;
.super Ljava/lang/Object;
.source "ScanApplicationInfo.java"


# static fields
.field public static final DEFAULT_POLICY_TIME:J = 0x14L

.field public static final GET_CAN_KILL_LIST:I = 0x0

.field public static final POLICY_SETTINGS:Ljava/lang/String; = "policy_settings"

.field public static final POLICY_SWITCH:Ljava/lang/String; = "policy_switch"

.field public static final POLICY_TIME:Ljava/lang/String; = "policy_time"

.field private static f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/lenovo/performancecenter/performance/PolicyTask;

.field private c:J

.field private d:Z

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "ScanApp"

    const-string v1, "ScanApplicationInfo Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->e:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/TreeMap;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "DESIGN"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " getRunningProcesses start"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 149
    .local v5, "mapRunningProcess":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 152
    .local v9, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getUserWhiteList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v12

    .line 153
    .local v12, "userWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getLenovoHighLevelPkg(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    .local v2, "highLevelWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getWhiteListNotKillForHidden(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 157
    .local v6, "notKillHiddenAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 158
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 160
    .local v11, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_6

    .line 161
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 162
    .local v10, "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x64

    if-gt v13, v14, :cond_1

    .line 160
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v8, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 167
    .local v8, "pkgList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v13, v8

    if-ge v4, v13, :cond_0

    .line 169
    aget-object v7, v8, v4

    .line 171
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 172
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 167
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 183
    :cond_4
    iget v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v9, v7}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    .line 186
    .end local v4    # "j":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "pkgList":[Ljava/lang/String;
    .end local v10    # "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    const-string v13, "DESIGN"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " getRunningProcesses end"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object v5
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    const-string v8, "com.google.android.apps.maps"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v6

    .line 397
    :cond_1
    const-string v8, "android.permission.BIND_WALLPAPER"

    invoke-virtual {p0, v8, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    move v6, v7

    .line 398
    goto :goto_0

    .line 403
    :cond_2
    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 405
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    .line 406
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 407
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_WALLPAPER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 408
    goto :goto_0

    .line 406
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addInputMethod(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, "mInputMethodProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 424
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 425
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 426
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    return-void
.end method

.method public static getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v2, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 454
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, "it":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 458
    .local v4, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 459
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method public static getInstalledLauncher(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v2, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 439
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "it":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 443
    .local v4, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 444
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method public static getRunningAppInfo(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 15
    .param p0, "inContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 195
    const-string v11, "DESIGN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " getRunningAppInfo start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    invoke-static {p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getSoftreference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 199
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 200
    .local v4, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v4}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/TreeMap;

    move-result-object v6

    .line 202
    .local v6, "mapRunningProcess":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 203
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 204
    .local v8, "pid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 205
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x1

    .line 206
    .local v3, "inLauncher":I
    :goto_1
    invoke-static {v0, v8}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getMemInfoForPid(Landroid/content/Context;I)I

    move-result v7

    .line 207
    .local v7, "memory":I
    const-string v11, "DESIGN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " packageName == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " memory == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 210
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 211
    .local v10, "value":[I
    const/4 v11, 0x1

    aget v11, v10, v11

    add-int/2addr v7, v11

    .line 213
    .end local v10    # "value":[I
    :cond_0
    const/4 v11, 0x3

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v12, 0x1

    aput v7, v11, v12

    const/4 v12, 0x2

    aput v3, v11, v12

    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    .end local v3    # "inLauncher":I
    .end local v7    # "memory":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 215
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "pid":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v11, "DESIGN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " getRunningAppInfo end"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v5
.end method

.method public static getRunningAppInfoJustInLauncher(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 15
    .param p0, "inContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 224
    const-string v11, "DESIGN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " getRunningAppInfoJustInLauncher start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    invoke-static {p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getSoftreference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 228
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 229
    .local v4, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v4}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/TreeMap;

    move-result-object v6

    .line 231
    .local v6, "mapRunningProcess":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 233
    .local v8, "pid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 234
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x1

    .line 235
    .local v3, "inLauncher":I
    :goto_1
    const/4 v7, 0x0

    .line 236
    .local v7, "memory":I
    const/4 v11, 0x1

    if-ne v3, v11, :cond_0

    .line 237
    invoke-static {v0, v8}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getMemInfoForPid(Landroid/content/Context;I)I

    move-result v7

    .line 238
    const-string v11, "DESIGN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " packageName == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " memory == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 240
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 241
    .local v10, "value":[I
    const/4 v11, 0x1

    aget v11, v10, v11

    add-int/2addr v7, v11

    .line 244
    .end local v10    # "value":[I
    :cond_0
    const/4 v11, 0x3

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v12, 0x1

    aput v7, v11, v12

    const/4 v12, 0x2

    aput v3, v11, v12

    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 234
    .end local v3    # "inLauncher":I
    .end local v7    # "memory":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 246
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "pid":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v11, "DESIGN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " getRunningAppInfoJustInLauncher end"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v5
.end method

.method public static getRunningAppList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "inContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const-string v7, "DESIGN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getRunningAppList start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getSoftreference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 281
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 284
    .local v3, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/TreeMap;

    move-result-object v5

    .line 286
    .local v5, "mapRunningProcess":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 288
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 289
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v7, "DESIGN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getRunningAppList end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v4
.end method

.method public static getRunningAppListJustInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "inContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const-string v7, "DESIGN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getRunningAppListJustInLauncher start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getSoftreference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 259
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 260
    .local v3, "launchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/TreeMap;

    move-result-object v5

    .line 262
    .local v5, "mapRunningProcess":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 265
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 266
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v7, "DESIGN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getRunningAppListJustInLauncher end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v4
.end method

.method public static getSingleton(Landroid/content/Context;Landroid/os/Handler;)Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 67
    const-string v0, "PolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    invoke-direct {v0, p1}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    .line 70
    const-string v0, "PolicyService"

    const-string v1, "instance = new ScanApplicationInfo(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    sget-object v0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    return-object v0
.end method

.method public static killAllProcess(Landroid/os/Handler;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "cotext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v3, " -fs "

    invoke-static {p0, p2, v3, p1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    return-void

    .line 481
    :catch_0
    move-exception v3

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 482
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static killProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "cotext"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 470
    :try_start_0
    const-string v1, " -fs "

    invoke-static {p1, v1, p0}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v1

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 473
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readRunningAppInfoPolicy(Landroid/content/Context;Lcom/lenovo/performancecenter/performance/PolicyTask;)Ljava/util/HashMap;
    .locals 28
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "policyTask"    # Lcom/lenovo/performancecenter/performance/PolicyTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lenovo/performancecenter/performance/PolicyTask;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-static/range {p0 .. p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getSoftreference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 302
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, "myPkgName":Ljava/lang/String;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v24, "zhengYunXingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;>;"
    const-string v25, "activity"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 305
    .local v4, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v21

    .line 307
    .local v21, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {v7}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getUserWhiteList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v23

    .line 309
    .local v23, "userWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v19

    .line 310
    .local v19, "rPCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    .line 311
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/lenovo/performancecenter/performance/PolicyTask;->isRunning:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 383
    :cond_0
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->fileUserWhiteListPolicy(Ljava/util/HashMap;Landroid/content/Context;)V

    .line 385
    return-object v24

    .line 314
    :cond_1
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 316
    .local v20, "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_3

    .line 310
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 320
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 321
    .local v17, "pkgList":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v15, v0

    .line 322
    .local v15, "pkgCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v15, :cond_2

    .line 323
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 325
    .local v18, "pkgManager":Landroid/content/pm/PackageManager;
    :try_start_0
    aget-object v25, v17, v13

    const/16 v26, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 327
    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    aget-object v25, v17, v13

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 330
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 322
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 335
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 340
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-gtz v25, :cond_8

    .line 342
    const/4 v11, 0x0

    .line 347
    .local v11, "flag":I
    :goto_3
    const-string v6, ""

    .line 348
    .local v6, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 349
    aget-object v25, v17, v13

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 354
    :cond_6
    new-instance v22, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 356
    .local v22, "uai":Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->pid:I

    .line 357
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->uid:I

    .line 358
    aget-object v25, v17, v13

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    .line 359
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->processName:Ljava/lang/String;

    .line 360
    check-cast v6, Ljava/lang/String;

    .end local v6    # "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->label:Ljava/lang/String;

    .line 361
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->addNum()V

    .line 362
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->setImportance(J)V

    .line 363
    move-object/from16 v0, v22

    iput v11, v0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->flag:I

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 366
    .local v8, "currentTime":J
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 367
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->setForegoing(J)V

    .line 369
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->setRunningTime(J)V

    .line 370
    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->setTodayUsed(Z)V

    .line 371
    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->updateUAIRunningTimeToDatebase()V

    .line 372
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/performancecenter/performance/PolicyTask;->updatePolicyData(Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;Z)V

    .line 374
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v25, "ScanApp"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "========end========="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 376
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "currentTime":J
    .end local v11    # "flag":I
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "uai":Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;
    :catch_0
    move-exception v10

    .line 377
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 344
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v11, 0x1

    .restart local v11    # "flag":I
    goto/16 :goto_3
.end method

.method public static releaseInstance()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "PolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->f:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    .line 80
    return-void
.end method


# virtual methods
.method public initPolicyTask(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v7, 0xea60

    const/4 v3, 0x0

    .line 89
    const-string v0, "policy_settings"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 91
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-string v0, "policy_time"

    const-wide/16 v1, 0x14

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->c:J

    .line 93
    const-string v0, "policy_switch"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->d:Z

    .line 96
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->d:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a:Ljava/util/Timer;

    .line 98
    new-instance v0, Lcom/lenovo/performancecenter/performance/PolicyTask;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->e:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/performancecenter/performance/PolicyTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    .line 99
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    iget-wide v2, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->c:J

    mul-long/2addr v2, v7

    iget-wide v4, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->c:J

    mul-long/2addr v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 101
    :cond_0
    return-void
.end method

.method public restartPolicyTask(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->stopPolicyTask(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->initPolicyTask(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public stopPolicyTask(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->cancel()Z

    .line 111
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->release()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    .line 114
    :cond_0
    return-void
.end method

.method public updateConfiguration(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v0, "policy_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->c:J

    .line 124
    invoke-virtual {p0, p3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->restartPolicyTask(Landroid/content/Context;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "policy_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->d:Z

    .line 127
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->d:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0, p3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->restartPolicyTask(Landroid/content/Context;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->cancel()Z

    .line 132
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->b:Lcom/lenovo/performancecenter/performance/PolicyTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/performancecenter/performance/PolicyTask;->isRunning:Z

    .line 133
    invoke-virtual {p0, p3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->stopPolicyTask(Landroid/content/Context;)V

    goto :goto_0
.end method
