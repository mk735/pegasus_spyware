.class public Lledroid/app/LedroidContextImpl;
.super Ljava/lang/Object;
.source "LedroidContextImpl.java"

# interfaces
.implements Lledroid/app/LedroidContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/app/LedroidContextImpl$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lledroid/app/LedroidContextImpl$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lledroid/app/LedroidContextImpl;->b:Ljava/util/HashMap;

    .line 37
    const-string v0, "ledroid_settings"

    new-instance v1, Lledroid/app/LedroidContextImpl$1;

    invoke-direct {v1}, Lledroid/app/LedroidContextImpl$1;-><init>()V

    invoke-static {v0, v1}, Lledroid/app/LedroidContextImpl;->a(Ljava/lang/String;Lledroid/app/LedroidContextImpl$a;)V

    .line 44
    const-string v0, "ledroid_activity"

    new-instance v1, Lledroid/app/LedroidContextImpl$2;

    invoke-direct {v1}, Lledroid/app/LedroidContextImpl$2;-><init>()V

    invoke-static {v0, v1}, Lledroid/app/LedroidContextImpl;->a(Ljava/lang/String;Lledroid/app/LedroidContextImpl$a;)V

    .line 51
    const-string v0, "ledroid_package"

    new-instance v1, Lledroid/app/LedroidContextImpl$3;

    invoke-direct {v1}, Lledroid/app/LedroidContextImpl$3;-><init>()V

    invoke-static {v0, v1}, Lledroid/app/LedroidContextImpl;->a(Ljava/lang/String;Lledroid/app/LedroidContextImpl$a;)V

    .line 58
    const-string v0, "ledroid_statusbar"

    new-instance v1, Lledroid/app/LedroidContextImpl$4;

    invoke-direct {v1}, Lledroid/app/LedroidContextImpl$4;-><init>()V

    invoke-static {v0, v1}, Lledroid/app/LedroidContextImpl;->a(Ljava/lang/String;Lledroid/app/LedroidContextImpl$a;)V

    .line 65
    const-string v0, "ledroid_root"

    new-instance v1, Lledroid/app/LedroidContextImpl$5;

    invoke-direct {v1}, Lledroid/app/LedroidContextImpl$5;-><init>()V

    invoke-static {v0, v1}, Lledroid/app/LedroidContextImpl;->a(Ljava/lang/String;Lledroid/app/LedroidContextImpl$a;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lledroid/app/LedroidContextImpl;->a:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private static a(Ljava/lang/String;Lledroid/app/LedroidContextImpl$a;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fetcher"    # Lledroid/app/LedroidContextImpl$a;

    .prologue
    .line 74
    sget-object v0, Lledroid/app/LedroidContextImpl;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lledroid/app/LedroidContextImpl;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getLedroidActivityManager()Lledroid/services/LedroidActivityManager;
    .locals 1

    .prologue
    .line 95
    const-string v0, "ledroid_activity"

    invoke-virtual {p0, v0}, Lledroid/app/LedroidContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/services/LedroidActivityManager;

    return-object v0
.end method

.method public getLedroidPackageManager()Lledroid/services/LedroidPackageManager;
    .locals 1

    .prologue
    .line 100
    const-string v0, "ledroid_package"

    invoke-virtual {p0, v0}, Lledroid/app/LedroidContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/services/LedroidPackageManager;

    return-object v0
.end method

.method public getLedroidSettings()Lledroid/services/LedroidSettings;
    .locals 1

    .prologue
    .line 115
    const-string v0, "ledroid_settings"

    invoke-virtual {p0, v0}, Lledroid/app/LedroidContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/services/LedroidSettings;

    return-object v0
.end method

.method public getLedroidStatusBarManager()Lledroid/services/LedroidStatusBarManager;
    .locals 1

    .prologue
    .line 105
    const-string v0, "ledroid_statusbar"

    invoke-virtual {p0, v0}, Lledroid/app/LedroidContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/services/LedroidStatusBarManager;

    return-object v0
.end method

.method public getShellTerminalController()Lledroid/root/ShellTerminalController;
    .locals 1

    .prologue
    .line 110
    const-string v0, "ledroid_root"

    invoke-virtual {p0, v0}, Lledroid/app/LedroidContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/root/ShellTerminalController;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v1, Lledroid/app/LedroidContextImpl;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lledroid/app/LedroidContextImpl$a;

    .line 80
    .local v0, "fetcher":Lledroid/app/LedroidContextImpl$a;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lledroid/app/LedroidContextImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lledroid/app/LedroidContextImpl$a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasRootPermission()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lledroid/app/LedroidContextImpl;->getShellTerminalController()Lledroid/root/ShellTerminalController;

    move-result-object v0

    invoke-virtual {v0}, Lledroid/root/ShellTerminalController;->hasRootPermission()Z

    move-result v0

    return v0
.end method
