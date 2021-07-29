.class final Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;
.super Landroid/widget/BaseAdapter;
.source "BootSpeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V
    .locals 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 362
    invoke-static {p1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->b:Landroid/view/LayoutInflater;

    .line 363
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 377
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x2

    .line 382
    const-string v2, "BootSpeedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez p2, :cond_1

    .line 385
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300e3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 386
    new-instance v0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;-><init>()V

    .line 387
    .local v0, "holder":Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;
    const v2, 0x7f09035f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 388
    const v2, 0x7f090360

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 389
    const v2, 0x7f0904bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 390
    const v2, 0x7f0904bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 391
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    :goto_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 397
    .local v1, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    if-eqz v1, :cond_0

    .line 399
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1080093

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 407
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d088d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 408
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    :goto_2
    iget v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    if-ne v2, v6, :cond_5

    .line 418
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02022d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 426
    :cond_0
    :goto_3
    return-object p2

    .line 393
    .end local v0    # "holder":Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;
    .end local v1    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;

    .restart local v0    # "holder":Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;
    goto :goto_0

    .line 399
    .restart local v1    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    :cond_2
    iget-object v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 409
    :cond_3
    iget v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->g:I

    if-ne v2, v6, :cond_4

    .line 410
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d088e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 411
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 413
    :cond_4
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 420
    :cond_5
    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;->d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02022f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
