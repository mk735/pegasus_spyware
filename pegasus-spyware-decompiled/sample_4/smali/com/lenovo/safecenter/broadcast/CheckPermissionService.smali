.class public Lcom/lenovo/safecenter/broadcast/CheckPermissionService;
.super Landroid/app/Service;
.source "CheckPermissionService.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 400
    .local v1, "database":Lcom/lenovo/safecenter/database/AppDatabase;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getReceiveSmsPkgs()Ljava/util/List;

    move-result-object v6

    .line 401
    .local v6, "receiveSmsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 402
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 403
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_2

    .line 404
    const-string v0, ""

    .line 406
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 407
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v5, v7, v8

    .line 408
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 410
    .local v4, "pid":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "kill "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " &\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .end local v4    # "pid":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    .line 417
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;Landroid/content/Context;)V
    .locals 8
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/CheckPermissionService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v4, p1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    const-string v5, "firstBoot"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v5

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeLoadPermissions()V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "action.antivirus.init"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "/system/app/LenovoSafeCenter.apk"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v6, 0x3a73c5

    if-le v2, v6, :cond_6

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->setPreInstalledVersion(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->writeWhiteApksToFile(Landroid/content/Context;)V

    const-string v2, "lenovoapks"

    invoke-static {p1, v2}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getPreInstalledVersion()Z

    move-result v2

    invoke-static {p1, v4, v2}, Lcom/lenovo/safecenter/database/AppUtil;->batchOperateDBForBoot(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "controlsms"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const-string v2, "firstBoot"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v2, "isFirst"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "flag11"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "intercall_mode_type"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeLoadVirusDB()V

    invoke-static {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SafeCenter;->setPathUrl(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SmsCheckUtils;->init(Landroid/content/Context;)V

    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    const-string v6, "systime"

    const-string v7, "2011.09.27"

    invoke-virtual {v3, v6, v7, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "flag11"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v2, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->initWhiteSMS()V

    :cond_1
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeLoadFinish()V

    if-nez v5, :cond_7

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->obtainRoot()V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->obtainSu()V

    :goto_3
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportRootEnable()V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/CMDHelper;->whiteMountToFiles(Landroid/content/Context;)Z

    const-wide/16 v1, 0x3e8

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_4
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->updateCmcc(Landroid/content/Context;)Z

    :cond_3
    :goto_5
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyMyCmcc obtain root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/lenovo/safecenter/support/CMDHelper;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->createShell(Landroid/content/Context;)Z

    if-nez v5, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Landroid/content/Context;)V

    const-string v0, "com.lenovo.safe.powercenter"

    invoke-virtual {v4, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->enableNohideApp(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move v2, v1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->setPreInstalledVersion(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->obtainRoot()V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->whiteMountToFiles(Landroid/content/Context;)Z

    const-wide/16 v0, 0x3e8

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->updateCmcc(Landroid/content/Context;)Z

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->obtainRoot()V

    :cond_9
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->checkSu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->SocketClient(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/CheckPermissionService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/pm/PackageManager;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.lenovo.safecenter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lenovo.ideafriend"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/lenovo/safecenter/support/WhiteAppsList;->md5s:[Ljava/lang/String;

    invoke-static {v3, p3}, Lcom/lenovo/safecenter/support/WhiteAppsList;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, p5}, Lcom/lenovo/safecenter/support/WhiteAppsList;->contains(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    :try_start_0
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    const-string v3, "lenovoapks"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    const-string v3, "whitelist"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    const-string v2, "lenovoapks"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    const-string v3, "whitelist"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->initWhiteList(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_0
    const-string v0, "safecenter.system13"

    const/4 v1, 0x2

    invoke-static {v0, v1, v5, p4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    const-string v1, "lenovoapks"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v2, v0, p2, p6}, Lcom/lenovo/safecenter/database/AppUtil;->batchOperateDB(Lcom/lenovo/safecenter/database/AppDatabase;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_b
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;Landroid/content/Context;ZILjava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/CheckPermissionService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_8

    invoke-virtual {v0, p4}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteDbForUninstall(Ljava/lang/String;)V

    invoke-virtual {v0, p4, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteApp(Ljava/lang/String;I)V

    invoke-virtual {v0, p4, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteApp(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    :try_start_0
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    const-string v3, "lenovoapks"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    const-string v3, "whitelist"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    const-string v2, "whitelist"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->initWhiteList(Landroid/content/Context;)V

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    const-string v4, "lenovoapks"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    const-string v0, "safecenter.system13"

    const/4 v1, 0x2

    invoke-static {v0, v1, v6, p3}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->insertBootResolveInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_8
    :try_start_6
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "lenovoapks"

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    :cond_9
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    invoke-static {v0, v3, v1, v2}, Lcom/lenovo/safecenter/database/AppUtil;->batchOperateDB(Lcom/lenovo/safecenter/database/AppDatabase;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 137
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 55
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 57
    iput-object p0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b:Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b:Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "type":Ljava/lang/String;
    const-string v2, "init_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v2, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;-><init>(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->start()V

    .line 131
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    const-string v2, "add_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    new-instance v2, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;-><init>(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$2;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "del_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;-><init>(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
