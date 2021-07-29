.class public Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneAccelerateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskManagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 525
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 539
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0300ea

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 544
    new-instance v1, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    .line 546
    .local v1, "mTaskManagerViewHolder":Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->u(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300a0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 548
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 550
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .line 551
    .local v0, "ai":Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    .end local v0    # "ai":Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;
    :cond_1
    :goto_0
    return-object p2

    .line 553
    :cond_2
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->u(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 554
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 555
    const v3, 0x7f0904cf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 556
    const v3, 0x7f0904d0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 558
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .line 559
    .local v2, "uai":Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v2, v3, v6

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 561
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->c(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 564
    .end local v2    # "uai":Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->u(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 566
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 567
    const v3, 0x7f0904cf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 568
    const v3, 0x7f0904d0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 569
    const v3, 0x7f0904d2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 571
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .line 572
    .restart local v0    # "ai":Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v6

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 574
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 575
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->c(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;->c(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    const v6, 0x7f0d08b0

    invoke-virtual {v5, v6}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->d(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
