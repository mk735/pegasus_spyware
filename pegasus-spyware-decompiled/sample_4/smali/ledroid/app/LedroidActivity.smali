.class public Lledroid/app/LedroidActivity;
.super Landroid/app/Activity;
.source "LedroidActivity.java"

# interfaces
.implements Lledroid/app/LedroidContext;


# instance fields
.field private a:Lledroid/app/LedroidContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lledroid/app/LedroidActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 44
    check-cast v0, Lledroid/app/LedroidContext;

    .end local v0    # "application":Landroid/app/Application;
    iput-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lledroid/app/LedroidContextException;

    const-string v3, "Are you sure that your application is implemented LedroidApplication and configured in AndroidManifest.xml."

    invoke-direct {v2, v3, v1}, Lledroid/app/LedroidContextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public getLedroidActivityManager()Lledroid/services/LedroidActivityManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidActivityManager()Lledroid/services/LedroidActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidContext()Lledroid/app/LedroidContext;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    return-object v0
.end method

.method public getLedroidPackageManager()Lledroid/services/LedroidPackageManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidPackageManager()Lledroid/services/LedroidPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidSettings()Lledroid/services/LedroidSettings;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidSettings()Lledroid/services/LedroidSettings;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;

    move-result-object v0

    return-object v0
.end method

.method public getShellTerminalController()Lledroid/root/ShellTerminalController;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lledroid/app/LedroidActivity;->a()V

    .line 28
    iget-object v1, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    if-nez v1, :cond_1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "service":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v1, p1}, Lledroid/app/LedroidContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hasRootPermission()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lledroid/app/LedroidActivity;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->hasRootPermission()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-direct {p0}, Lledroid/app/LedroidActivity;->a()V

    .line 22
    return-void
.end method
