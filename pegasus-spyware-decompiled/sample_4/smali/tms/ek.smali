.class public final Ltms/ek;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/app/ActivityManager;

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

.field private e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

.field private f:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, -0xf

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/oom_adj"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_3
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private static a(I[I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget v1, p1, v0

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ltms/ek;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;ZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    iget-object v1, p0, Ltms/ek;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Ltms/ek;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service call activity 79 s16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltms/ek;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d()[I
    .locals 5

    const/4 v4, 0x6

    const-string v0, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-static {v0}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[,\\s]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-ne v0, v4, :cond_0

    new-array v0, v4, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x9
        0xf
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltms/ek;->d:Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    if-nez v0, :cond_0

    new-instance v0, Ltms/dk;

    iget-object v1, p0, Ltms/ek;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltms/dk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/ek;->d:Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    :cond_0
    iget-object v0, p0, Ltms/ek;->d:Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/optimize/ProcessEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/ek;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ltms/ek;->d()[I

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Ltms/ek;->a(I)I

    move-result v6

    invoke-static {v6, v4}, Ltms/ek;->a(I[I)I

    move-result v7

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v9, :cond_0

    aget-object v10, v8, v2

    const/16 v1, 0x3a

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0, v10}, Ltms/ek;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;-><init>()V

    iput-object v10, v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mProcessName:Ljava/lang/String;

    iput v6, v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPriority:I

    iput v7, v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPriorityGroup:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ltms/ek;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ltms/l;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltms/ek;->b(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ltms/ek;->a(Ljava/util/List;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;ZZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Ltms/ek;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider()Ltms/l;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ltms/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    if-eqz p2, :cond_4

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Ltms/ek;->b(Ljava/lang/String;ZZ)Z

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltms/ek;->e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    if-nez v0, :cond_0

    new-instance v0, Ltms/dm;

    iget-object v1, p0, Ltms/ek;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltms/dm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/ek;->e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    :cond_0
    iget-object v0, p0, Ltms/ek;->e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    .locals 2

    iget-object v0, p0, Ltms/ek;->f:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;

    iget-object v1, p0, Ltms/ek;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/ek;->f:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    :cond_0
    iget-object v0, p0, Ltms/ek;->f:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    return-object v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Ltms/ek;->c:Landroid/content/Context;

    iget-object v0, p0, Ltms/ek;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Ltms/ek;->a:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Ltms/ek;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Ltms/ek;->b:Landroid/app/ActivityManager;

    return-void
.end method
