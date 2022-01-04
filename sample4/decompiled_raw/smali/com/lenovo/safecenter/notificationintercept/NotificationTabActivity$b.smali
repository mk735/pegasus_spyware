.class final Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;
.super Landroid/widget/BaseExpandableListAdapter;
.source "NotificationTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V
    .locals 1

    .prologue
    .line 397
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 398
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {p1, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 399
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 407
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 413
    if-nez p4, :cond_0

    .line 415
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    .line 416
    .local v0, "childHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 417
    const v1, 0x7f09044a

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;->a:Landroid/widget/Button;

    .line 418
    const v1, 0x7f09044b

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;->b:Landroid/widget/Button;

    .line 419
    const v1, 0x7f09044c

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;->c:Landroid/widget/Button;

    .line 420
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    :goto_0
    iget-object v1, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;->a:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v1, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v1, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    return-object p4

    .line 422
    .end local v0    # "childHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;

    .restart local v0    # "childHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;
    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 447
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f020059

    .line 453
    if-nez p3, :cond_1

    .line 455
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {v0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    .line 456
    .local v0, "groupHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 457
    const v2, 0x7f09035f

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->a:Landroid/widget/ImageView;

    .line 458
    const v2, 0x7f09044d

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->b:Landroid/widget/TextView;

    .line 459
    const v2, 0x7f09044e

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->c:Landroid/widget/TextView;

    .line 460
    const v2, 0x7f09044f

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    .line 461
    const v2, 0x7f090450

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->e:Landroid/widget/ImageView;

    .line 462
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 466
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;

    .line 467
    .local v1, "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    if-eqz v1, :cond_0

    .line 468
    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->a:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget v2, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 472
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    const v4, 0x7f0d063d

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    :goto_1
    iget-boolean v2, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->f:Z

    if-eqz v2, :cond_4

    .line 482
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    const v4, 0x7f0d062f

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 488
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 489
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->e:Landroid/widget/ImageView;

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    :cond_0
    :goto_3
    return-object p3

    .line 464
    .end local v0    # "groupHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;
    .end local v1    # "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;

    .restart local v0    # "groupHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;
    goto :goto_0

    .line 474
    .restart local v1    # "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    :cond_2
    :try_start_1
    iget v2, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 475
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    const v4, 0x7f0d063e

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 486
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 478
    :cond_3
    :try_start_2
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    const v4, 0x7f0d063f

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 484
    :cond_4
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    const v4, 0x7f0d064e

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 491
    :cond_5
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 494
    :cond_6
    iget-object v2, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method
