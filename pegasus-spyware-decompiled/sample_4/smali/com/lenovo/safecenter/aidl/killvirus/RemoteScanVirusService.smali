.class public Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;
.super Landroid/app/Service;
.source "RemoteScanVirusService.java"


# static fields
.field public static final COMMAND_ACTION_KILLVIRUS_CANCEL_SCAN:Ljava/lang/String; = "killVirus_cancelscan"

.field public static final COMMAND_ACTION_KILLVIRUS_SCAN:Ljava/lang/String; = "killVirus_scan"


# instance fields
.field final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private final c:Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    .line 67
    new-instance v0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;-><init>(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->c:Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->d:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->d:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    .prologue
    .line 24
    const-string v0, "wu0wu"

    const-string v1, "RemoteScanvirusService doCancelScan...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;-><init>(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    .prologue
    .line 24
    iget v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->d:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteService onBind action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->c:Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "wu0wu"

    const-string v1, "RemoteService onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    return-void
.end method
