.class final Lcom/lenovo/safecenter/platform/BootBroadcast$3;
.super Landroid/os/Handler;
.source "BootBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/BootBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-static {}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->lockedScreen(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
