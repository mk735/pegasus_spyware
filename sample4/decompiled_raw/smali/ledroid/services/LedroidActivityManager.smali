.class public Lledroid/services/LedroidActivityManager;
.super Lledroid/services/LedroidSupport;
.source "LedroidActivityManager.java"


# instance fields
.field private a:Landroid/app/IActivityManager;

.field private b:Lledroid/utils/ReflectClass;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lledroid/services/LedroidSupport;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lledroid/utils/ReflectClass;

    const-class v1, Landroid/app/IActivityManager;

    invoke-direct {v0, v1}, Lledroid/utils/ReflectClass;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    .line 24
    :try_start_0
    iget-object v0, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    invoke-virtual {p0}, Lledroid/services/LedroidActivityManager;->getAndroidActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lledroid/utils/ReflectClass;->setInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clearRecentTask(I)V
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lledroid/services/LedroidActivityManager;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1}, Lledroid/services/ILedroidService;->clearRecentTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lledroid/services/LedroidActivityManager;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1}, Lledroid/services/ILedroidService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Lledroid/root/RootPermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const-string v2, "killBackgroundProcesses"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lledroid/utils/ReflectClass;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lledroid/utils/ReflectClass;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const-string v2, "killBackgroundProcesses"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lledroid/utils/ReflectClass;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Lledroid/utils/ReflectClass;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 103
    :catch_2
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAndroidActivityManager()Landroid/app/IActivityManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lledroid/services/LedroidActivityManager;->a:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lledroid/services/LedroidActivityManager;->a:Landroid/app/IActivityManager;

    .line 32
    :cond_0
    iget-object v0, p0, Lledroid/services/LedroidActivityManager;->a:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 10
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v4, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const-string v5, "getRecentTasks"

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lledroid/utils/ReflectClass;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 54
    .local v2, "getRecentTasks":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 55
    :try_start_0
    iget-object v4, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Lledroid/utils/ReflectClass;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 67
    :cond_0
    :goto_0
    return-object v3

    .line 57
    :cond_1
    iget-object v4, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const-string v5, "getRecentTasks"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lledroid/utils/ReflectClass;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    iget-object v4, p0, Lledroid/services/LedroidActivityManager;->b:Lledroid/utils/ReflectClass;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Lledroid/utils/ReflectClass;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
