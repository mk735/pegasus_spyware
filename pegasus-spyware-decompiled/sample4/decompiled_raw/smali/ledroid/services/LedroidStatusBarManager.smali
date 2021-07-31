.class public Lledroid/services/LedroidStatusBarManager;
.super Lledroid/services/LedroidSupport;
.source "LedroidStatusBarManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lledroid/services/LedroidSupport;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
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
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lledroid/services/LedroidStatusBarManager;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1}, Lledroid/services/ILedroidService;->clearRecentTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsable(Z)V
    .locals 2
    .param p1, "usable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lledroid/root/RootPermissionException;
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lledroid/services/LedroidStatusBarManager;->getLenovoManager()Lledroid/services/ILedroidService;

    move-result-object v1

    invoke-interface {v1, p1}, Lledroid/services/ILedroidService;->setStatusBarUsable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
