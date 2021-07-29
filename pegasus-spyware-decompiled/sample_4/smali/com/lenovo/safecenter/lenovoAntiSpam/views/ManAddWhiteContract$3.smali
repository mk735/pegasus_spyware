.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;
.super Ljava/lang/Thread;
.source "ManAddWhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->initApps(Ljava/util/List;)V
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
    .line 337
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z

    .line 342
    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->noContractRepeatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 343
    .local v1, "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertWhite(Ljava/util/List;)V

    .line 345
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v1    # "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
