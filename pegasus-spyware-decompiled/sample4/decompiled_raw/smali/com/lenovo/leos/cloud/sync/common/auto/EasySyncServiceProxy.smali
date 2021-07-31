.class public Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;
.super Ljava/lang/Object;
.source "EasySyncServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;,
        Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;
    }
.end annotation


# static fields
.field private static a:Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

.field private static b:Landroid/content/ServiceConnection;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic a()Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->a:Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;)Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    .prologue
    .line 15
    sput-object p0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->a:Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    return-object p0
.end method

.method public static queryContactDiffInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;

    .prologue
    .line 39
    new-instance v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;-><init>(Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;)V

    sput-object v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->b:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.leos.cloud.sync.AUTO_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->b:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->c:Z

    .line 40
    return-void
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-boolean v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->c:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->c:Z

    .line 35
    :cond_0
    return-void
.end method
