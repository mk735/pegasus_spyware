.class final Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;
.super Ljava/lang/Object;
.source "RemoteScanVirusService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iput-object p2, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v0}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v0}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->b(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;-><init>(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    goto :goto_0
.end method
