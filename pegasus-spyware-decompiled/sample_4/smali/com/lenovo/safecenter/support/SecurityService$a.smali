.class final Lcom/lenovo/safecenter/support/SecurityService$a;
.super Landroid/telephony/PhoneStateListener;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 1

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1019
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService$a;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1027
    :pswitch_0
    :try_start_0
    const-string v4, "endCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_STATE_IDLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v4, 0x0

    sput-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    .line 1030
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->a()V

    .line 1031
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1033
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->f(Lcom/lenovo/safecenter/support/SecurityService;)V

    .line 1035
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->g(Lcom/lenovo/safecenter/support/SecurityService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1037
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;Z)Z

    .line 1038
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->h(Lcom/lenovo/safecenter/support/SecurityService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v2

    .line 1240
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1044
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v4, "endCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_STATE_OFFHOOK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v4, 0x1

    sput-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    .line 1046
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->i(Lcom/lenovo/safecenter/support/SecurityService;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1048
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1049
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1050
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "number"

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v7}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1075
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1077
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    .line 1078
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswerTime:J

    goto/16 :goto_0

    .line 1052
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->i(Lcom/lenovo/safecenter/support/SecurityService;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1054
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1082
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    .line 1086
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v0, v4}, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    .line 1087
    .local v0, "callinfo":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    iput-object p2, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    .line 1088
    const/4 v4, 0x0

    iput v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    .line 1089
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;I)I

    .line 1090
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lenovo.safecenter.RECEIVE_PHONE_CALL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1093
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->getSetNullNumber()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1095
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->endCall()V

    .line 1096
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v6, 0x7f0d014e

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_0

    .line 1100
    :cond_3
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;Z)Z

    .line 1101
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    :cond_4
    sget-object v4, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1108
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->b(Lcom/lenovo/safecenter/support/SecurityService;I)I

    .line 1109
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "privateCall_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1110
    .local v1, "callmode":I
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mVipCode:Z

    .line 1111
    if-eq v1, v7, :cond_5

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 1112
    :cond_5
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1113
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->k(Lcom/lenovo/safecenter/support/SecurityService;)Z

    .line 1114
    sget-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    if-nez v4, :cond_6

    .line 1116
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->endCall()V

    .line 1118
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    .line 1119
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    iget v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1120
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    .line 1225
    .end local v1    # "callmode":I
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    .line 1226
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-nez v4, :cond_0

    .line 1229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(J)J

    .line 1232
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1233
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1234
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1129
    .end local v3    # "msg":Landroid/os/Message;
    :cond_8
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1131
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->judgeNightHarass(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1133
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nightharss_callmode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_c

    .line 1135
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4, v5, p2}, Lcom/lenovo/safecenter/support/SecurityService;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1137
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1138
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->l(Lcom/lenovo/safecenter/support/SecurityService;)Z

    .line 1139
    sget-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    if-nez v4, :cond_9

    .line 1141
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->endCall()V

    .line 1146
    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    .line 1147
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    iget v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1148
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    .line 1149
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-static {v4, p2, v5, v6, v7}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_2

    .line 1144
    :cond_9
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v5, 0x7f0d04a6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1153
    :cond_a
    sget-object v4, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1155
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1156
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->l(Lcom/lenovo/safecenter/support/SecurityService;)Z

    .line 1157
    sget-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    if-nez v4, :cond_b

    .line 1159
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->endCall()V

    .line 1164
    :goto_4
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    .line 1165
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    iget v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1166
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    .line 1167
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-static {v4, p2, v5, v6, v7}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_2

    .line 1162
    :cond_b
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v5, 0x7f0d04a6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1172
    :cond_c
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nightharss_callmode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 1174
    sget-object v4, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1176
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1177
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->l(Lcom/lenovo/safecenter/support/SecurityService;)Z

    .line 1178
    sget-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    if-nez v4, :cond_d

    .line 1180
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->endCall()V

    .line 1185
    :goto_5
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    .line 1186
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    iget v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1187
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    .line 1188
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-static {v4, p2, v5, v6, v7}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_2

    .line 1183
    :cond_d
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v5, 0x7f0d04a6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 1194
    :cond_e
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4, v5, p2}, Lcom/lenovo/safecenter/support/SecurityService;->isIntercept(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1196
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1197
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->l(Lcom/lenovo/safecenter/support/SecurityService;)Z

    .line 1198
    sget-boolean v4, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    if-nez v4, :cond_f

    .line 1200
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SecurityService;->endCall()V

    .line 1205
    :goto_6
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    .line 1206
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    iget v5, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1207
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->b:I

    .line 1208
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x6

    invoke-static {v4, p2, v5, v6, v7}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 1210
    const-string v4, "endCall"

    const-string v5, "!getHarssStatus()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1203
    :cond_f
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$a;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v5, 0x7f0d04a6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
