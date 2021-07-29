.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;
.super Ljava/lang/Thread;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    .line 1324
    return-void
.end method
