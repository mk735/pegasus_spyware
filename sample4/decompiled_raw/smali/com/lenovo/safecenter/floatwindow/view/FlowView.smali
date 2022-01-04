.class public Lcom/lenovo/safecenter/floatwindow/view/FlowView;
.super Landroid/widget/FrameLayout;
.source "FlowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;,
        Lcom/lenovo/safecenter/floatwindow/view/FlowView$FlowWindowListener;
    }
.end annotation


# static fields
.field private static n:Ljava/lang/Thread;

.field private static o:Z

.field private static p:J


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/lang/Runnable;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/view/ViewStub;

.field private i:Landroid/widget/ImageView;

.field private j:J

.field private k:J

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->o:Z

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->p:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->b:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c:Landroid/content/Context;

    const v1, 0x7f03004e

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090224

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->d:Landroid/widget/TextView;

    const v0, 0x7f090227

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->e:Landroid/widget/ImageView;

    const v0, 0x7f090228

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h:Landroid/view/ViewStub;

    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g:Landroid/widget/FrameLayout;

    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->f:Landroid/widget/FrameLayout;

    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->m:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 28
    sput-wide p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->p:J

    return-wide p0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/FlowView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Ljava/lang/String;
    .locals 11
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    const-wide/16 v0, 0x0

    const/16 v7, 0x64

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    const/4 v6, 0x0

    const/high16 v8, 0x44800000    # 1024.0f

    .line 28
    iget-wide v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->k:J

    iget-wide v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->j:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const-wide/16 v0, 0x3

    div-long v0, v2, v0

    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataCardPosition(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getTraffic_used_progress()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v4, v0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    float-to-double v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getTraffic_used_progress2()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_6
    long-to-double v4, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    float-to-double v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-wide/32 v4, 0x100000

    cmp-long v4, v0, v4

    if-lez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    float-to-double v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-wide/16 v4, 0x400

    cmp-long v4, v0, v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v0, v0

    div-float/2addr v0, v8

    float-to-double v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->o:Z

    return v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->p:J

    return-wide v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/FlowView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->k:J

    return-wide p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->n:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public removeHanderMessage()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    return-void
.end method

.method public sendHanderMessage()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    return-void
.end method

.method public setFlowDrawable(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 75
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnclickContent()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->l:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->i:Landroid/widget/ImageView;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 279
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->n:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$3;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V

    sput-object v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->n:Ljava/lang/Thread;

    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->p:J

    goto :goto_0
.end method

.method public setViewGone()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method
