.class final Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;
.super Ljava/lang/Object;
.source "TrafficStatisticsDoubleMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->onSettingNumberDialogOK(III)V
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
    .line 713
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 716
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 717
    return-void
.end method
