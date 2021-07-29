.class final Lcom/lenovo/safecenter/net/TrafficStatistics$1;
.super Landroid/os/Handler;
.source "TrafficStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/TrafficStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/TrafficStatistics;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$1;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$1;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->a(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/net/cache/NetCache;->canCorrect:Z

    goto :goto_0

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$1;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->b(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$1;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->c(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
