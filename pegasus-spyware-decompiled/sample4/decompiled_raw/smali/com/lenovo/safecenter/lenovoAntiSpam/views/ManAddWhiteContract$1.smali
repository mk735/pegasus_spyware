.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;
.super Ljava/lang/Thread;
.source "ManAddWhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z

    .line 222
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    .line 223
    .local v1, "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->GetMyContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)Ljava/util/List;

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getConNotInWhiteList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)Ljava/util/List;

    .line 238
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    .end local v1    # "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :goto_1
    return-void

    .line 227
    .restart local v1    # "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getcallContractList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v1    # "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getSmsContractList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
