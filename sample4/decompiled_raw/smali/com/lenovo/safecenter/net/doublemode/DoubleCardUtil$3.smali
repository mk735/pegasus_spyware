.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showCorrectDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 566
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->b:Landroid/content/Context;

    const v3, 0x7f0d07e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v0, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->b:Landroid/content/Context;

    const v2, 0x7f0d07ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;->b:Landroid/content/Context;

    invoke-static {v2, v0, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntent2TrafficCorrect(ILandroid/content/Context;I)V

    goto :goto_0
.end method
