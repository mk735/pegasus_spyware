.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;
.super Ljava/lang/Thread;
.source "ManLocalBlackAddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Z)Z

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 198
    .local v2, "timeall1":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    iget-object v13, v13, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-virtual {v13, v14}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->GetMyContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)Ljava/util/List;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 201
    .local v6, "timemc":J
    sub-long v10, v6, v2

    .line 202
    .local v10, "tinmmcend":J
    const-string v12, "timespare"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GetMyContacts===="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 207
    sub-long v10, v6, v2

    .line 208
    const-string v12, "timespare"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "noContractRepeatList===="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    iget-object v13, v13, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v14}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)I

    move-result v16

    invoke-virtual/range {v13 .. v16}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getConNotInBlackList(Ljava/util/List;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)Ljava/util/List;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 213
    .local v4, "timeall2":J
    sub-long v8, v4, v2

    .line 214
    .local v8, "tinm13":J
    const-string v12, "timespare"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getConNotInBlackList===="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v12}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v2    # "timeall1":J
    .end local v4    # "timeall2":J
    .end local v6    # "timemc":J
    .end local v8    # "tinm13":J
    .end local v10    # "tinmmcend":J
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
