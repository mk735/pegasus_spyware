.class final Lcom/lenovo/safecenter/broadcast/sendMsgService$1;
.super Ljava/lang/Thread;
.source "sendMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/sendMsgService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/lenovo/safecenter/broadcast/sendMsgService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/sendMsgService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->a:Landroid/content/Intent;

    const-string v3, "phone_number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a(Lcom/lenovo/safecenter/broadcast/sendMsgService;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->a:Landroid/content/Intent;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b(Lcom/lenovo/safecenter/broadcast/sendMsgService;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v3}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " smsMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v3}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->c(Lcom/lenovo/safecenter/broadcast/sendMsgService;)I

    move-result v1

    if-lez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v3}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/safecenter/utils/Const;->isTariff:Z

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v2}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->b:Lcom/lenovo/safecenter/broadcast/sendMsgService;

    invoke-static {v3}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
