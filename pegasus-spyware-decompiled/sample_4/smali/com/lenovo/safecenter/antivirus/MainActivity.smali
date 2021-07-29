.class public Lcom/lenovo/safecenter/antivirus/MainActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

.field c:Landroid/widget/LinearLayout;

.field d:I

.field e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

.field private l:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

.field private m:Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

.field private n:Lcom/lenovo/safecenter/utils/LeSafeObservable;

.field private o:[Landroid/widget/ImageView;

.field private p:Landroid/os/Handler;

.field private q:Lcom/tencent/tmsecure/module/update/UpdateManager;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 515
    new-instance v0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$4;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->p:Landroid/os/Handler;

    .line 550
    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->q:Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 684
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->l:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/MainActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->r:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 13

    .prologue
    const v12, 0x7f02032c

    const/4 v11, 0x7

    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "detail":Ljava/lang/String;
    const/4 v2, 0x0

    .line 339
    .local v2, "spannable":Landroid/text/SpannableString;
    const-string v4, "scantime"

    invoke-static {v4, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v4, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v4, v7

    :cond_0
    const-wide/32 v7, 0x5265c00

    div-long/2addr v4, v7

    long-to-int v1, v4

    .line 341
    .local v1, "scanInterval":I
    const-string v4, "viruspkgname"

    invoke-static {v4, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v6

    .line 342
    .local v3, "virusCount":I
    :goto_0
    if-eqz v3, :cond_5

    .line 345
    if-ge v1, v9, :cond_3

    .line 346
    const v4, 0x7f0d0554

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 351
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v4

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_2

    .line 353
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v2, v4, v6, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 363
    :goto_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 365
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v2, v4, v6, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 399
    :goto_2
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->h:Landroid/widget/TextView;

    const v5, 0x7f0d03d8

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    const v5, 0x7f02032f

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 449
    :goto_3
    return-void

    .line 341
    .end local v3    # "virusCount":I
    :cond_1
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    goto :goto_0

    .line 359
    .restart local v3    # "virusCount":I
    :cond_2
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v2, v4, v6, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 370
    :cond_3
    const v4, 0x7f0d0555

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 375
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v4

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_4

    .line 378
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v2, v4, v11, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 389
    :goto_4
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v2, v4, v11, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 391
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v2, v4, v11, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 384
    :cond_4
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v2, v4, v11, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 406
    :cond_5
    const-string v4, "scantime"

    invoke-static {v4, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 408
    const v4, 0x7f0d0559

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 413
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->h:Landroid/widget/TextView;

    const v5, 0x7f0d03d8

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 419
    :cond_6
    if-gt v1, v9, :cond_7

    .line 420
    const v4, 0x7f090182

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0558

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090180

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 421
    :cond_7
    const/16 v4, 0x63

    if-gt v1, v4, :cond_8

    .line 423
    const v4, 0x7f0d0556

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 428
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->h:Landroid/widget/TextView;

    const v5, 0x7f0d03d8

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 436
    :cond_8
    const v4, 0x7f0d0557

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    new-instance v2, Landroid/text/SpannableString;

    .end local v2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 441
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->h:Landroid/widget/TextView;

    const v5, 0x7f0d03d8

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->m:Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->k:Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/antivirus/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/tencent/tmsecure/module/update/UpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/MainActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->q:Lcom/tencent/tmsecure/module/update/UpdateManager;

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 672
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.M.dd.HH.mm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 675
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "datatime":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "timeArray":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "formatTime":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public OnViewChange(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 137
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->d:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->e:I

    if-ne v0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->e:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->e:I

    goto :goto_0
.end method

.method public getS_view(III)Landroid/view/View;
    .locals 6
    .param p1, "title"    # I
    .param p2, "message"    # I
    .param p3, "iconImg"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030124

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0903df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, "name":Landroid/widget/TextView;
    const v3, 0x7f0903e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    .local v0, "discription":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 200
    return-object v2
.end method

.method public initGrally()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public initscroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    const v1, 0x7f090187

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    .line 157
    const v1, 0x7f090186

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->c:Landroid/widget/LinearLayout;

    .line 158
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v1

    const/16 v2, 0x320

    if-ge v1, v2, :cond_0

    .line 160
    const v1, 0x7f090185

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->d:I

    .line 165
    iget v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->d:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->d:I

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 168
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->o:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    invoke-virtual {v1, p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->SetOnViewChangeListener(Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;)V

    goto :goto_0
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$2;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$3;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->finish()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ba

    if-ne v0, v1, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f020286

    .line 81
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->setContentView(I)V

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isOpen:Z

    .line 87
    const v0, 0x7f090191

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->j:Landroid/widget/ListView;

    .line 88
    const v0, 0x7f090192

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->i:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f090180

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    .line 91
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v0

    const/16 v1, 0x320

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    :goto_0
    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->g:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->h:Landroid/widget/TextView;

    .line 98
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->l:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 99
    const-string v0, "txt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09017e

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d02b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/MainActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->n:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 103
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->n:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->onBtnClick()V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->initscroll()V

    .line 109
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->a:Landroid/view/View;

    const v1, 0x7f02032c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 318
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isOpen:Z

    .line 320
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 256
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 257
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->l:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getLatestLog()Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->m:Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->setNetShow()V

    .line 233
    new-instance v1, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->k:Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

    .line 234
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->k:Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->a()V

    .line 236
    const-string v1, "del_viruslog"

    invoke-static {v1, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Lcom/lenovo/safecenter/antivirus/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity$1;->start()V

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 253
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNetShow()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/MainActivity$5;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 651
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 483
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 484
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 488
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->a()V

    goto :goto_0

    .line 492
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->a()V

    goto :goto_0

    .line 496
    :sswitch_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->a()V

    goto :goto_0

    .line 501
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 502
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    goto :goto_0

    .line 505
    :sswitch_4
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
        0x13 -> :sswitch_2
    .end sparse-switch
.end method
