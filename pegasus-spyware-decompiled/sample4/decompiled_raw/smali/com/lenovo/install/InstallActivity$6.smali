.class final Lcom/lenovo/install/InstallActivity$6;
.super Ljava/lang/Thread;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$6;->b:Lcom/lenovo/install/InstallActivity;

    iput-object p2, p0, Lcom/lenovo/install/InstallActivity$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 546
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$6;->b:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->u(Lcom/lenovo/install/InstallActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$6;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 547
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$6;->b:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/lenovo/install/InstallActivity;->c(Lcom/lenovo/install/InstallActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 549
    return-void
.end method
