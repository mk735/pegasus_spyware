.class final Lcom/lenovo/safecenter/net/support/TrafficStatsService$1;
.super Landroid/os/Handler;
.source "TrafficStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/support/TrafficStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 147
    :sswitch_0
    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Z)Z

    goto :goto_0

    .line 150
    :sswitch_1
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/Utils;->setCanCorrectFlag(Landroid/content/Context;Z)V

    .line 151
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch here and cancorrect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/Utils;->getCanCorrectFlag(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
