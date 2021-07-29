.class public Lledroid/app/LedroidApplication;
.super Landroid/app/Application;
.source "LedroidApplication.java"

# interfaces
.implements Lledroid/app/LedroidContext;


# instance fields
.field private a:Lledroid/app/LedroidContextImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 95
    return-object p0
.end method

.method public getLedroidActivityManager()Lledroid/services/LedroidActivityManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v0}, Lledroid/app/LedroidContextImpl;->getLedroidActivityManager()Lledroid/services/LedroidActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidPackageManager()Lledroid/services/LedroidPackageManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v0}, Lledroid/app/LedroidContextImpl;->getLedroidPackageManager()Lledroid/services/LedroidPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidService()Lledroid/services/ILedroidService;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->getLedroidService()Lledroid/services/ILedroidService;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidSettings()Lledroid/services/LedroidSettings;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v0}, Lledroid/app/LedroidContextImpl;->getLedroidSettings()Lledroid/services/LedroidSettings;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v0}, Lledroid/app/LedroidContextImpl;->getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;

    move-result-object v0

    return-object v0
.end method

.method public getShellTerminalController()Lledroid/root/ShellTerminalController;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v0}, Lledroid/app/LedroidContextImpl;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v1, p1}, Lledroid/app/LedroidContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 42
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hasRootPermission()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    invoke-virtual {v0}, Lledroid/app/LedroidContextImpl;->hasRootPermission()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    iget-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lledroid/app/LedroidContextImpl;

    invoke-direct {v0, p0}, Lledroid/app/LedroidContextImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lledroid/app/LedroidApplication;->a:Lledroid/app/LedroidContextImpl;

    .line 33
    :cond_0
    invoke-static {p0}, Lledroid/root/LedroidServiceLauncher;->initialize(Lledroid/app/LedroidApplication;)V

    .line 34
    return-void
.end method

.method public onLedroidServiceLaunchFailed(Ljava/io/File;)V
    .locals 7
    .param p1, "errFile"    # Ljava/io/File;

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "errReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v2    # "errReader":Ljava/io/BufferedReader;
    .local v3, "errReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 50
    .local v1, "errInfo":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    const-string v4, "LedroidApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 55
    .end local v1    # "errInfo":Ljava/lang/String;
    .end local v3    # "errReader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "errReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    .line 61
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 53
    .end local v2    # "errReader":Ljava/io/BufferedReader;
    .restart local v1    # "errInfo":Ljava/lang/String;
    .restart local v3    # "errReader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    invoke-static {v3}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 60
    .end local v3    # "errReader":Ljava/io/BufferedReader;
    .restart local v2    # "errReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 56
    .end local v1    # "errInfo":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "errReader":Ljava/io/BufferedReader;
    .restart local v1    # "errInfo":Ljava/lang/String;
    .restart local v3    # "errReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "errReader":Ljava/io/BufferedReader;
    .restart local v2    # "errReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 56
    .end local v2    # "errReader":Ljava/io/BufferedReader;
    .restart local v3    # "errReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "errReader":Ljava/io/BufferedReader;
    .restart local v2    # "errReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 54
    .end local v1    # "errInfo":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public tryToLaunchLedroidService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->launchLedroidService()V

    .line 104
    return-void
.end method
