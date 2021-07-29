.class final Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;
.super Ljava/lang/Object;
.source "EasySyncServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;->a:Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;

    .line 53
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 62
    invoke-static {p2}, Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->a(Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;)Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;->a:Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;

    invoke-static {}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->a()Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;->getContactDiff()Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;->onFinish(Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 67
    iget-object v1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$a;->a:Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;

    const-string v2, "invoke remote service failed."

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->a(Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;)Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;

    .line 58
    return-void
.end method
