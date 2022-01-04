.class final Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
.super Ljava/lang/Object;
.source "LowLevelNetFilter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/LowLevelNetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:J

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    .line 492
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    .line 493
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->d:Z

    .line 494
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x3e8

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v5, -0x4

    const/4 v1, 0x0

    .line 484
    check-cast p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v3, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v5, :cond_0

    iget-object v3, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_0

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_1

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-wide v3, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-wide v3, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_6

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-wide v3, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    iget-wide v3, p1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->b:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method
