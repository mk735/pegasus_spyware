.class public final Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IncomingSMSReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 2277
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2280
    const-string v14, "TrafficCorrectPlugin"

    const-string v15, "touch IncomingSMSReceiver !!!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.lenovo.safecenter.net.traffic.correct"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2283
    .local v8, "msg":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 2284
    .local v12, "sender":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "pdus"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    move-object v10, v14

    check-cast v10, [Ljava/lang/Object;

    .line 2285
    .local v10, "pdus":[Ljava/lang/Object;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v9, v1, v5

    .line 2286
    .local v9, "pdu":Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 2290
    :try_start_0
    check-cast v9, [B

    .end local v9    # "pdu":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 2291
    .local v2, "bpdu":[B
    const-string v14, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 2292
    const-string v14, "test"

    const-string v15, "sms format"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const-string v14, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 2299
    .local v7, "message":Landroid/telephony/SmsMessage;
    :goto_1
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    .line 2300
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    .end local v2    # "bpdu":[B
    .end local v7    # "message":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2295
    .restart local v2    # "bpdu":[B
    :cond_1
    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .restart local v7    # "message":Landroid/telephony/SmsMessage;
    goto :goto_1

    .line 2303
    .end local v2    # "bpdu":[B
    .end local v7    # "message":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v4

    .line 2304
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2326
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "msg":Ljava/lang/StringBuilder;
    .end local v10    # "pdus":[Ljava/lang/Object;
    .end local v12    # "sender":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 2309
    .restart local v1    # "arr$":[Ljava/lang/Object;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "msg":Ljava/lang/StringBuilder;
    .restart local v10    # "pdus":[Ljava/lang/Object;
    .restart local v12    # "sender":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2310
    .local v3, "content":Ljava/lang/String;
    new-instance v11, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v11}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    .line 2311
    .local v11, "se":Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    iput-object v3, v11, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 2312
    iput-object v12, v11, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 2313
    sget-object v14, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2314
    const-string v14, "TrafficCorrectPlugin"

    const-string v15, "touch if !!!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 2317
    .local v13, "targetMsg":Landroid/os/Message;
    iput-object v11, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2318
    const/4 v14, 0x1

    iput v14, v13, Landroid/os/Message;->what:I

    .line 2319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v14}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 2320
    const-string v14, "TrafficCorrectPlugin"

    const-string v15, "mhandler != null !!!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v14}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
