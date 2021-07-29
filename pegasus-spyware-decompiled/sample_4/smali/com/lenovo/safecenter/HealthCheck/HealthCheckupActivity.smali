.class public Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
.super Landroid/app/Activity;
.source "HealthCheckupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;
    }
.end annotation


# static fields
.field public static final HANDLER_INIT_PROGRESS_BAR:I = 0x9

.field public static final HANDLER_REFRESH_HEALTH_DETAIL:I = 0x2

.field public static final HANDLER_REFRESH_HEALTH_INDETERMINATE_PROGRESS:I = 0x6

.field public static final HANDLER_REFRESH_HEALTH_PROGRESS:I = 0x3

.field public static final HANDLER_REFRESH_HEALTH_SCORE:I = 0x0

.field public static final HANDLER_REFRESH_HEALTH_STATE:I = 0x1

.field public static final HANDLER_SAVE_CHECKTIME:I = 0x7

.field public static final HANDLER_SET_STATE:I = 0x8

.field public static final HANDLER_SHOW_TOAST:I = 0x5

.field public static final HANDLER_STATE_CHANGE:I = 0x4


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/ProgressBar;

.field private f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->d:Landroid/os/Handler;

    .line 166
    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->k:Ljava/util/HashMap;

    .line 167
    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l:Ljava/util/HashMap;

    .line 168
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    .line 588
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->i:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 352
    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    .line 353
    .local v0, "mHealthScoreRing":Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->beginAnim()V

    .line 354
    return-void
.end method

.method static synthetic a(ILjava/lang/Object;Landroid/os/Handler;)V
    .locals 1
    .param p0, "x1"    # I
    .param p1, "x2"    # Ljava/lang/Object;
    .param p2, "x3"    # Landroid/os/Handler;

    .prologue
    .line 100
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private a(Landroid/text/SpannableString;)V
    .locals 2
    .param p1, "datail"    # Landroid/text/SpannableString;

    .prologue
    .line 440
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 441
    .local v0, "healthDetail":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "datail"    # Ljava/lang/String;

    .prologue
    .line 428
    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 429
    .local v0, "healthState":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 358
    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    .line 359
    .local v0, "mHealthScoreRing":Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->stopAnim()V

    .line 360
    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    return p1
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "detail":Ljava/lang/String;
    const/4 v0, 0x0

    .line 396
    .local v0, "canOptimizationItemNum":I
    const/4 v2, 0x0

    .line 397
    .local v2, "spannable":Landroid/text/SpannableString;
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 398
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumCanOptimizationItem()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumDangerItem()I

    move-result v4

    add-int v0, v3, v4

    .line 400
    const v3, 0x7f0d047b

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 404
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 407
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 411
    :cond_0
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 412
    const v3, 0x7f0d047c

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Ljava/lang/String;)V

    .line 413
    const v3, 0x7f090042

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    :goto_0
    return-void

    .line 414
    :cond_1
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_2

    .line 415
    const v3, 0x7f0d046e

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Landroid/text/SpannableString;)V

    goto :goto_0

    .line 417
    :cond_2
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_3

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    const/16 v4, 0x4b

    if-gt v3, v4, :cond_3

    .line 418
    const v3, 0x7f0d046f

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Landroid/text/SpannableString;)V

    goto :goto_0

    .line 421
    :cond_3
    const v3, 0x7f0d0470

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Landroid/text/SpannableString;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->refreshHealthScore(I)V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j:I

    return p1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 475
    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 476
    .local v0, "percent":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 478
    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->optimize(Ljava/util/ArrayList;)V

    .line 539
    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    const/16 v1, 0x64

    .line 100
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->i:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->i:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j:I

    div-int/2addr v2, v3

    const-string v3, "d"

    const-string v4, "wu0wu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScanProgress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",MAX_PROGRESS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-le v2, v1, :cond_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->d()V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f()V
    .locals 4

    .prologue
    .line 543
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->isHealthCheckNoOptimiza(Ljava/lang/Boolean;)V

    .line 544
    const-string v1, "i"

    const-string v2, "wu0wu"

    const-string v3, "HealthCheckup saveHealthScoreAndCheckupTime..."

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    .line 547
    .local v0, "score":I
    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 548
    const/16 v0, 0x64

    .line 552
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setHealthCheckupScore(I)V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/Const;->setHealthCheckupTime(J)V

    .line 554
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isFirstHealthCheckup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->setFirstHealthCheckup()Z

    .line 557
    :cond_1
    return-void

    .line 549
    :cond_2
    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h:I

    if-gez v1, :cond_0

    .line 550
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->d()V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 100
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09004c

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic h(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->k:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a()V

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->k:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b()V

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->k:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic i(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->exit()V

    return-void
.end method

.method static synthetic l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 325
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e()V

    .line 326
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionHealthOptimizeImmediately()V

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->exit()V

    .line 331
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->finish()V

    goto :goto_0

    .line 334
    :pswitch_3
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionCancelHealthCheck()V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->exit()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->finish()V

    goto :goto_0

    .line 337
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x7f090046
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    const-string v0, "wu0wu"

    const-string v1, "HealthCheckupActivity onCreate..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-object p0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a:Landroid/content/Context;

    .line 243
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->setContentView(I)V

    .line 244
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d046a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$3;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/util/HealthStatus;->getStatus(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->k:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/util/HealthViewType;->getViewTypes(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->isHealthCheckNoOptimiza(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportRootEnable()V

    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b:Landroid/widget/ListView;

    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09004c

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090046

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e:Landroid/widget/ProgressBar;

    .line 245
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->scan(Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)V

    .line 246
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 311
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->exit()V

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->finish()V

    .line 316
    :cond_0
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 295
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 297
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setItemsManual()V

    .line 290
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 291
    return-void
.end method
