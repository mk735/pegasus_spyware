.class public Lcom/lenovo/safecenter/net/TrafficStatistics;
.super Landroid/app/Activity;
.source "TrafficStatistics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;


# instance fields
.field private A:I

.field private B:Ljava/lang/Runnable;

.field private a:Landroid/view/animation/TranslateAnimation;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

.field private l:Landroid/content/Context;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/net/support/TrafficDate;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field private n:I

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/HorizontalScrollView;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:I

.field private w:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

.field private x:I

.field private y:J

.field private z:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/lenovo/safecenter/net/TrafficStatistics$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/TrafficStatistics$1;-><init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    .line 390
    new-instance v0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/TrafficStatistics$4;-><init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->B:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/TrafficStatistics;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->m:Ljava/util/HashMap;

    return-object p1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    .line 115
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->y:J

    .line 116
    iget-wide v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->y:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->t:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->e:Landroid/widget/ImageView;

    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->e:Landroid/widget/ImageView;

    const v3, 0x7f0201f6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->t:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->t:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    rsub-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v8, v0, v3

    .line 124
    .local v8, "flag":F
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_1

    .line 125
    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr v8, v0

    .line 128
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->a:Landroid/view/animation/TranslateAnimation;

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->a:Landroid/view/animation/TranslateAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->a:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->a:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->a:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/TrafficStatistics;)V
    .locals 12
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayCountInMonth()I

    move-result v3

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v4

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentYear()I

    move-result v5

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->x:I

    const/4 v7, -0x1

    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v7, -0x2

    invoke-direct {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setId(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0200bd

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->x:I

    const/4 v1, -0x1

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->m:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/support/TrafficDate;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    const/4 v10, -0x1

    invoke-virtual {v9, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setId(I)V

    const v10, 0x7f020129

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v7, v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xe

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    int-to-long v10, v0

    invoke-static {v10, v11, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->formatTraffic(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_0
    iget v1, v0, Lcom/lenovo/safecenter/net/support/TrafficDate;->height:I

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/lenovo/safecenter/net/support/TrafficDate;->total:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const v8, 0x7f0d07a3

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 256
    sget v2, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 257
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->initNetCache(Landroid/content/Context;)V

    .line 259
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed()I

    move-result v2

    iput v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    .line 260
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->y:J

    .line 261
    const-string v2, "letrafficui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",monthFree1 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->y:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 263
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    const-string v3, "#348213"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    :goto_0
    iget-wide v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->y:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_2

    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->u:Landroid/widget/TextView;

    const v3, 0x7f0d07dc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->w:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->A:I

    if-ne v2, v7, :cond_3

    .line 274
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    const v3, 0x7f0d07e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d07e5

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_2
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v2

    iput v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->n:I

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v7, :cond_7

    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->w:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->h:Landroid/widget/TextView;

    const-string v3, "0.00B"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_3
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    const-string v3, "#cd3737"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->u:Landroid/widget/TextView;

    const v3, 0x7f0d07ab

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 277
    :cond_3
    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    const v3, 0x7f0d07a9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    const-string v3, "\u2014"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    const-string v3, "#dc5e2c"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d07bf

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    const v3, 0x7f0d07ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 289
    iget-wide v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->y:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_5

    .line 290
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v2

    neg-long v0, v2

    .line 291
    .local v0, "tmp":J
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->j:Landroid/widget/TextView;

    const v3, 0x7f0d07bc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 295
    .end local v0    # "tmp":J
    :cond_5
    iget v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->v:I

    const/16 v3, 0x5a

    if-ge v2, v3, :cond_6

    .line 296
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->j:Landroid/widget/TextView;

    const v3, 0x7f0d07ba

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 301
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->j:Landroid/widget/TextView;

    const v3, 0x7f0d07bb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 308
    :cond_7
    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/TrafficStatistics;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->b()V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/TrafficStatistics;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->a()V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/TrafficStatistics;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->k:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->z:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->p:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/net/TrafficStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->x:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/TrafficStatistics;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->n:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 214
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->finish()V

    goto :goto_0

    .line 217
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "mSettingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    .end local v0    # "mSettingIntent":Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    const-string v2, "type_traffic_monitor"

    const-string v3, "action_app_usenet_contorl"

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->removeActionToType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntentNetFilter(Landroid/content/Context;)V

    goto :goto_0

    .line 226
    :sswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d07a9

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/4 v1, 0x6

    invoke-static {p0, p0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d07ce

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showSetNetWorkDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {v3, p0, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntent2TrafficCorrect(ILandroid/content/Context;I)V

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x7f0905ad -> :sswitch_0
        0x7f0905ae -> :sswitch_1
        0x7f0905e6 -> :sswitch_2
        0x7f0905f5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0xa

    .line 83
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->finish()V

    .line 88
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getTraffic_view_width()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->x:I

    .line 90
    const-string v3, "testdip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v3, 0x7f030121

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->setContentView(I)V

    .line 92
    sget-object v3, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->initNetCache(Landroid/content/Context;)V

    .line 95
    :cond_1
    iput-object p0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    .line 96
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->z:Landroid/content/SharedPreferences;

    .line 97
    sget v3, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    if-ne v3, v6, :cond_2

    .line 98
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setMonthLimit(Landroid/content/Context;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "key":Ljava/lang/String;
    const-string v3, "key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 105
    :cond_3
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->k:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 106
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    sput-object v3, Lcom/lenovo/safecenter/utils/Const;->trafficHandler:Landroid/os/Handler;

    .line 107
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->w:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .line 108
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->A:I

    .line 109
    const v3, 0x7f0905ad

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->b:Landroid/widget/ImageView;

    const v3, 0x7f0905ae

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->c:Landroid/widget/ImageView;

    const v3, 0x7f090590

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->f:Landroid/widget/TextView;

    const v4, 0x7f0d07ae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x7f0905f0

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->g:Landroid/widget/TextView;

    const v3, 0x7f0905f1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->h:Landroid/widget/TextView;

    const v3, 0x7f0905f4

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0905e5

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->o:Landroid/widget/LinearLayout;

    const v3, 0x7f0905e4

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->p:Landroid/widget/HorizontalScrollView;

    const v3, 0x7f0905e6

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->q:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0905f2

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->r:Landroid/widget/RelativeLayout;

    const v3, 0x7f0905ea

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->j:Landroid/widget/TextView;

    const v3, 0x7f0905f5

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->s:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0905ed

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->d:Landroid/widget/ImageView;

    const v3, 0x7f0905ee

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->t:Landroid/widget/TextView;

    const v3, 0x7f0905ef

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->e:Landroid/widget/ImageView;

    const v3, 0x7f0905f3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->u:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->p:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/net/TrafficStatistics$3;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/net/TrafficStatistics$3;-><init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 110
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->w:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->g:Landroid/widget/TextView;

    const-string v4, "0.00B"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->b()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/net/TrafficStatistics;->a()V

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/net/TrafficStatistics$2;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/net/TrafficStatistics$2;-><init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 313
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    const v1, 0x7f0905e8

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 244
    .local v0, "mNewFeatureIcon":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    const-string v2, "type_traffic_monitor"

    const-string v3, "action_app_usenet_contorl"

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->hasActionInType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    :goto_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 253
    return-void

    .line 249
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSettingNumberDialogCancel([II)V
    .locals 0
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    .line 441
    return-void
.end method

.method public onSettingNumberDialogOK([II)V
    .locals 3
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x0

    .line 424
    sget v0, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 425
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 433
    iget-object v0, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    return-void

    .line 429
    :cond_1
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    goto :goto_0
.end method
