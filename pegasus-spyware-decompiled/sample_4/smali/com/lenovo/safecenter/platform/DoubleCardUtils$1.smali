.class final Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->getResultCode()I

    move-result v7

    .line 110
    .local v7, "code":I
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    packed-switch v7, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 113
    :pswitch_1
    const-string v0, "test"

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->a:Landroid/content/Context;

    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->a()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->finishStartingService()V

    goto :goto_0

    .line 125
    :pswitch_2
    sget-boolean v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->b()I

    move-result v0

    if-gt v0, v4, :cond_1

    .line 127
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->beginStartingService(Landroid/content/Context;)V

    .line 133
    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_2
    const-string v0, "test"

    const-string v1, "card1 sendSMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->c:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 139
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e()I

    goto :goto_0

    .line 128
    :catch_0
    move-exception v8

    .line 129
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 135
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-boolean v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f()I

    move-result v0

    if-gt v0, v4, :cond_0

    .line 142
    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    :goto_3
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->beginStartingService(Landroid/content/Context;)V

    .line 148
    const-wide/16 v0, 0x1388

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 152
    :goto_4
    const-string v0, "test"

    const-string v1, "card2 sendSMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;->c:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 154
    invoke-static {}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g()I

    goto/16 :goto_0

    .line 143
    :catch_2
    move-exception v8

    .line 144
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 149
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v8

    .line 150
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 111
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
