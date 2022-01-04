.class public Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;
.super Landroid/widget/BaseAdapter;
.source "PrivateMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/PrivateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateItemApater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 395
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 398
    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v4

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.lenovo.safebox"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 404
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 414
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 428
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 435
    if-nez p2, :cond_1

    .line 436
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 437
    new-instance v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;B)V

    .line 439
    .local v0, "holder":Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;
    const v1, 0x7f0904a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->a:Landroid/widget/TextView;

    .line 440
    const v1, 0x7f0904a1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->b:Landroid/widget/TextView;

    .line 441
    const v1, 0x7f09049f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->c:Landroid/widget/ImageView;

    .line 442
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    :goto_0
    if-nez p1, :cond_2

    .line 459
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->a:Landroid/widget/TextView;

    const v2, 0x7f0d0506

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->b:Landroid/widget/TextView;

    const v2, 0x7f0d0507

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 468
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->c:Landroid/widget/ImageView;

    const v2, 0x7f02025c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    :cond_0
    :goto_1
    return-object p2

    .line 444
    .end local v0    # "holder":Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;
    goto :goto_0

    .line 469
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 471
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->a:Landroid/widget/TextView;

    const v2, 0x7f0d0508

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 472
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->b:Landroid/widget/TextView;

    const v2, 0x7f0d0509

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 473
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->c:Landroid/widget/ImageView;

    const v2, 0x7f02025d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 474
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 476
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->a:Landroid/widget/TextView;

    const v2, 0x7f0d050a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 477
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->b:Landroid/widget/TextView;

    const v2, 0x7f0d050b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 478
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater$a;->c:Landroid/widget/ImageView;

    const v2, 0x7f02025e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
