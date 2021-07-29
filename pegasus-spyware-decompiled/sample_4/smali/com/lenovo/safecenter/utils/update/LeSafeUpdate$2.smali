.class final Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;
.super Ljava/lang/Object;
.source "LeSafeUpdate.java"

# interfaces
.implements Lcom/lenovo/lps/sus/SUSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;ZZ)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iput-boolean p2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->a:Z

    iput-boolean p3, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V
    .locals 24
    .param p1, "eventType"    # Lcom/lenovo/lps/sus/EventType;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$5;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/lps/sus/EventType;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const/16 v18, 0x0

    .line 128
    .local v18, "jsonObjectStr":Ljava/lang/String;
    const/16 v19, 0x0

    .line 129
    .local v19, "resultion":Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, "ChannelKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 131
    .local v5, "VerCode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 132
    .local v4, "VerName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 133
    .local v7, "DownloadURL":Ljava/lang/String;
    const/4 v11, 0x0

    .line 134
    .local v11, "Size":Ljava/lang/String;
    const/4 v6, 0x0

    .line 136
    .local v6, "UpdateDesc":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 137
    const/16 v16, 0x0

    .line 139
    .local v16, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    .local v17, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "RES"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 143
    const-string v2, "SUCCESS"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 144
    const-string v2, "ChannelKey"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 146
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    :goto_1
    const-string v2, "VerCode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 151
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    :goto_2
    const-string v2, "VerName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 156
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    :goto_3
    const-string v2, "DownloadURL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 161
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 164
    :goto_4
    const-string v2, "Size"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 166
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 169
    :goto_5
    const-string v2, "UpdateDesc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 171
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    :goto_6
    const-string v2, "FileName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 176
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-static/range {v18 .. v18}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-static {v8, v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v21

    const-string v22, "SUCCESS"

    new-instance v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->a:Z

    if-eqz v2, :cond_9

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x2

    new-instance v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_8
    move-object/from16 v16, v17

    .line 243
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 146
    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    .restart local v17    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 151
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 156
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 161
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 166
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 171
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 176
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 202
    :cond_9
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;

    move-result-object v2

    const-class v8, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-direct {v15, v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v15, "i":Landroid/content/Intent;
    const-string v2, "versionname"

    invoke-virtual {v15, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v2, "appinfo"

    invoke-virtual {v15, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "url"

    invoke-virtual {v15, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "apkname"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "filesize"

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    const/high16 v2, 0x14000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 234
    .end local v15    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v14

    move-object/from16 v16, v17

    .line 235
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .local v14, "e":Lorg/json/JSONException;
    .restart local v16    # "jsonObject":Lorg/json/JSONObject;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const-string v8, "JSONException"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b8

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    .line 239
    const-string v2, "ydp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUS_QUERY_RESP param:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v2, "ydp"

    const-string v8, "updateversion error start-----"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    .line 242
    const-string v2, "ydp"

    const-string v8, "updateversion error end-----"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v14    # "e":Lorg/json/JSONException;
    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    .restart local v17    # "jsonObject":Lorg/json/JSONObject;
    :cond_a
    :try_start_2
    const-string v2, "LATESTVERSION"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b4

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const-string v8, "LATESTVERSION"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V

    .line 220
    const-string v2, "ydp"

    const-string v8, "QueryResp LATESTVERSION"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 221
    :cond_b
    const-string v2, "NOTFOUND"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b4

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const-string v8, "NOTFOUND"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V

    .line 226
    const-string v2, "ydp"

    const-string v8, "QueryResp NOTFOUND"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 227
    :cond_c
    const-string v2, "EXCEPTION"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b8

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    .line 231
    const-string v2, "ydp"

    const-string v8, "QueryResp EXCEPTION"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const-string v8, "EXCEPTION"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 250
    .end local v3    # "ChannelKey":Ljava/lang/String;
    .end local v4    # "VerName":Ljava/lang/String;
    .end local v5    # "VerCode":Ljava/lang/String;
    .end local v6    # "UpdateDesc":Ljava/lang/String;
    .end local v7    # "DownloadURL":Ljava/lang/String;
    .end local v11    # "Size":Ljava/lang/String;
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .end local v18    # "jsonObjectStr":Ljava/lang/String;
    .end local v19    # "resultion":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d:Z

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onDownLoadComplete(Ljava/lang/String;)V

    .line 253
    const-string v2, "ydp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DOWNLOADCOMPLETE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 777 /data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, "command":Ljava/lang/String;
    const-string v13, "chmod 777 /data/data/com.lenovo.safecenter/cache"

    .line 259
    .local v13, "command1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "updateFileName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->e(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v21, "updateFileName"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    .line 266
    .local v20, "runtime":Ljava/lang/Runtime;
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 267
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 268
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->b:Z

    if-eqz v2, :cond_d

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    new-instance v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->start()V

    .line 308
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b7

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    .line 309
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 311
    :catch_1
    move-exception v14

    .line 312
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "command1":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v20    # "runtime":Ljava/lang/Runtime;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onDownLoadException(I)V

    .line 318
    const-string v2, "ydp"

    const-string v8, "SUS_WARNING_PENDING"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    :pswitch_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/lenovo/lps/sus/SUS;->setSDKPromptDisableFlag(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onDownLoadException(I)V

    .line 324
    const-string v2, "ydp"

    const-string v8, "SUS_FAIL_NETWORKUNAVAILABLE"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b6

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    goto/16 :goto_0

    .line 330
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onDownLoadException(I)V

    .line 331
    const-string v2, "ydp"

    const-string v8, "SUS_FAIL_DOWNLOAD_EXCEPTION"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const v8, 0x7f0d08b8

    invoke-static {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;I)V

    goto/16 :goto_0

    .line 336
    :pswitch_5
    const-string v2, "ydp"

    const-string v8, "SUS_FAIL_NOWLANCONNECTED"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    :pswitch_6
    const-string v2, "ydp"

    const-string v8, "SUS_FAIL_INSUFFICIENTSTORAGESPACE"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v2

    const/4 v8, 0x4

    invoke-interface {v2, v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onDownLoadException(I)V

    goto/16 :goto_0

    .line 345
    :pswitch_7
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/lenovo/lps/sus/SUS;->setSDKPromptDisableFlag(Z)V

    .line 346
    const-string v2, "ydp"

    const-string v8, "SUS_DOWNLOADSTART"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .restart local v3    # "ChannelKey":Ljava/lang/String;
    .restart local v4    # "VerName":Ljava/lang/String;
    .restart local v5    # "VerCode":Ljava/lang/String;
    .restart local v6    # "UpdateDesc":Ljava/lang/String;
    .restart local v7    # "DownloadURL":Ljava/lang/String;
    .restart local v11    # "Size":Ljava/lang/String;
    .restart local v16    # "jsonObject":Lorg/json/JSONObject;
    .restart local v18    # "jsonObjectStr":Ljava/lang/String;
    .restart local v19    # "resultion":Ljava/lang/String;
    :catch_2
    move-exception v14

    goto/16 :goto_9

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
