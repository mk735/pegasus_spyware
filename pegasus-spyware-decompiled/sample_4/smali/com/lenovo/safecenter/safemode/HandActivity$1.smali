.class final Lcom/lenovo/safecenter/safemode/HandActivity$1;
.super Ljava/lang/Thread;
.source "HandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/HandActivity;->initCopyDel(Lcom/lenovo/safecenter/support/Contract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/Contract;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/HandActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/HandActivity;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 93
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "optNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getCallContractByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getSmsByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->b(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Ljava/util/List;)V

    .line 101
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->b(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Ljava/util/List;)V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/HandActivity;->a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/HandActivity$1;->b:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v2, v6, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->operateNumber(Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .end local v2    # "optNumber":Ljava/lang/String;
    .end local v3    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :cond_2
    :goto_1
    return-void

    .line 105
    .restart local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .restart local v2    # "optNumber":Ljava/lang/String;
    .restart local v3    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 109
    .end local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .end local v2    # "optNumber":Ljava/lang/String;
    .end local v3    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
