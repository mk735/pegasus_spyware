.class public Lcom/lenovo/safecenter/support/SMSCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSCheckReceiver.java"


# instance fields
.field a:Landroid/media/MediaPlayer;

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    .line 63
    new-instance v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;-><init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "guest_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    .line 419
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 420
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v1, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 429
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 582
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 583
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "index"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "index":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v1    # "index":Ljava/lang/String;
    .end local v2    # "smsManager":Landroid/telephony/SmsManager;
    :cond_0
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isIncallList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 434
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 435
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(number,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) and type=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 438
    .local v7, "isInCall":Z
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    const/4 v7, 0x1

    .line 442
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    return v7
.end method

.method public isIntercept(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 449
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v6, "intercall_mode_type"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 450
    .local v1, "mode":I
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    .line 452
    .local v3, "untils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 454
    invoke-virtual {v3, p1, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 455
    .local v0, "isExistCon":Z
    if-nez v0, :cond_1

    .line 483
    .end local v0    # "isExistCon":Z
    :cond_0
    :goto_0
    return v4

    .line 460
    .restart local v0    # "isExistCon":Z
    :cond_1
    invoke-static {p1, v5, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 466
    .end local v0    # "isExistCon":Z
    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_5

    .line 468
    :cond_3
    invoke-static {p1, v5, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move v4, v5

    .line 483
    goto :goto_0

    .line 476
    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_4

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0
.end method

.method public isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 489
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 491
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 492
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 493
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    if-lez v6, :cond_0

    .line 496
    const/4 v2, 0x1

    .line 500
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "count":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v2, v8

    .line 498
    goto :goto_0

    .line 500
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    move v2, v8

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v2, "test"

    const-string v3, "SMSCheckReceiver onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    .line 103
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    .line 104
    sget-boolean v2, Lcom/lenovo/safecenter/utils/MyUtils;->isLocked:Z

    if-eqz v2, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v23, "msg":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pdus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, [Ljava/lang/Object;

    .line 109
    .local v25, "pdus":[Ljava/lang/Object;
    move-object/from16 v10, v25

    .local v10, "arr$":[Ljava/lang/Object;
    array-length v0, v10

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v24, v10, v16

    .line 110
    .local v24, "pdu":Ljava/lang/Object;
    if-eqz v24, :cond_1

    .line 114
    :try_start_0
    check-cast v24, [B

    .end local v24    # "pdu":Ljava/lang/Object;
    move-object/from16 v0, v24

    check-cast v0, [B

    move-object v11, v0

    .line 115
    .local v11, "bpdu":[B
    const-string v2, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 116
    const-string v2, "test"

    const-string v3, "sms format"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v2, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v22

    .line 123
    .local v22, "message":Landroid/telephony/SmsMessage;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    .line 124
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .end local v11    # "bpdu":[B
    .end local v22    # "message":Landroid/telephony/SmsMessage;
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 119
    .restart local v11    # "bpdu":[B
    :cond_2
    invoke-static {v11}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .restart local v22    # "message":Landroid/telephony/SmsMessage;
    goto :goto_1

    .line 127
    .end local v11    # "bpdu":[B
    .end local v22    # "message":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v14

    .line 129
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 134
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    .line 135
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMSCheckReceiver content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/safecenter/support/SecurityService;->beginTime:J

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 140
    const-string v2, "SIM1_properties_safecenter"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 142
    .local v28, "sp":Landroid/content/SharedPreferences;
    const-string v2, "phoneNumber"

    const-string v3, "default"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 143
    .local v26, "phoneNumber":Ljava/lang/String;
    const-string v2, "TrafficCorrectCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    const-string v2, "TrafficCorrectCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch send"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v29, "trafficCorrect":Landroid/content/Intent;
    const-string v2, "com.lenovo.safecenter.net.traffic.correct"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 152
    const-string v2, "format"

    const-string v3, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_5
    const-string v2, "pdus"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    const-string v2, "10000"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "10001"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    .line 162
    const-string v2, "TrafficCorrectCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch send @@!!!! editer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneNumber"

    const-string v5, "default"

    move-object/from16 v0, v28

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v29    # "trafficCorrect":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v12

    .line 165
    .local v12, "con":Lcom/lenovo/safecenter/support/Contract;
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "con====abortBroadcast();content+="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    const-string v3, "test"

    const-string v4, "SMSCheckReceiver parseSMS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "antitheft"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->f:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPasswordWithJieMi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->j:Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafeMail()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->f:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v4, 0x7f0d00c1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v2, "ydp"

    const-string v3, "in fdhz!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_3

    .line 170
    if-eqz v12, :cond_20

    .line 172
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert con"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 178
    new-instance v13, Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 179
    .local v13, "db":Lcom/lenovo/safecenter/database/AppDatabase;
    invoke-virtual {v13, v12}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Lcom/lenovo/safecenter/support/Contract;)V

    .line 180
    const-string v2, "sms_mode"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getHarssAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 182
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->showNotify(Landroid/content/Context;)V

    .line 185
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 187
    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    .line 189
    :cond_9
    const-string v2, "WhiteSmsShowByNumber"

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 191
    const-string v2, "WhiteSmsShowByNumber"

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .line 192
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
    new-instance v21, Landroid/os/Message;

    invoke-direct/range {v21 .. v21}, Landroid/os/Message;-><init>()V

    .line 193
    .local v21, "mes":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/os/Message;->what:I

    .line 194
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v12}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, v9, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->hand:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 159
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
    .end local v12    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v13    # "db":Lcom/lenovo/safecenter/database/AppDatabase;
    .end local v21    # "mes":Landroid/os/Message;
    .restart local v29    # "trafficCorrect":Landroid/content/Intent;
    :cond_a
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "phoneNumber"

    const-string v4, "error"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 166
    .end local v29    # "trafficCorrect":Landroid/content/Intent;
    .restart local v12    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->f:Landroid/content/SharedPreferences;

    const-string v5, "theft_preference"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, ""

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafeMail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->j:Z

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#ALL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff03ALL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    :cond_d
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isAll:Z

    const-string v2, "all"

    sget-boolean v4, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isAll:Z

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->j:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->l:Landroid/os/Handler;

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->aganistTheftHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Handler;)V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->j:Z

    goto :goto_5

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#XH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff03XH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/MyUtils;->deleteBrowserRecord(Landroid/content/Context;)V

    new-instance v2, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;-><init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->start()V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#BF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff03BF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    const-string v2, "info"

    const-string v3, "in the BF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    :cond_14
    new-instance v2, Lcom/lenovo/safecenter/support/SMSCheckReceiver$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$3;-><init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$3;->start()V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#SD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff03SD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    :cond_17
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isLocked:Z

    const-string v2, "locked"

    sget-boolean v4, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isLocked:Z

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->lockedScreen(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#BJ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff03BJ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    :cond_1a
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isAlarm:Z

    const-string v2, "alarm"

    sget-boolean v4, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isAlarm:Z

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/MyUtils;->alarming(Landroid/content/Context;)V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#DW"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff03DW"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    const-string v2, "test"

    const-string v3, "in the DW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->h:Ljava/lang/String;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static/range {p2 .. p2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    :cond_1d
    new-instance v2, Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;-><init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;->start()V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1e
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 196
    .restart local v13    # "db":Lcom/lenovo/safecenter/database/AppDatabase;
    :cond_1f
    const-string v2, "WhiteSms"

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 198
    const-string v2, "WhiteSms"

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/WhiteSms;

    .line 199
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/WhiteSms;
    iget-object v2, v9, Lcom/lenovo/safecenter/safemode/WhiteSms;->hand:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 205
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/WhiteSms;
    .end local v13    # "db":Lcom/lenovo/safecenter/database/AppDatabase;
    :cond_20
    :try_start_1
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z

    move-result v15

    .line 206
    .local v15, "harssState":Z
    if-nez v15, :cond_21

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 211
    .end local v15    # "harssState":Z
    :catch_1
    move-exception v14

    .line 212
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    if-nez v2, :cond_22

    .line 224
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert isIntercept"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->isIntercept(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    .line 229
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->c:I

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    .line 236
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    if-nez v2, :cond_3

    .line 241
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert W_number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v8, "W_number":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "106575010089"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v2, "1065502182065130251"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v2, "106590210098"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v2, "106901166913"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v2, "10690999126186"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v2, "10690999126197"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v2, "10690999126198"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v2, "10655198000"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v2, "10655198666"

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_23

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    .line 260
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    const-string v3, "1891086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    const-string v3, "+861891086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    const-string v3, "1891177"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    const-string v3, "+861891177"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    const-string v3, "10655198"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 264
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    .line 268
    :cond_25
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 269
    new-instance v30, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct/range {v30 .. v30}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    .line 271
    .local v30, "untils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->isNetBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    .line 278
    .local v17, "isExistCon":Z
    if-eqz v17, :cond_27

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isInSmsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    .line 284
    .local v19, "isExistWhtieSMS":Z
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert isExistWhtieSMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz v19, :cond_28

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 290
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    .line 291
    .local v18, "isExistWhtie":Z
    if-eqz v18, :cond_29

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :cond_29
    if-nez v17, :cond_2b

    .line 303
    :try_start_2
    const-string v2, "openintellectharass"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarssAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intercall_mode_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    .line 305
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert openintellectharass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    const-string v3, "lezhuli.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SmsCheckUtils;->checkSmsAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 311
    .local v27, "returnCode":Z
    if-eqz v27, :cond_2a

    .line 312
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert openintellectharass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->c:I

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    .line 316
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    .line 319
    .end local v27    # "returnCode":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->isNetBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 321
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert isNetBlack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->c:I

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->abortBroadcast()V

    .line 325
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    :cond_2b
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b:Z

    if-nez v2, :cond_2c

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2c
    const-string v2, "con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":insert out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 327
    :catch_2
    move-exception v14

    .line 328
    .local v14, "e":Ljava/lang/Error;
    invoke-virtual {v14}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_6
.end method

.method public sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;
    .param p5, "simIntent"    # Landroid/content/Intent;

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "black_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "black_body"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "black_date"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "fromtype"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intercall_mode_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v1, "ACTION_BLACK_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SMS_RECEIVED_ON_SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p5}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Landroid/content/Intent;)V

    .line 520
    :cond_0
    return-void
.end method

.method public showNotify(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 524
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 526
    .local v3, "manager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;

    invoke-direct {v1, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v7, "Type"

    const-string v8, "sms"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v7, "style"

    sget v8, Lcom/lenovo/safecenter/utils/Constant;->SMS_NOTI_ID:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    const/high16 v7, 0x20000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 534
    .local v0, "intent":Landroid/app/PendingIntent;
    const-string v7, "smsnotifytitle"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 536
    const v7, 0x7f0d01d5

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "title":Ljava/lang/String;
    :goto_0
    const v4, 0x7f0202f2

    .line 545
    .local v4, "resId":I
    const-string v7, "changesmsimg"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 547
    const v4, 0x7f020209

    .line 549
    :cond_0
    new-instance v2, Landroid/app/Notification;

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v4, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 550
    .local v2, "mNotification":Landroid/app/Notification;
    const-string v7, "sms_mode"

    invoke-static {p1, v7}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getHarssAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 573
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v2, p1, v5, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 575
    sget v7, Lcom/lenovo/safecenter/utils/Constant;->SMS_NOTI_ID:I

    invoke-virtual {v3, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    return-void

    .line 540
    .end local v2    # "mNotification":Landroid/app/Notification;
    .end local v4    # "resId":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    const-string v7, "smsnotifytitle"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_0

    .line 553
    .restart local v2    # "mNotification":Landroid/app/Notification;
    .restart local v4    # "resId":I
    :cond_3
    const-string v7, "sms_mode"

    invoke-static {p1, v7}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getHarssAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 558
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_1

    .line 563
    :cond_4
    const v7, 0x7f060008

    invoke-static {p1, v7}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a:Landroid/media/MediaPlayer;

    .line 564
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 567
    :cond_5
    const-string v7, "sms_mode"

    invoke-static {p1, v7}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getHarssAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 570
    .local v6, "vv":Landroid/os/Vibrator;
    const/4 v7, 0x4

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    :array_0
    .array-data 8
        0x64
        0xa
        0x64
        0x3e8
    .end array-data
.end method
