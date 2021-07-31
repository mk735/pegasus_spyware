.class public Lledroid/services/LedroidSupport;
.super Ljava/lang/Object;
.source "LedroidSupport.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lledroid/services/LedroidSupport;->a:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lledroid/services/LedroidSupport;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected getLenovoManager()Lledroid/services/ILedroidService;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lledroid/services/LedroidSupport;->hasRootPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Lledroid/root/RootPermissionException;

    invoke-direct {v3}, Lledroid/root/RootPermissionException;-><init>()V

    throw v3

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .local v1, "ledroidApplication":Lledroid/app/LedroidApplication;
    iget-object v3, p0, Lledroid/services/LedroidSupport;->a:Landroid/content/Context;

    instance-of v3, v3, Lledroid/app/LedroidApplication;

    if-eqz v3, :cond_2

    .line 34
    iget-object v1, p0, Lledroid/services/LedroidSupport;->a:Landroid/content/Context;

    .end local v1    # "ledroidApplication":Lledroid/app/LedroidApplication;
    check-cast v1, Lledroid/app/LedroidApplication;

    .line 42
    .restart local v1    # "ledroidApplication":Lledroid/app/LedroidApplication;
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 43
    new-instance v3, Lledroid/app/LedroidContextException;

    const-string v4, "Application must be LedroidApplication Instance!"

    invoke-direct {v3, v4}, Lledroid/app/LedroidContextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_2
    iget-object v3, p0, Lledroid/services/LedroidSupport;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "application":Landroid/content/Context;
    instance-of v3, v0, Lledroid/app/LedroidApplication;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 38
    check-cast v1, Lledroid/app/LedroidApplication;

    goto :goto_0

    .line 46
    .end local v0    # "application":Landroid/content/Context;
    :cond_3
    invoke-virtual {v1}, Lledroid/app/LedroidApplication;->getLedroidService()Lledroid/services/ILedroidService;

    move-result-object v2

    .line 47
    .local v2, "service":Lledroid/services/ILedroidService;
    if-nez v2, :cond_4

    .line 48
    invoke-virtual {v1}, Lledroid/app/LedroidApplication;->tryToLaunchLedroidService()V

    .line 49
    invoke-virtual {v1}, Lledroid/app/LedroidApplication;->getLedroidService()Lledroid/services/ILedroidService;

    move-result-object v2

    .line 50
    if-nez v2, :cond_4

    .line 51
    new-instance v3, Lledroid/root/RootPermissionException;

    const-string v4, "Cannt get Ledroid Service"

    invoke-direct {v3, v4}, Lledroid/root/RootPermissionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_4
    return-object v2
.end method

.method public hasRootPermission()Z
    .locals 3

    .prologue
    .line 23
    iget-object v1, p0, Lledroid/services/LedroidSupport;->a:Landroid/content/Context;

    const-string v2, "ledroid_root"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/root/ShellTerminalController;

    .line 24
    .local v0, "shellController":Lledroid/root/ShellTerminalController;
    invoke-virtual {v0}, Lledroid/root/ShellTerminalController;->hasRootPermission()Z

    move-result v1

    return v1
.end method
