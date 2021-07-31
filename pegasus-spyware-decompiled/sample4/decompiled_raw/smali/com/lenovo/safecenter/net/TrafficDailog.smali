.class public Lcom/lenovo/safecenter/net/TrafficDailog;
.super Landroid/app/Activity;
.source "TrafficDailog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static n:Z


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:I

.field private e:Landroid/net/ConnectivityManager;

.field private f:Landroid/os/Handler;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/net/TrafficDailog;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->c:I

    .line 20
    const/16 v0, 0x14

    iput v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->d:I

    .line 22
    new-instance v0, Lcom/lenovo/safecenter/net/TrafficDailog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/TrafficDailog$1;-><init>(Lcom/lenovo/safecenter/net/TrafficDailog;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/TrafficDailog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficDailog;

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->c:I

    return v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/lenovo/safecenter/net/TrafficDailog;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficDailog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/TrafficDailog;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficDailog;

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->c:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficDailog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficDailog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->e:Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficDailog;->finish()V

    .line 119
    return-void

    .line 107
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/net/TrafficDailog;->n:Z

    .line 108
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionClickContinueUseInTrafficOutLimitDisableNet()V

    goto :goto_0

    .line 111
    :pswitch_1
    sput-boolean v1, Lcom/lenovo/safecenter/net/TrafficDailog;->n:Z

    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 113
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionClickDisableNetInTrafficOutLimitDisableNet()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x7f090416
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0300b6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->setContentView(I)V

    .line 39
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->e:Landroid/net/ConnectivityManager;

    .line 41
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficDailog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sim_card_postion"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->a:I

    .line 42
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->b:I

    .line 43
    const v0, 0x7f0d07f6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->l:Ljava/lang/String;

    .line 44
    const v0, 0x7f0d07fc

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->m:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->a:I

    if-nez v0, :cond_1

    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->b:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->l:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->k:Ljava/lang/String;

    .line 54
    :goto_0
    const v0, 0x7f090413

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090416

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->g:Landroid/widget/TextView;

    const v0, 0x7f090417

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->h:Landroid/widget/TextView;

    const v0, 0x7f090412

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficDailog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->h:Landroid/widget/TextView;

    const v1, 0x7f0d07f5

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/TrafficDailog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->l:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->k:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->l:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficDailog;->k:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/lenovo/safecenter/net/TrafficDailog$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/TrafficDailog$2;-><init>(Lcom/lenovo/safecenter/net/TrafficDailog;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/TrafficDailog$2;->start()V

    .line 96
    return-void
.end method
