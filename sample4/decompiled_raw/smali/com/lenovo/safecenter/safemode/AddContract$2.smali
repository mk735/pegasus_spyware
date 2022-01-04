.class final Lcom/lenovo/safecenter/safemode/AddContract$2;
.super Ljava/lang/Thread;
.source "AddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/AddContract;->initCopyDel(Ljava/util/List;)V
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
    .line 573
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 576
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 578
    .local v1, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "optNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    :cond_1
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v6

    iget-object v8, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v4, v9}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getCallContractByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 584
    .local v0, "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v6

    iget-object v8, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8, v4, v9, v10}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getSmsByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 585
    .local v5, "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->g(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Ljava/util/List;)V

    .line 586
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->g(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Ljava/util/List;)V

    .line 587
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 589
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v8, v4, v9, v6}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->operateNumber(Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    .end local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "optNumber":Ljava/lang/String;
    .end local v5    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :catch_0
    move-exception v2

    .line 595
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 597
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 589
    .restart local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .restart local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "optNumber":Ljava/lang/String;
    .restart local v5    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 593
    .end local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v4    # "optNumber":Ljava/lang/String;
    .end local v5    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract$2;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v6}, Lcom/lenovo/safecenter/safemode/AddContract;->i(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
