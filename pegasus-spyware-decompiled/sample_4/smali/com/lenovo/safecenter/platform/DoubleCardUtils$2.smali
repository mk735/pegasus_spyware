.class final Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "DoubleCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/DoubleCardUtils;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/telephony/SmsManager;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->b:Landroid/telephony/SmsManager;

    iput-object p3, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->getResultCode()I

    move-result v6

    .line 208
    .local v6, "code":I
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    packed-switch v6, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 211
    :pswitch_1
    const-string v0, "test"

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->a:Landroid/content/Context;

    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->a()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->finishStartingService()V

    goto :goto_0

    .line 223
    :pswitch_2
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 225
    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->beginStartingService(Landroid/content/Context;)V

    .line 231
    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->b:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 236
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i()I

    goto :goto_0

    .line 226
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 232
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 233
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 209
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
