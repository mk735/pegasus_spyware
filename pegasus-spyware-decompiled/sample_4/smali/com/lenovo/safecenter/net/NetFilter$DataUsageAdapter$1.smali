.class final Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;
.super Ljava/lang/Object;
.source "NetFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/NetFilter$a;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;Lcom/lenovo/safecenter/net/NetFilter$a;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 552
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v0, v1, v3

    .line 553
    .local v0, "uid":I
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    .line 554
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    if-eqz v1, :cond_1

    .line 555
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->b:Landroid/widget/ImageView;

    sget v4, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_off:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 561
    :goto_1
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_2

    .line 562
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/NetFilter;->a(Lcom/lenovo/safecenter/net/NetFilter;Z)V

    .line 566
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->d(Lcom/lenovo/safecenter/net/NetFilter;)V

    .line 567
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->l(Lcom/lenovo/safecenter/net/NetFilter;)Z

    .line 570
    const-string v1, "nac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2g uid size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    :cond_0
    move v1, v3

    .line 553
    goto :goto_0

    .line 558
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 559
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->b:Landroid/widget/ImageView;

    sget v4, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_on:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$1;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/net/NetFilter;->a(Lcom/lenovo/safecenter/net/NetFilter;Z)V

    goto :goto_2
.end method
