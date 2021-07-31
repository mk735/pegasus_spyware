.class public Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;
.super Landroid/widget/BaseAdapter;
.source "whiteSmsbyNumberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->b:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
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

    const/4 v5, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;

    invoke-direct {v1, p0, v5}, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;B)V

    .line 57
    .local v1, "holder":Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;
    const v2, 0x7f0903fb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->a:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0903fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->b:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f0903fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->c:Landroid/widget/RelativeLayout;

    .line 60
    const v2, 0x7f090400

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->d:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0903ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->e:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f090401

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->f:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 70
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 78
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->c:Landroid/widget/RelativeLayout;

    const v3, 0x7f0202f1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 79
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->c:Landroid/widget/RelativeLayout;

    const/16 v3, 0x1e

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 81
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_1
    return-object p2

    .line 65
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "holder":Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;
    goto :goto_0

    .line 88
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->c:Landroid/widget/RelativeLayout;

    const v3, 0x7f0202f0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 94
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->c:Landroid/widget/RelativeLayout;

    const/16 v3, 0x14

    invoke-virtual {v2, v6, v5, v3, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 96
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter$a;->d:Landroid/widget/TextView;

    const v3, 0x7f0d058d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
