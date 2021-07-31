.class final Lcom/lenovo/safecenter/antivirus/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->g(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    move-result-object v1

    const/16 v2, 0xe

    new-instance v3, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity$5;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    .line 610
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->f(Lcom/lenovo/safecenter/antivirus/MainActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->f(Lcom/lenovo/safecenter/antivirus/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->g(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/MainActivity;->f(Lcom/lenovo/safecenter/antivirus/MainActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity$5;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v2, 0x7f0d02d7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
