.class public Lcom/lenovo/safecenter/adapter/whiteContractAdapter;
.super Landroid/widget/BaseAdapter;
.source "whiteContractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;
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

.field c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->b:Ljava/util/List;

    .line 25
    iput-boolean p3, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->c:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->b:Ljava/util/List;

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

    .line 51
    if-nez p2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030128

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/whiteContractAdapter;B)V

    .line 55
    .local v1, "holder":Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;
    const v3, 0x7f09060a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->a:Landroid/widget/ImageView;

    .line 56
    const v3, 0x7f09060b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->b:Landroid/widget/ImageView;

    .line 57
    const v3, 0x7f09060e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->c:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f09060c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->d:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f09060f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->e:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 66
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-boolean v3, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->c:Z

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->a:Landroid/widget/ImageView;

    const v4, 0x7f020179

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_1
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->d:Landroid/widget/TextView;

    const v4, 0x7f0d01b6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 90
    :goto_2
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    return-object p2

    .line 62
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "holder":Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;
    goto :goto_0

    .line 74
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->a:Landroid/widget/ImageView;

    const v4, 0x7f020178

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 87
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/whiteContractAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
