.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManLocalBlackAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

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
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Landroid/content/Context;Ljava/util/List;)V
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
    .line 529
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->b:Landroid/content/Context;

    .line 531
    iput-object p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->c:Ljava/util/List;

    .line 533
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 549
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

    .line 556
    if-nez p2, :cond_1

    .line 557
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 558
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;B)V

    .line 559
    .local v1, "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;
    const v3, 0x7f0900b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->a:Landroid/widget/TextView;

    .line 560
    const v3, 0x7f0900b6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->b:Landroid/widget/TextView;

    .line 561
    const v3, 0x7f0900b7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->c:Landroid/widget/TextView;

    .line 562
    const v3, 0x7f0900b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->d:Landroid/widget/TextView;

    .line 563
    const v3, 0x7f0900b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->e:Landroid/widget/ImageView;

    .line 564
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 568
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 569
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

    .line 571
    :cond_0
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->a:Landroid/widget/TextView;

    const v4, 0x7f0d024a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 578
    :goto_1
    iget-object v2, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->e:Landroid/widget/ImageView;

    .line 579
    .local v2, "tButton":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f020179

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 581
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 583
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getCallType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :goto_3
    return-object p2

    .line 566
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v1    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;
    .end local v2    # "tButton":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;
    goto :goto_0

    .line 575
    .restart local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_2
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 580
    .restart local v2    # "tButton":Landroid/widget/ImageView;
    :cond_3
    const v3, 0x7f020178

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 589
    :cond_4
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    iget-object v3, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
