.class final Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;
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
    .line 574
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->b:Landroid/widget/ImageView;

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

    .line 576
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v0, v1, v3

    .line 577
    .local v0, "uid":I
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    .line 578
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->a:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    if-eqz v1, :cond_1

    .line 579
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->b:Landroid/widget/ImageView;

    sget v4, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_off:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 585
    :goto_1
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_2

    .line 586
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;Z)V

    .line 590
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->e(Lcom/lenovo/safecenter/net/NetFilter;)V

    .line 591
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->l(Lcom/lenovo/safecenter/net/NetFilter;)Z

    .line 592
    return-void

    :cond_0
    move v1, v3

    .line 577
    goto :goto_0

    .line 582
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 583
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->b:Landroid/widget/ImageView;

    sget v4, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_on:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter$2;->c:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;->c:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;Z)V

    goto :goto_2
.end method
