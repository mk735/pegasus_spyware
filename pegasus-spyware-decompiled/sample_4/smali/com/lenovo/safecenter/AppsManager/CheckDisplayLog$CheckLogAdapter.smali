.class public Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "CheckDisplayLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckLogAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 1

    .prologue
    .line 564
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 565
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->b:Landroid/view/LayoutInflater;

    .line 566
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 573
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 577
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 582
    if-nez p2, :cond_0

    .line 583
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f03005e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 585
    new-instance v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {v2, v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    .line 586
    .local v2, "holder":Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;
    const v5, 0x7f09027b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->a:Landroid/widget/ImageView;

    .line 587
    const v5, 0x7f09027d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->b:Landroid/widget/ImageView;

    .line 588
    const v5, 0x7f090280

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->c:Landroid/widget/TextView;

    .line 589
    const v5, 0x7f090281

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->d:Landroid/widget/TextView;

    .line 590
    const v5, 0x7f09027c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->e:Landroid/widget/TextView;

    .line 591
    const v5, 0x7f09027e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->f:Landroid/widget/TextView;

    .line 592
    const v5, 0x7f09027a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    .line 593
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 597
    :goto_0
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SafeLog;

    .line 598
    .local v3, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 602
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->a:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->e:Landroid/widget/TextView;

    const v6, 0x7f0d010f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 605
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->f:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->c:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->d:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 609
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    const v6, 0x7f020179

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 655
    :goto_1
    return-object p2

    .line 595
    .end local v2    # "holder":Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;
    .end local v3    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;

    .restart local v2    # "holder":Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;
    goto :goto_0

    .line 611
    .restart local v3    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    const v6, 0x7f020178

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 612
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 614
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->a:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->e:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->f:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->c:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->d:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 621
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    const v6, 0x7f020179

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 623
    :cond_3
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    const v6, 0x7f020178

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 626
    :cond_4
    iget-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    const-string v6, "android.permission.SEND_SMS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 627
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->c:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v8, 0x7f0d0115

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :goto_2
    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v6, 0x7f0d0111

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 632
    .local v4, "str":Ljava/lang/String;
    :goto_3
    iget-object v6, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->d:Landroid/widget/TextView;

    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-nez v5, :cond_8

    const v5, -0xff0100

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->e:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->f:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v5, ""

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 639
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 648
    .local v0, "appDrawable":Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 650
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    const v6, 0x7f020179

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 629
    .end local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "str":Ljava/lang/String;
    :cond_6
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    iget-object v7, v3, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 631
    :cond_7
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v6, 0x7f0d0112

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 632
    .restart local v4    # "str":Ljava/lang/String;
    :cond_8
    const/high16 v5, -0x10000

    goto :goto_4

    .line 642
    :cond_9
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->p(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 643
    .end local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 644
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 645
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 652
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a
    iget-object v5, v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;->g:Landroid/widget/ImageView;

    const v6, 0x7f020178

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
