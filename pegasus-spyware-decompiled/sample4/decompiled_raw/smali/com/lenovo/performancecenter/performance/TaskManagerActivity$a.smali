.class final Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;
.super Landroid/widget/BaseAdapter;
.source "TaskManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 364
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->b:Landroid/view/LayoutInflater;

    .line 365
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 379
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 431
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 434
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
    const/4 v5, 0x0

    .line 385
    if-nez p2, :cond_4

    .line 386
    new-instance v1, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-direct {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V

    .line 387
    .local v1, "holder":Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq p1, v3, :cond_3

    .line 388
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->b:Landroid/view/LayoutInflater;

    const v4, 0x7f0300ef

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 389
    const v3, 0x7f09000c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 390
    const v3, 0x7f0904df

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 391
    const v3, 0x7f0902a6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 392
    const v3, 0x7f0904e0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 397
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 402
    :goto_1
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/AppInfo;

    .line 403
    .local v0, "aInfo":Lcom/lenovo/performancecenter/performance/AppInfo;
    if-eqz v0, :cond_2

    .line 404
    iget-boolean v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->isTitle:Z

    if-nez v3, :cond_5

    .line 405
    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    iget v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->memory:I

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;I)I

    .line 407
    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 408
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    :cond_0
    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->appName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 411
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->d(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_1
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->e(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/content/Context;

    move-result-object v4

    iget v5, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->memory:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->f(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :cond_2
    :goto_2
    return-object p2

    .line 394
    .end local v0    # "aInfo":Lcom/lenovo/performancecenter/performance/AppInfo;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->b:Landroid/view/LayoutInflater;

    const v4, 0x7f0300a0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 395
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0

    .line 399
    .end local v1    # "holder":Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;

    .restart local v1    # "holder":Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;
    goto :goto_1

    .line 416
    .restart local v0    # "aInfo":Lcom/lenovo/performancecenter/performance/AppInfo;
    :cond_5
    iget-boolean v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->isUserApp:Z

    if-eqz v3, :cond_6

    .line 418
    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->title:Ljava/lang/String;

    const-string v4, "%1\\$s"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "title":Ljava/lang/String;
    :goto_3
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;->d(Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 420
    .end local v2    # "title":Ljava/lang/String;
    :cond_6
    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->title:Ljava/lang/String;

    const-string v4, "%1\\$s"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x2

    return v0
.end method
