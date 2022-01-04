.class final Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;
.super Ljava/lang/Object;
.source "LowLevelNetFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v0, v1, v3

    .line 398
    .local v0, "uid":I
    const-string v1, "8.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cilck uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v4, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    .line 400
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    if-eqz v1, :cond_2

    .line 401
    sget-object v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->b:Landroid/widget/ImageView;

    sget v4, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_off:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 407
    :goto_1
    sget-object v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v4, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_3

    .line 409
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)V

    .line 413
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    .line 414
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->o(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Z

    .line 418
    .end local v0    # "uid":I
    :goto_3
    return-void

    .restart local v0    # "uid":I
    :cond_1
    move v1, v3

    .line 399
    goto :goto_0

    .line 404
    :cond_2
    sget-object v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->b:Landroid/widget/ImageView;

    sget v4, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_on:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)V

    goto :goto_2

    .line 416
    .end local v0    # "uid":I
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->p(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    goto :goto_3
.end method
