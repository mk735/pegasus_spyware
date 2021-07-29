.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;
.super Ljava/lang/Thread;
.source "ManLocalBlackAddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->initApps(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 293
    :try_start_0
    iget-object v8, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Z)Z

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 297
    .local v4, "timemc":J
    iget-object v8, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    iget-object v8, v8, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    iget-object v9, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->a:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->noContractRepeatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    iget-object v8, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertLocalBlack(Ljava/util/List;I)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 300
    .local v2, "timeall2":J
    sub-long v6, v2, v4

    .line 301
    .local v6, "tinm13":J
    const-string v8, "timespare"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getConNotInBlackList===="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v8, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "list_help":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .end local v2    # "timeall2":J
    .end local v4    # "timemc":J
    .end local v6    # "tinm13":J
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
