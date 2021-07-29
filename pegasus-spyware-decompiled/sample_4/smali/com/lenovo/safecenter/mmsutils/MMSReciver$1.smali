.class final Lcom/lenovo/safecenter/mmsutils/MMSReciver$1;
.super Ljava/lang/Thread;
.source "MMSReciver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/mmsutils/MMSReciver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/mmsutils/MMSReciver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/mmsutils/MMSReciver;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/mmsutils/MMSReciver$1;->a:Lcom/lenovo/safecenter/mmsutils/MMSReciver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 52
    iget-object v13, p0, Lcom/lenovo/safecenter/mmsutils/MMSReciver$1;->a:Lcom/lenovo/safecenter/mmsutils/MMSReciver;

    iget-object v13, v13, Lcom/lenovo/safecenter/mmsutils/MMSReciver;->b:Landroid/content/Intent;

    const-string v14, "data"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 53
    .local v9, "pushData":[B
    new-instance v7, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;

    invoke-direct {v7, v9}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;-><init>([B)V

    .line 54
    .local v7, "parser":Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;
    invoke-virtual {v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parse()Lcom/lenovo/safecenter/mmsutils/GenericPdu;

    move-result-object v8

    .line 55
    .local v8, "pdu":Lcom/lenovo/safecenter/mmsutils/GenericPdu;
    if-nez v8, :cond_0

    .line 56
    const-string v13, "Push Receiver"

    const-string v14, "Invalid PUSH data"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v0, v9, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 70
    .local v0, "all_data":Ljava/lang/String;
    const-string v13, "Push Receiver"

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "all_data":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->getFrom()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "val_from":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->getMessageType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 117
    :goto_2
    const-string v13, "Push Receiver"

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v13, p0, Lcom/lenovo/safecenter/mmsutils/MMSReciver$1;->a:Lcom/lenovo/safecenter/mmsutils/MMSReciver;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/lenovo/safecenter/mmsutils/MMSReciver;->a:Landroid/content/Context;

    .line 125
    iget-object v13, p0, Lcom/lenovo/safecenter/mmsutils/MMSReciver$1;->a:Lcom/lenovo/safecenter/mmsutils/MMSReciver;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/lenovo/safecenter/mmsutils/MMSReciver;->b:Landroid/content/Intent;

    goto :goto_0

    .line 71
    .end local v12    # "val_from":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e2":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .end local v3    # "e2":Ljava/io/UnsupportedEncodingException;
    .restart local v12    # "val_from":Ljava/lang/String;
    :pswitch_0
    move-object v6, v8

    .line 80
    check-cast v6, Lcom/lenovo/safecenter/mmsutils/NotificationInd;

    .line 82
    .local v6, "npdu":Lcom/lenovo/safecenter/mmsutils/NotificationInd;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getContentLocation()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v4, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 83
    .local v4, "location":Ljava/lang/String;
    const-string v13, "Push Receiver"

    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    .end local v4    # "location":Ljava/lang/String;
    :goto_3
    :try_start_2
    invoke-virtual {v6}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getSubject()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "subject":Ljava/lang/String;
    const-string v13, "Push Receiver"

    invoke-static {v13, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 100
    .end local v10    # "subject":Ljava/lang/String;
    :goto_4
    :try_start_3
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getTransactionId()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 101
    .local v11, "transactionId":Ljava/lang/String;
    const-string v13, "Push Receiver"

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    .line 109
    .end local v11    # "transactionId":Ljava/lang/String;
    :goto_5
    :try_start_4
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getMessageClass()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v5, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 110
    .local v5, "messageType":Ljava/lang/String;
    const-string v13, "Push Receiver"

    invoke-static {v13, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 111
    .end local v5    # "messageType":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 88
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 93
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v2

    .line 95
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 102
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 104
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 78
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method
