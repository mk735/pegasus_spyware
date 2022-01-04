.class public final Ltms/es;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/es$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/tmsecure/module/permission/IDummyService;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

.field private h:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Ltms/es;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltms/es;->a:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ltms/es;->b:Landroid/util/SparseArray;

    sget-object v0, Ltms/es;->b:Landroid/util/SparseArray;

    const-string v3, "activity"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Ltms/es;->b:Landroid/util/SparseArray;

    const-string v2, "isms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method static synthetic a(Ltms/es;)Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;
    .locals 1

    iget-object v0, p0, Ltms/es;->h:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    return-object v0
.end method

.method static synthetic a(Ltms/es;Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;)Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;
    .locals 0

    iput-object p1, p0, Ltms/es;->h:Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;

    return-object p1
.end method

.method private a(Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;)V
    .locals 13

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v0, "/data/data.sys.zip"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltms/es;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "apollo_libname"

    invoke-static {v4}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".so"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "/system/lib/"

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mount -o remount rw /data"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "chmod 777 /data"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "rm /data/data.sys.dex"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " > "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v3, "godEX.dat"

    iget-object v4, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v5, "permission"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v4, "aresEX.dat"

    iget-object v5, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v6, "permission"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltms/v;->a(Ljava/io/File;)V

    invoke-static {v1}, Ltms/v;->a(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v3, "godEX.dat"

    iget-object v4, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v5, "permission"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v4, "aresEX.dat"

    iget-object v5, p0, Ltms/es;->e:Landroid/content/Context;

    const-string v6, "permission"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    const-string v3, "%s %d %s hook 100 %s %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.phone"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "system_server"

    aput-object v6, v4, v5

    invoke-static {v4}, Ltms/es;->a([Ljava/lang/String;)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/NativeInterface;->dlopenAddr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/NativeInterface;->dlsymAddr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x3e9

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v10, "com.android.phone"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v1, "/data/data/com.android.phone/permission"

    invoke-static {v1}, Ltms/v;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "mkdir /data/data/com.android.phone/permission"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 777 /data/data/com.android.phone/permission"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chown "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data/com.android.phone/permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v2, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v10

    const/4 v5, 0x2

    aput-object v7, v2, v5

    const/4 v5, 0x3

    const-string v10, "/data/data/com.android.phone/permission"

    aput-object v10, v2, v5

    const/4 v5, 0x4

    aput-object v8, v2, v5

    const/4 v5, 0x5

    aput-object v9, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string v5, "/data"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    aput-object v8, v2, v4

    const/4 v4, 0x5

    aput-object v9, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    :cond_9
    const/4 v1, 0x0

    const/4 v0, 0x5

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_5
    if-ltz v1, :cond_a

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Ltms/es;->f()I

    move-result v0

    const/16 v2, 0x1e61

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_d

    :cond_a
    if-nez v0, :cond_e

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    :cond_b
    const-string v1, "chmod 777 /data/data/com.android.phone/permission"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chown "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data/com.android.phone/permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x5dc

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_e
    invoke-static {}, Ltms/es;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    goto/16 :goto_1
.end method

.method private final a(Ltms/es$a;)V
    .locals 3

    iget-boolean v0, p0, Ltms/es;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ltms/es$a;->a()V

    const-class v1, Ltms/es;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/IDummyService;

    invoke-interface {p1, v0}, Ltms/es$a;->a(Lcom/tencent/tmsecure/module/permission/IDummyService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p1}, Ltms/es$a;->b()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Ltms/es;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltms/es;->c:Z

    return p1
.end method

.method public static final a(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;->getCount()I

    move-result v0

    new-array v2, v0, [I

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const v3, 0xffff

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.CALL_PHONE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.CALL_PRIVILEGED"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    aput v4, v2, v1

    :cond_2
    const-string v0, "android.permission.SEND_SMS"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    aput v4, v2, v0

    :cond_3
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    aput v4, v2, v4

    const/4 v0, 0x3

    aput v4, v2, v0

    :cond_5
    const-string v0, "android.permission.READ_SMS"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.permission.WRITE_SMS"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    aput v4, v2, v0

    :cond_7
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v1, v2, v0

    const/16 v0, 0x8

    aput v1, v2, v0

    :cond_8
    const-string v0, "android.permission.INTERNET"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    aput v1, v2, v0

    :cond_9
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    aput v4, v2, v0

    :cond_a
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xd

    aput v4, v2, v0

    :cond_b
    const/16 v0, 0xe

    aput v4, v2, v0

    return-object v2
.end method

.method public static varargs a([Ljava/lang/String;)[I
    .locals 10

    const/4 v3, -0x1

    const/4 v1, 0x0

    array-length v0, p0

    new-array v5, v0, [I

    move v0, v1

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_0

    aput v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "ps"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-lez v0, :cond_2

    move v0, v1

    move v2, v3

    :goto_1
    array-length v4, v6

    if-ge v0, v4, :cond_8

    aget-object v4, v6, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v6, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "pid"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, v6, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, "[\\s ]+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v4, v1

    :goto_2
    array-length v8, v7

    if-ge v4, v8, :cond_1

    aget-object v8, v7, v4

    const-string v9, "pid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v4

    :cond_1
    if-eq v2, v3, :cond_5

    move v3, v2

    :cond_2
    :goto_3
    if-ltz v3, :cond_7

    const/4 v0, 0x1

    :goto_4
    array-length v2, v6

    if-ge v0, v2, :cond_7

    aget-object v2, v6, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_5
    array-length v7, p0

    if-ge v2, v7, :cond_3

    aget-object v7, p0, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "[\\s ]+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-object v5

    :cond_8
    move v3, v2

    goto :goto_3
.end method

.method public static a(I)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Ltms/es;)Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
    .locals 1

    iget-object v0, p0, Ltms/es;->g:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    return-object v0
.end method

.method private static e()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/tmsecure/module/permission/IDummyService;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ltms/es;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    sget-object v0, Ltms/es;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    sget-object v0, Ltms/es;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ltms/ai;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v0}, Ltms/ai;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/tencent/tmsecure/module/permission/IDummyService$Proxy;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecure/module/permission/IDummyService;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private f()I
    .locals 5

    const/16 v1, 0x1e61

    invoke-static {}, Ltms/es;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/IDummyService;

    const/16 v3, 0x8

    iget-object v4, p0, Ltms/es;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/tencent/tmsecure/module/permission/IDummyService;->pingDummyService(ILjava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
    .locals 1

    iget-object v0, p0, Ltms/es;->g:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    return-object v0
.end method

.method public final a(III)V
    .locals 1

    new-instance v0, Ltms/du;

    invoke-direct {v0, p0, p1, p2, p3}, Ltms/du;-><init>(Ltms/es;III)V

    invoke-direct {p0, v0}, Ltms/es;->a(Ltms/es$a;)V

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;)V
    .locals 1

    new-instance v0, Ltms/dq;

    invoke-direct {v0, p0, p1}, Ltms/dq;-><init>(Ltms/es;Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;)V

    invoke-direct {p0, v0}, Ltms/es;->a(Ltms/es$a;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Ltms/es;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Ltms/es;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    invoke-direct {p0}, Ltms/es;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, p1}, Ltms/es;->a(Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_5

    iput-object p2, p0, Ltms/es;->g:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/IDummyService;

    iget-object v2, p0, Ltms/es;->g:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/permission/IDummyService;->setPermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/permission/IDummyService;->setEnable(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/es;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/es;->c:Z

    goto :goto_0

    :sswitch_0
    invoke-static {}, Ltms/es;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ltms/es;->f:Ljava/util/HashMap;

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reboot"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/servicemanager"

    aput-object v2, v0, v1

    invoke-static {v0}, Ltms/es;->a([Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kill -9 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_2
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;->onReached(IZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x457 -> :sswitch_2
        0x1e61 -> :sswitch_0
        0x22b8 -> :sswitch_1
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1

    new-instance v0, Ltms/dr;

    invoke-direct {v0, p0, p1}, Ltms/dr;-><init>(Ltms/es;Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    invoke-direct {p0, v0}, Ltms/es;->a(Ltms/es$a;)V

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltms/es;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ltms/dy;

    invoke-direct {v0, p0, p1}, Ltms/dy;-><init>(Ltms/es;Z)V

    invoke-direct {p0, v0}, Ltms/es;->a(Ltms/es$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1

    new-instance v0, Ltms/ds;

    invoke-direct {v0, p0, p1}, Ltms/ds;-><init>(Ltms/es;Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    invoke-direct {p0, v0}, Ltms/es;->a(Ltms/es$a;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ltms/es;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltms/es;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1

    new-instance v0, Ltms/dx;

    invoke-direct {v0, p0, p1}, Ltms/dx;-><init>(Ltms/es;Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    invoke-direct {p0, v0}, Ltms/es;->a(Ltms/es$a;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ltms/es;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "linux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "arm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ltms/es;->e:Landroid/content/Context;

    return-void
.end method
