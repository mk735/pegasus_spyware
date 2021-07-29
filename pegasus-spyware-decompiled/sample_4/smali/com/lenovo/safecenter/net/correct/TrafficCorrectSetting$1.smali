.class final Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;
.super Landroid/os/Handler;
.source "TrafficCorrectSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/Utils;->setCanCorrectFlag(Landroid/content/Context;Z)V

    .line 59
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch here and cancorrect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/Utils;->getCanCorrectFlag(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->finish()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
