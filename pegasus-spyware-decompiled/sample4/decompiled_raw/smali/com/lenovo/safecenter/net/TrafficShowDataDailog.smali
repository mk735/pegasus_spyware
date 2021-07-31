.class public Lcom/lenovo/safecenter/net/TrafficShowDataDailog;
.super Landroid/app/Activity;
.source "TrafficShowDataDailog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->e:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020179

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 43
    return-void

    .line 42
    :cond_0
    const v0, 0x7f020178

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionClickIgnorePopupTrafficUsedStatus()V

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->finish()V

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntentTraffic(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionClickLookPopupTrafficUsedStatus()V

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->finish()V

    goto :goto_0

    .line 67
    :pswitch_3
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->f:Z

    .line 68
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->a()V

    .line 69
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->f:Z

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setTrafficDaliogNoticeValue(Landroid/content/Context;Z)V

    .line 70
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionClickNotPromptPopupTrafficUsedStatus()V

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x7f090414
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0300b6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->setContentView(I)V

    .line 23
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficDaliogNoticeValue(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->f:Z

    .line 24
    const v0, 0x7f090416

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->a:Landroid/widget/TextView;

    const v0, 0x7f090417

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->b:Landroid/widget/TextView;

    const v0, 0x7f090411

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->c:Landroid/widget/TextView;

    const v0, 0x7f090412

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->c:Landroid/widget/TextView;

    const v1, 0x7f0d07f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->b:Landroid/widget/TextView;

    const v1, 0x7f0d07f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->a:Landroid/widget/TextView;

    const v1, 0x7f0d07f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->d:Landroid/widget/TextView;

    const v1, 0x7f0d07fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090414

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->e:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->a()V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 48
    return-void
.end method
