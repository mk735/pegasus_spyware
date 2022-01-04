.class final Lcom/lenovo/safecenter/net/TrafficDailog$1;
.super Landroid/os/Handler;
.source "TrafficDailog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/TrafficDailog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/TrafficDailog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/TrafficDailog;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$1;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 29
    :goto_0
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog$1;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->b(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$1;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    const v2, 0x7f0d07f5

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/TrafficDailog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/safecenter/net/TrafficDailog$1;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/TrafficDailog;->a(Lcom/lenovo/safecenter/net/TrafficDailog;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x7f090417
        :pswitch_0
    .end packed-switch
.end method
