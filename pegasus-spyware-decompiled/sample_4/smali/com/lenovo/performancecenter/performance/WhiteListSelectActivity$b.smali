.class final Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;
.super Landroid/widget/BaseAdapter;
.source "WhiteListSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 384
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->b:Landroid/view/LayoutInflater;

    .line 386
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 400
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 461
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 406
    if-nez p2, :cond_4

    .line 407
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq p1, v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f03009f

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 410
    new-instance v1, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V

    .line 411
    .local v1, "holder":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    const v2, 0x7f09000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 413
    const v2, 0x7f0902a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 415
    const v2, 0x7f0903a5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 419
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 428
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 433
    :goto_1
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .line 434
    .local v0, "aInfo":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;
    if-eqz v0, :cond_2

    .line 435
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->d(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 439
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->e(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 440
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->e(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :cond_0
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->f(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 443
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->f(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    :cond_1
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 456
    :cond_2
    :goto_3
    return-object p2

    .line 421
    .end local v0    # "aInfo":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;
    .end local v1    # "holder":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0300a0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 424
    new-instance v1, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V

    .line 425
    .restart local v1    # "holder":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0

    .line 430
    .end local v1    # "holder":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;

    .restart local v1    # "holder":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;
    goto :goto_1

    .restart local v0    # "aInfo":Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;
    :cond_5
    move v2, v4

    .line 451
    goto :goto_2

    .line 453
    :cond_6
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->g(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x2

    return v0
.end method
