.class final Lcom/lenovo/safecenter/support/SafeCenterService$1;
.super Landroid/os/Handler;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SafeCenterService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 96
    .local v5, "lastesttime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "uid"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 97
    .local v11, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "pid"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, "pid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "backvalue"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "backvalue":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "content"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, "content":Ljava/lang/String;
    const-string v1, "handmes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blackvalue=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v11, :cond_0

    .line 104
    const/16 v1, 0xc

    if-eq v3, v1, :cond_0

    const/16 v1, 0xf

    if-eq v3, v1, :cond_0

    const/16 v1, 0x2e

    if-eq v3, v1, :cond_0

    const/16 v1, 0x2f

    if-eq v3, v1, :cond_0

    .line 107
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->WHITE_LIST:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v14, Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 112
    .local v14, "db":Lcom/lenovo/safecenter/database/AppDatabase;
    const/16 v1, 0x8

    if-eq v3, v1, :cond_1

    const/16 v1, 0xb

    if-ne v3, v1, :cond_6

    .line 113
    :cond_1
    const-string v1, "sendmessage"

    invoke-virtual {v14, v11, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->isAppTrusted(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/support/SafeCenterService;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v2, "packageName":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const/4 v1, 0x0

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "handmes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v1, 0x8

    if-ne v3, v1, :cond_7

    .line 131
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportCallOnBackgroud(Ljava/lang/String;)V

    .line 135
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static/range {v1 .. v6}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;Ljava/lang/String;IIJ)Lcom/lenovo/safecenter/support/SafeLog;

    move-result-object v17

    .line 137
    .local v17, "log":Lcom/lenovo/safecenter/support/SafeLog;
    const/4 v1, 0x6

    if-eq v3, v1, :cond_5

    const/4 v1, 0x7

    if-ne v3, v1, :cond_9

    .line 138
    :cond_5
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 139
    sget-boolean v1, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    if-eqz v1, :cond_8

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const-string v7, "safe_log_privacy"

    invoke-virtual {v14, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-wide v8, v5

    move v10, v3

    move v12, v4

    invoke-static/range {v7 .. v12}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;JIII)Z

    move-result v16

    .line 142
    .local v16, "isDiff":Z
    const-string v1, "handmes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDiff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v16, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v0}, Lcom/lenovo/safecenter/support/SafeCenterService;->insertTappingLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 203
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pid":I
    .end local v4    # "backvalue":I
    .end local v5    # "lastesttime":J
    .end local v11    # "uid":I
    .end local v13    # "content":Ljava/lang/String;
    .end local v14    # "db":Lcom/lenovo/safecenter/database/AppDatabase;
    .end local v16    # "isDiff":Z
    .end local v17    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :catch_0
    move-exception v15

    .line 204
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "backvalue":I
    .restart local v5    # "lastesttime":J
    .restart local v11    # "uid":I
    .restart local v13    # "content":Ljava/lang/String;
    .restart local v14    # "db":Lcom/lenovo/safecenter/database/AppDatabase;
    :cond_6
    :try_start_1
    const-string v1, "privacy"

    invoke-virtual {v14, v11, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->isAppTrusted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 132
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_7
    const/16 v1, 0xb

    if-ne v3, v1, :cond_4

    .line 133
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportSendSmsOnBackgroud(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .restart local v17    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const-string v7, "safe_log_privacy"

    invoke-virtual {v14, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-wide v8, v5

    move v10, v3

    move v12, v4

    invoke-static/range {v7 .. v12}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;JIII)Z

    move-result v16

    .line 148
    .restart local v16    # "isDiff":Z
    const-string v1, "handmes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDiff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz v16, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v0, v3, v13}, Lcom/lenovo/safecenter/support/SafeCenterService;->insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .end local v16    # "isDiff":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->b(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v7, "tariff"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 158
    const/16 v1, 0x8

    if-eq v3, v1, :cond_0

    const/16 v1, 0xb

    if-eq v3, v1, :cond_0

    .line 162
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->b(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v7, "accessPInformation"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 164
    const/16 v1, 0x8

    if-eq v3, v1, :cond_b

    const/16 v1, 0xb

    if-ne v3, v1, :cond_0

    .line 168
    :cond_b
    const/16 v1, 0x8

    if-eq v3, v1, :cond_c

    const/16 v1, 0xb

    if-ne v3, v1, :cond_d

    .line 169
    :cond_c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lenovo/safecenter/utils/Const;->THIRED_APP_SENDSMS:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const-string v7, "safe_log_tariff"

    invoke-virtual {v14, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v0, v3, v13}, Lcom/lenovo/safecenter/support/SafeCenterService;->insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_d
    const/16 v1, 0x30

    if-ne v3, v1, :cond_e

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const-string v7, "safe_log_privacy"

    invoke-virtual {v14, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeLog;J)Z

    move-result v16

    .line 177
    .restart local v16    # "isDiff":Z
    if-eqz v16, :cond_0

    .line 178
    invoke-static {}, Lcom/lenovo/safecenter/support/SafeCenterService;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-static {}, Lcom/lenovo/safecenter/support/SafeCenterService;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "handmes"

    const-string v7, "in locBlackPkgs..........."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v0, v3, v13}, Lcom/lenovo/safecenter/support/SafeCenterService;->insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v16    # "isDiff":Z
    :cond_e
    const/4 v1, 0x5

    if-ne v3, v1, :cond_f

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const-string v7, "safe_log_privacy"

    invoke-virtual {v14, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeLog;J)Z

    move-result v16

    .line 191
    .restart local v16    # "isDiff":Z
    if-eqz v16, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v0, v3, v13}, Lcom/lenovo/safecenter/support/SafeCenterService;->insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v16    # "isDiff":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    const-string v7, "safe_log_privacy"

    invoke-virtual {v14, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-wide v8, v5

    move v10, v3

    move v12, v4

    invoke-static/range {v7 .. v12}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;JIII)Z

    move-result v16

    .line 198
    .restart local v16    # "isDiff":Z
    if-eqz v16, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeCenterService$1;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v0, v3, v13}, Lcom/lenovo/safecenter/support/SafeCenterService;->insertLog(Lcom/lenovo/safecenter/database/AppDatabase;Lcom/lenovo/safecenter/support/SafeLog;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
