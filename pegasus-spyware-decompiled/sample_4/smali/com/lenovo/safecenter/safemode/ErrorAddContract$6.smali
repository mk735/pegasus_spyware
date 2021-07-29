.class final Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;
.super Ljava/lang/Thread;
.source "ErrorAddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorAddContract;->initCopyDel(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 447
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 449
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "optNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->g(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->g(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->g(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->operateNumber(Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "optNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 457
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$6;->b:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->h(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
