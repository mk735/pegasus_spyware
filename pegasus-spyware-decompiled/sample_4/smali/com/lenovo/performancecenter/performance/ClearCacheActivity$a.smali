.class final Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;
.super Landroid/widget/BaseAdapter;
.source "ClearCacheActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/ClearCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 264
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->b:Landroid/view/LayoutInflater;

    .line 266
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 280
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 286
    if-nez p2, :cond_3

    .line 287
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300e7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 289
    new-instance v1, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)V

    .line 290
    .local v1, "holder":Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;
    const v2, 0x7f09031f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 292
    const v2, 0x7f0902a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 294
    const v2, 0x7f0904c9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;->b(Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 296
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;

    .line 302
    .local v0, "aInfo":Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;
    if-eqz v0, :cond_2

    .line 303
    iget-object v2, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 304
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    iget-object v2, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->cacheSize:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 307
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;->b(Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->cacheSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_1
    iget-object v2, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 310
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    :cond_2
    return-object p2

    .line 298
    .end local v0    # "aInfo":Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;
    .end local v1    # "holder":Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;

    .restart local v1    # "holder":Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;
    goto :goto_0
.end method
