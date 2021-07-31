.class public Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "LowLevelNetFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/LowLevelNetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

.field private final b:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Lcom/lenovo/safecenter/net/support/UidDetailProvider;I)V
    .locals 0
    .param p2, "provider"    # Lcom/lenovo/safecenter/net/support/UidDetailProvider;
    .param p3, "insetSide"    # I

    .prologue
    .line 319
    iput-object p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    .line 321
    iput p3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->c:I

    .line 322
    return-void
.end method


# virtual methods
.method public bindStats(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/net/support/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    iget-object v6, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 332
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 334
    .local v3, "knownUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 335
    .local v4, "size":I
    :goto_0
    if-lez v4, :cond_3

    .line 336
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/support/AppInfo;

    .line 337
    .local v0, "app":Lcom/lenovo/safecenter/net/support/AppInfo;
    iget v5, v0, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    .line 338
    .local v5, "uid":I
    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 341
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .line 342
    .local v2, "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    if-nez v2, :cond_1

    .line 343
    new-instance v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .end local v2    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    invoke-direct {v2, v5}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;-><init>(I)V

    .line 344
    .restart local v2    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v6, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    iget-wide v6, v0, Lcom/lenovo/safecenter/net/support/AppInfo;->item_3g:J

    iput-wide v6, v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    goto :goto_1

    .line 334
    .end local v0    # "app":Lcom/lenovo/safecenter/net/support/AppInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    .end local v4    # "size":I
    .end local v5    # "uid":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 350
    .restart local v4    # "size":I
    :cond_3
    iget-object v6, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 351
    iget-object v6, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v7}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->notifyDataSetChanged()V

    .line 353
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0201fb

    const/16 v9, 0x3e8

    const/4 v8, -0x4

    const/4 v7, 0x0

    .line 369
    if-nez p2, :cond_0

    .line 370
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030064

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 373
    iget v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->c:I

    if-lez v5, :cond_0

    .line 374
    iget v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->c:I

    iget v6, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->c:I

    invoke-virtual {p2, v5, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 378
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f090291

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 381
    .local v2, "mCheck":Landroid/widget/ImageView;
    const v5, 0x7f090294

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 383
    .local v4, "mTotalTextView":Landroid/widget/TextView;
    const v5, 0x7f090292

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 387
    .local v3, "mCheckWlan":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .line 388
    .local v1, "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$b;->a(Lcom/lenovo/safecenter/net/support/UidDetailProvider;Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;Landroid/view/View;)V

    .line 390
    iget-wide v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    new-instance v5, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;-><init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    new-instance v5, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$2;

    invoke-direct {v5, p0, v1, v3}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$2;-><init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v5, v5, v7

    if-eq v5, v8, :cond_1

    iget-object v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v5, v5, v7

    if-eq v5, v9, :cond_1

    sget-object v5, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    :cond_1
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 458
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 467
    :goto_0
    iget-object v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v5, v5, v7

    if-eq v5, v8, :cond_2

    iget-object v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v5, v5, v7

    if-eq v5, v9, :cond_2

    sget-object v5, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    :cond_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 471
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 473
    :cond_3
    return-object p2

    .line 460
    :cond_4
    iget-boolean v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_off:I

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 462
    iget-boolean v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->d:Z

    if-eqz v5, :cond_6

    sget v5, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_off:I

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 460
    :cond_5
    sget v5, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_on:I

    goto :goto_1

    .line 462
    :cond_6
    sget v5, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_on:I

    goto :goto_2
.end method
