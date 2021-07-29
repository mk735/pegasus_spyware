.class public final Lledroid/root/LedroidServiceLauncher;
.super Ljava/lang/Object;
.source "LedroidServiceLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/LedroidServiceLauncher$a;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "lenovo"

.field private static a:Lledroid/app/LedroidApplication;

.field private static b:Lledroid/services/ILedroidService;

.field private static c:J

.field private static d:Lledroid/root/res/NBJarFile;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    sput-object v2, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    .line 21
    sput-object v2, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;

    .line 22
    const-wide/16 v0, -0x1

    sput-wide v0, Lledroid/root/LedroidServiceLauncher;->c:J

    .line 23
    sput-object v2, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic a()Lledroid/root/res/NBJarFile;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    return-object v0
.end method

.method private static a(Landroid/os/IBinder;)V
    .locals 3
    .param p0, "svrBinder"    # Landroid/os/IBinder;

    .prologue
    .line 209
    const-string v1, "liubin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNativeLedroidService: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_1

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p0, :cond_0

    .line 211
    invoke-static {p0}, Lledroid/services/ILedroidService$Stub;->asInterface(Landroid/os/IBinder;)Lledroid/services/ILedroidService;

    move-result-object v0

    sput-object v0, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;

    .line 213
    :try_start_0
    new-instance v0, Lledroid/root/LedroidServiceLauncher$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lledroid/root/LedroidServiceLauncher$a;-><init>(B)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_1
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 8
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v4}, Lledroid/app/LedroidApplication;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v3

    .line 126
    .local v3, "shellTerminalController":Lledroid/root/ShellTerminalController;
    invoke-virtual {v3}, Lledroid/root/ShellTerminalController;->hasRootPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    new-instance v0, Lledroid/root/ShellCommand;

    invoke-virtual {v3}, Lledroid/root/ShellTerminalController;->getRootTransport()Lledroid/root/ICommandTransport;

    move-result-object v4

    invoke-direct {v0, v4}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 129
    .local v0, "cmd":Lledroid/root/ShellCommand;
    const-string v4, "LD_LIBRARY_PATH"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "ldLibraryPath":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 131
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "export"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    .line 136
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "export"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLASSPATH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    invoke-virtual {v7}, Lledroid/root/res/NBJarFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/app_process"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v7}, Lledroid/app/LedroidApplication;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "ledroid.server.LenovoServer"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p0, v5, v6

    const/4 v6, 0x4

    const-string v7, "2>"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->e:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v4

    invoke-virtual {v4}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;

    .line 145
    .end local v0    # "cmd":Lledroid/root/ShellCommand;
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local v3    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :cond_0
    :goto_1
    return-void

    .line 133
    .restart local v0    # "cmd":Lledroid/root/ShellCommand;
    .restart local v2    # "ldLibraryPath":Ljava/lang/String;
    .restart local v3    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "export"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LD_LIBRARY_PATH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "cmd":Lledroid/root/ShellCommand;
    .end local v2    # "ldLibraryPath":Ljava/lang/String;
    .end local v3    # "shellTerminalController":Lledroid/root/ShellTerminalController;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b()Lledroid/services/ILedroidService;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;

    return-object v0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 99
    :goto_0
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->c()V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "cnt":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 109
    const-string v2, "lenovo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->c()V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized e()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 152
    const-class v3, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 165
    .local v1, "runningVersion":I
    :cond_0
    :goto_0
    monitor-exit v3

    return v2

    .line 156
    .end local v1    # "runningVersion":I
    :cond_1
    const/4 v1, 0x0

    .line 158
    .restart local v1    # "runningVersion":I
    :try_start_1
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;

    invoke-interface {v4}, Lledroid/services/ILedroidService;->getVersionCode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 163
    :goto_1
    :try_start_2
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    invoke-virtual {v4}, Lledroid/root/res/NBJarFile;->updateIfNeed()V

    .line 165
    sget-object v4, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    invoke-virtual {v4}, Lledroid/root/res/NBJarFile;->getNewVersionCode()I

    move-result v4

    if-lt v1, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getLedroidService()Lledroid/services/ILedroidService;
    .locals 3

    .prologue
    .line 219
    const-class v2, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v0, "svrBinder":Landroid/os/IBinder;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 223
    .end local v0    # "svrBinder":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v1, "lenovo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 224
    .restart local v0    # "svrBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lledroid/root/LedroidServiceLauncher;->a(Landroid/os/IBinder;)V

    .line 225
    sget-object v1, Lledroid/root/LedroidServiceLauncher;->b:Lledroid/services/ILedroidService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized initialize(Lledroid/app/LedroidApplication;)V
    .locals 3
    .param p0, "application"    # Lledroid/app/LedroidApplication;

    .prologue
    .line 30
    const-class v1, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lledroid/app/LedroidApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "LedroidServiceLauncherError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lledroid/root/LedroidServiceLauncher;->e:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lledroid/root/LedroidServiceLauncher$1;

    invoke-direct {v2}, Lledroid/root/LedroidServiceLauncher$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized launchLedroidService()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 47
    const-class v6, Lledroid/root/LedroidServiceLauncher;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    if-nez v7, :cond_1

    .line 48
    const-string v5, "LedroidApplication"

    const-string v7, "LedroidApplication is Null! Cannot launch Ledroid Service."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v0, "androidResources":Lledroid/utils/AndroidResources;
    .local v1, "currentTimeMillis":J
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 53
    .end local v0    # "androidResources":Lledroid/utils/AndroidResources;
    .end local v1    # "currentTimeMillis":J
    :cond_1
    :try_start_1
    sget-object v7, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v7}, Lledroid/app/LedroidApplication;->hasRootPermission()Z

    move-result v7

    if-nez v7, :cond_2

    .line 54
    new-instance v5, Lledroid/root/RootPermissionException;

    const-string v7, "Need Root Permission to lauch ledroid service."

    invoke-direct {v5, v7}, Lledroid/root/RootPermissionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .restart local v0    # "androidResources":Lledroid/utils/AndroidResources;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 57
    .end local v0    # "androidResources":Lledroid/utils/AndroidResources;
    :cond_2
    :try_start_2
    new-instance v0, Lledroid/utils/AndroidResources;

    sget-object v7, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v7}, Lledroid/app/LedroidApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v8}, Lledroid/app/LedroidApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lledroid/utils/AndroidResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 58
    .restart local v0    # "androidResources":Lledroid/utils/AndroidResources;
    new-instance v7, Lledroid/root/res/NBJarFile;

    sget-object v8, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    const-string v9, "raw"

    const-string v10, "nb"

    invoke-virtual {v0, v9, v10}, Lledroid/utils/AndroidResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    sget-object v10, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v10}, Lledroid/app/LedroidApplication;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lledroid/root/res/NBJarFile;-><init>(Landroid/content/Context;ILjava/io/File;)V

    sput-object v7, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 61
    .restart local v1    # "currentTimeMillis":J
    sget-wide v7, Lledroid/root/LedroidServiceLauncher;->c:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    sget-wide v7, Lledroid/root/LedroidServiceLauncher;->c:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 65
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->getLedroidService()Lledroid/services/ILedroidService;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 66
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->e()Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    sget-object v7, Lledroid/root/LedroidServiceLauncher;->d:Lledroid/root/res/NBJarFile;

    invoke-virtual {v7}, Lledroid/root/res/NBJarFile;->getNewVersionCode()I

    move-result v7

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/dalvik-cache/"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Lledroid/root/LedroidServiceLauncher$2;

    invoke-direct {v9, v7}, Lledroid/root/LedroidServiceLauncher$2;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    array-length v9, v7

    if-ge v5, v9, :cond_3

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-object v5, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v5}, Lledroid/app/LedroidApplication;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v5

    invoke-virtual {v5}, Lledroid/root/ShellTerminalController;->hasRootPermission()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lledroid/root/ShellCommand;

    invoke-virtual {v5}, Lledroid/root/ShellTerminalController;->getRootTransport()Lledroid/root/ICommandTransport;

    move-result-object v5

    invoke-direct {v7, v5}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "mount -oremount,rw /data /data"

    aput-object v10, v5, v9

    invoke-virtual {v7, v5}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "mount -oremount,rw"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "/data"

    invoke-static {v10}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "/data"

    aput-object v10, v7, v9

    invoke-virtual {v5, v7}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "rm "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v7}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mount -oremount,ro /data /data"

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mount -oremount,ro"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "/data"

    invoke-static {v9}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "/data"

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v5

    invoke-virtual {v5}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :cond_4
    :goto_2
    :try_start_4
    const-string v5, "--stop-lenovo-server"

    invoke-static {v5}, Lledroid/root/LedroidServiceLauncher;->a(Ljava/lang/String;)V

    .line 74
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lledroid/root/LedroidServiceLauncher;->c:J

    .line 76
    new-instance v4, Ljava/io/File;

    sget-object v5, Lledroid/root/LedroidServiceLauncher;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "errFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :cond_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :goto_3
    :try_start_6
    const-string v5, "--start-lenovo-server"

    invoke-static {v5}, Lledroid/root/LedroidServiceLauncher;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->d()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lledroid/root/LedroidServiceLauncher;->a(Landroid/os/IBinder;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 92
    sget-object v5, Lledroid/root/LedroidServiceLauncher;->a:Lledroid/app/LedroidApplication;

    invoke-virtual {v5, v4}, Lledroid/app/LedroidApplication;->onLedroidServiceLaunchFailed(Ljava/io/File;)V

    goto/16 :goto_0

    .line 69
    .end local v4    # "errFile":Ljava/io/File;
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 82
    .restart local v4    # "errFile":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method
