.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;
.super Ljava/lang/Object;
.source "NetSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 665
    const-string v0, "4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int 1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->o(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",int 2 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->q(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->o(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setNetCorrectCycle(I)V

    .line 669
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoTrafficCorrectSim1(Landroid/content/Context;)V

    .line 679
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    .line 680
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->o(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setNetCorrectCycle(I)V

    .line 673
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setNetCorrectCycle2(I)V

    .line 674
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoTrafficCorrectSim1(Landroid/content/Context;)V

    .line 676
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoTrafficCorrectSim2(Landroid/content/Context;)V

    goto :goto_0
.end method
