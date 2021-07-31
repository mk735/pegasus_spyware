.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;
.super Ljava/lang/Thread;
.source "ManAddWhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->initApp_deleteWhite(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 523
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z

    .line 524
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->n(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->a:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->noContractRepeatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 525
    .local v1, "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->n(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3, v1, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getBlackFromadd(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 527
    .local v2, "list_w":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v3, v3, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->deleteBlackbyrealnumber(Ljava/util/List;)V

    .line 528
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v3, v3, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertWhite(Ljava/util/List;)V

    .line 529
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v1    # "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .end local v2    # "list_w":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
