.class public Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "NetFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/NetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lenovo/safecenter/net/NetFilter$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/lenovo/safecenter/net/NetFilter$a;

.field final synthetic c:Lcom/lenovo/safecenter/net/NetFilter;

.field private final d:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/net/NetFilter;Lcom/lenovo/safecenter/net/support/UidDetailProvider;I)V
    .locals 2
    .param p2, "provider"    # Lcom/lenovo/safecenter/net/support/UidDetailProvider;
    .param p3, "insetSide"    # I

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 316
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a:Landroid/util/SparseArray;

    .line 317
    new-instance v0, Lcom/lenovo/safecenter/net/NetFilter$a;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/NetFilter$a;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 321
    invoke-static {p2}, Lcom/lenovo/safecenter/net/NetFilter;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->d:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    .line 322
    iput p3, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->e:I

    .line 323
    return-void
.end method

.method private a(Landroid/net/NetworkStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 386
    .local v5, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_7

    .line 387
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 388
    const-string v7, "4.3"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "entry set="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 390
    .local v6, "uid":I
    sget-object v7, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 391
    .local v3, "isHidden":Z
    const/16 v7, 0x2710

    if-lt v6, v7, :cond_3

    const v7, 0x1869f

    if-gt v6, v7, :cond_3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 393
    .local v2, "isApp":Z
    :goto_2
    if-nez v2, :cond_0

    const/4 v7, -0x5

    if-ne v6, v7, :cond_5

    .line 394
    :cond_0
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 398
    .local v4, "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    if-nez v4, :cond_1

    .line 399
    new-instance v4, Lcom/lenovo/safecenter/net/NetFilter$a;

    .end local v4    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    invoke-direct {v4, v6}, Lcom/lenovo/safecenter/net/NetFilter$a;-><init>(I)V

    .line 400
    .restart local v4    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v7}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1
    iget v7, v0, Landroid/net/NetworkStats$Entry;->set:I

    if-nez v7, :cond_4

    .line 408
    iget-wide v7, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    iget-wide v9, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    .line 413
    :goto_3
    iget-wide v7, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    iget-wide v9, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    .line 386
    .end local v4    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    .end local v1    # "i":I
    .end local v2    # "isApp":Z
    .end local v3    # "isHidden":Z
    .end local v5    # "size":I
    .end local v6    # "uid":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 391
    .restart local v1    # "i":I
    .restart local v3    # "isHidden":Z
    .restart local v5    # "size":I
    .restart local v6    # "uid":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 410
    .restart local v2    # "isApp":Z
    .restart local v4    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    :cond_4
    iget-wide v7, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->c:J

    iget-wide v9, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->c:J

    goto :goto_3

    .line 415
    .end local v4    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    :cond_5
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-wide v7, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    .line 416
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-wide v8, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    .line 420
    :goto_5
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-wide v8, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    .line 421
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    invoke-virtual {v7, v6}, Lcom/lenovo/safecenter/net/NetFilter$a;->a(I)V

    goto :goto_4

    .line 418
    :cond_6
    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-wide v8, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->c:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/lenovo/safecenter/net/NetFilter$a;->c:J

    goto :goto_5

    .line 424
    .end local v2    # "isApp":Z
    .end local v3    # "isHidden":Z
    .end local v6    # "uid":I
    :cond_7
    return-void
.end method

.method private a(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 362
    iget-object v0, p1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkList:Ljava/util/HashSet;

    .line 363
    .local v0, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 364
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 365
    .local v3, "uid":I
    const/16 v4, 0x2711

    if-eq v3, v4, :cond_0

    const/16 v4, 0x271d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_0

    const-string v4, "media"

    invoke-static {v4}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2710

    if-le v3, v4, :cond_0

    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    new-instance v2, Lcom/lenovo/safecenter/net/NetFilter$a;

    invoke-direct {v2, v3}, Lcom/lenovo/safecenter/net/NetFilter$a;-><init>(I)V

    .line 374
    .local v2, "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    iput-wide v6, v2, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    .line 375
    iput-wide v6, v2, Lcom/lenovo/safecenter/net/NetFilter$a;->c:J

    .line 376
    iput-wide v6, v2, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    .line 377
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    .end local v3    # "uid":I
    :cond_1
    return-void
.end method


# virtual methods
.method public bindStats(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    if-eqz p1, :cond_9

    .line 332
    iget-object v0, p1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo1:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo1:Landroid/net/NetworkStats;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a(Landroid/net/NetworkStats;)V

    .line 335
    :cond_0
    iget-object v0, p1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo2:Landroid/net/NetworkStats;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo2:Landroid/net/NetworkStats;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a(Landroid/net/NetworkStats;)V

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->getNetworkInfoWlan()Landroid/net/NetworkStats;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 339
    invoke-virtual {p1}, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->getNetworkInfoWlan()Landroid/net/NetworkStats;

    move-result-object v4

    new-instance v5, Lcom/lenovo/safecenter/net/NetFilter$a;

    const/16 v0, 0x3e8

    invoke-direct {v5, v0}, Lcom/lenovo/safecenter/net/NetFilter$a;-><init>(I)V

    const/4 v2, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkStats;->size()I

    move-result v0

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v13, v0

    move-object v0, v2

    move v2, v13

    :goto_1
    if-ge v2, v1, :cond_9

    invoke-virtual {v4, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    const-string v0, "4.3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry set="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v3, Landroid/net/NetworkStats$Entry;->uid:I

    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_5

    const v7, 0x1869f

    if-gt v6, v7, :cond_5

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    const/4 v0, -0x5

    if-ne v6, v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/NetFilter$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/lenovo/safecenter/net/NetFilter$a;

    invoke-direct {v0, v6}, Lcom/lenovo/safecenter/net/NetFilter$a;-><init>(I)V

    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v6, v3, Landroid/net/NetworkStats$Entry;->set:I

    if-nez v6, :cond_6

    iget-wide v6, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->i:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->i:J

    :goto_3
    iget-wide v6, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->j:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->j:J

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-wide v6, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->h:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->h:J

    goto :goto_3

    :cond_7
    iget-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->i:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_8

    iget-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->i:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->i:J

    :goto_5
    iget-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->j:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->j:J

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/net/NetFilter$a;->a(I)V

    goto :goto_4

    :cond_8
    iget-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->h:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/lenovo/safecenter/net/NetFilter$a;->h:J

    goto :goto_5

    .line 351
    :cond_9
    if-eqz p1, :cond_a

    .line 352
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->a(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;)V

    .line 355
    :cond_a
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 356
    const-string v0, "4.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems.size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->k(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->k(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->notifyDataSetChanged()V

    .line 359
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 487
    if-nez p2, :cond_0

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f030064

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->e:I

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->e:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->e:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 496
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 497
    .local v6, "context":Landroid/content/Context;
    const v18, 0x7f090291

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 499
    .local v12, "mCheck":Landroid/widget/ImageView;
    const v18, 0x7f090292

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 501
    .local v13, "mCheckWlan":Landroid/widget/ImageView;
    const v18, 0x7f090294

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 503
    .local v16, "mTotalTextView":Landroid/widget/TextView;
    const v18, 0x7f090295

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 505
    .local v17, "mTotalWlanTextView":Landroid/widget/TextView;
    const v18, 0x7f090296

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 509
    .local v5, "chooseLayout":Landroid/widget/RelativeLayout;
    const v18, 0x7f090298

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 511
    .local v14, "mForeTextView":Landroid/widget/TextView;
    const v18, 0x7f09029d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 513
    .local v10, "mBackTextView":Landroid/widget/TextView;
    const v18, 0x7f09029b

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 515
    .local v15, "mForeTextWlanView":Landroid/widget/TextView;
    const v18, 0x7f09029f

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 520
    .local v11, "mBackTextWlanView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 521
    .local v9, "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->d:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lcom/lenovo/safecenter/net/NetFilter$b;->a(Lcom/lenovo/safecenter/net/support/UidDetailProvider;Lcom/lenovo/safecenter/net/NetFilter$a;Landroid/view/View;)V

    .line 522
    iget-boolean v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->g:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 523
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    move-object/from16 v18, v0

    const v19, 0x7f0d07fd

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/safecenter/net/NetFilter;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 532
    .local v7, "formatMobileTotalDetail":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    move-object/from16 v18, v0

    const v19, 0x7f0d07fe

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/safecenter/net/NetFilter;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->j:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "formatWlanTotalDetail":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-wide v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->c:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-wide v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->d:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-wide v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->h:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-wide v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->i:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    new-instance v18, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v12}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;-><init>(Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;Lcom/lenovo/safecenter/net/NetFilter$a;Landroid/widget/ImageView;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    new-instance v18, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v13}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;-><init>(Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;Lcom/lenovo/safecenter/net/NetFilter$a;Landroid/widget/ImageView;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, -0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    sget-object v18, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 598
    :cond_1
    const v18, 0x7f0201fb

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 599
    const v18, 0x7f0201fb

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 607
    :goto_1
    iget-object v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, -0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    sget-object v18, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 610
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 611
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 613
    :cond_3
    return-object p2

    .line 526
    .end local v7    # "formatMobileTotalDetail":Ljava/lang/String;
    .end local v8    # "formatWlanTotalDetail":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 601
    .restart local v7    # "formatMobileTotalDetail":Ljava/lang/String;
    .restart local v8    # "formatWlanTotalDetail":Ljava/lang/String;
    :cond_5
    iget-boolean v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    sget v18, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_off:I

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 603
    iget-boolean v0, v9, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    sget v18, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_off:I

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 601
    :cond_6
    sget v18, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_on:I

    goto :goto_2

    .line 603
    :cond_7
    sget v18, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_on:I

    goto :goto_3
.end method
