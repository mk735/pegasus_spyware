.class final Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;
.super Landroid/os/Handler;
.source "TrafficStatisticsDoubleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->drawDayTrafficIsNotSetup(I)V

    .line 73
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    sget-object v2, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;)Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->drawDayTrafficIsNotSetup(I)V

    .line 77
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    sget-object v2, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->b:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;)Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    goto :goto_0

    .line 80
    :pswitch_3
    sput-boolean v2, Lcom/lenovo/safecenter/net/cache/NetCache;->canCorrect:Z

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    .line 84
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    goto :goto_0

    .line 87
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .local v0, "pos":I
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;I)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
