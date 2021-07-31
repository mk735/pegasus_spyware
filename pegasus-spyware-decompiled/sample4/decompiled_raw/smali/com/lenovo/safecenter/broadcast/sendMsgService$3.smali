.class final Lcom/lenovo/safecenter/broadcast/sendMsgService$3;
.super Landroid/content/BroadcastReceiver;
.source "sendMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/sendMsgService;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/safecenter/broadcast/sendMsgService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/sendMsgService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->c:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->getResultCode()I

    move-result v0

    .line 177
    .local v0, "code":I
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    packed-switch v0, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    const-string v1, "test"

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->a:Landroid/content/Context;

    const v3, 0x7f0d0108

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->finishStartingService()V

    .line 183
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->c:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->stopSelf()V

    goto :goto_0

    .line 193
    :pswitch_2
    sget v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->c:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->sendSMS(Ljava/lang/String;)V

    .line 195
    sget v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    goto :goto_0

    .line 178
    nop

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
