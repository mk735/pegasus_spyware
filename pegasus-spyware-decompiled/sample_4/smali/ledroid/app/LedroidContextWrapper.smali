.class public Lledroid/app/LedroidContextWrapper;
.super Ljava/lang/Object;
.source "LedroidContextWrapper.java"

# interfaces
.implements Lledroid/app/LedroidContext;


# instance fields
.field private a:Lledroid/app/LedroidContext;


# direct methods
.method public constructor <init>(Lledroid/app/LedroidContext;)V
    .locals 0
    .param p1, "context"    # Lledroid/app/LedroidContext;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    .line 17
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidActivityManager()Lledroid/services/LedroidActivityManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidActivityManager()Lledroid/services/LedroidActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidPackageManager()Lledroid/services/LedroidPackageManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidPackageManager()Lledroid/services/LedroidPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidSettings()Lledroid/services/LedroidSettings;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidSettings()Lledroid/services/LedroidSettings;

    move-result-object v0

    return-object v0
.end method

.method public getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;

    move-result-object v0

    return-object v0
.end method

.method public getShellTerminalController()Lledroid/root/ShellTerminalController;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0, p1}, Lledroid/app/LedroidContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasRootPermission()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lledroid/app/LedroidContextWrapper;->a:Lledroid/app/LedroidContext;

    invoke-interface {v0}, Lledroid/app/LedroidContext;->hasRootPermission()Z

    move-result v0

    return v0
.end method
