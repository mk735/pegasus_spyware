.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManLocalBlackAddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 501
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->b:Landroid/content/Context;

    .line 502
    iput-object p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->c:Ljava/util/List;

    .line 504
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 520
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    .line 527
    if-nez p2, :cond_1

    .line 528
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 529
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;B)V

    .line 530
    .local v1, "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;
    const v3, 0x7f0900b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->a:Landroid/widget/TextView;

    .line 531
    const v3, 0x7f0900b6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->b:Landroid/widget/TextView;

    .line 532
    const v3, 0x7f0900b7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->c:Landroid/widget/TextView;

    .line 533
    const v3, 0x7f0900b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->d:Landroid/widget/TextView;

    .line 534
    const v3, 0x7f0900b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->e:Landroid/widget/ImageView;

    .line 535
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 539
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 540
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    :cond_0
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->a:Landroid/widget/TextView;

    const v4, 0x7f0d024a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 549
    :goto_1
    iget-object v2, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->e:Landroid/widget/ImageView;

    .line 550
    .local v2, "tButton":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f020179

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 555
    :goto_2
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-object p2

    .line 537
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v1    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;
    .end local v2    # "tButton":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;
    goto :goto_0

    .line 546
    .restart local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_2
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 551
    .restart local v2    # "tButton":Landroid/widget/ImageView;
    :cond_3
    const v3, 0x7f020178

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
