.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneListenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;)V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 107
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->b:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 108
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->c:Z

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "whiteperson"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "== TelephonyManager.CALL_STATE_IDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 112
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 113
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    .line 117
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->b:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->b:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 124
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SafeCenter;->isIntercept(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->c:Z

    .line 127
    const-string v2, "whiteperson"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==TelephonyManager.CALL_STATE_RINGING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->c:Z

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->endCall()V

    .line 131
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->b:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 132
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->b:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
