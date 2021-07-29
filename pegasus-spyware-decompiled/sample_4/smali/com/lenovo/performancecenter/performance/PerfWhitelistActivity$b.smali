.class final Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;
.super Landroid/widget/BaseAdapter;
.source "PerfWhitelistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 305
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->b:Landroid/view/LayoutInflater;

    .line 306
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 320
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    if-nez p2, :cond_5

    .line 328
    new-instance v1, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V

    .line 329
    .local v1, "holder":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)I

    move-result v2

    if-eq p1, v2, :cond_4

    .line 330
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f03009f

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 331
    const v2, 0x7f09000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 332
    const v2, 0x7f0902a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 333
    const v2, 0x7f0903a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 334
    const v2, 0x7f0903a5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 335
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/CheckBox;

    move-result-object v2

    const v6, 0x7f0202ca

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 340
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    :goto_1
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .line 346
    .local v0, "appInfo":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
    const-string v2, "PerfWhitelist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgName == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " titlePosition == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v7}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)I

    move-result v2

    if-eq p1, v2, :cond_8

    .line 349
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->c(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->c(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    :cond_0
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->e(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 357
    :cond_2
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)I

    move-result v6

    if-ne v6, v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :goto_3
    return-object p2

    .line 337
    .end local v0    # "appInfo":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f0300a0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 338
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto/16 :goto_0

    .line 342
    .end local v1    # "holder":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;

    .restart local v1    # "holder":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;
    goto/16 :goto_1

    .restart local v0    # "appInfo":Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
    :cond_6
    move v2, v4

    .line 354
    goto :goto_2

    .line 359
    :cond_7
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 363
    :cond_8
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;->c(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->e(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x2

    return v0
.end method
