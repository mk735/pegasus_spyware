.class final Lcom/lenovo/safecenter/safemode/AddContract$9;
.super Ljava/lang/Thread;
.source "AddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/AddContract;->initApp_deleteBlack(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/AddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 425
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->a:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->noContractRepeatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 426
    .local v2, "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getBlackFromadd(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, "list_B":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v3, v4, v1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->deleteBlack(Landroid/content/Context;Ljava/util/List;)V

    .line 430
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/AddContract;->g(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->insertContract(Ljava/util/List;)V

    .line 431
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/safemode/AddContract;->initCopyDel1(Ljava/util/List;)V

    .line 432
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$9;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/AddContract;->i(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v1    # "list_B":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .end local v2    # "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
