.class final Lcom/lenovo/safecenter/net/NetFilter$a;
.super Ljava/lang/Object;
.source "NetFilter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/NetFilter;
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
        "Lcom/lenovo/safecenter/net/NetFilter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:J

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->g:Z

    .line 630
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    .line 631
    sget-object v0, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    .line 632
    sget-object v0, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    .line 633
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 636
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    invoke-static {v1, p1}, Lcom/lenovo/safecenter/net/NetFilter;->a([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    array-length v0, v1

    .line 639
    .local v0, "length":I
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    .line 640
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aput p1, v1, v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x3e8

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v5, -0x4

    const/4 v1, 0x0

    .line 617
    check-cast p1, Lcom/lenovo/safecenter/net/NetFilter$a;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v3, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v5, :cond_0

    iget-object v3, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_0

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_1

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-wide v3, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-wide v3, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_6

    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

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
    iget-wide v3, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    iget-wide v3, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/net/NetFilter$a;->b:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method
