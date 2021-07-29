.class public Lcom/lenovo/safecenter/adapter/CallAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/CallAdapter$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fromType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->b:Ljava/util/List;

    .line 29
    iput p3, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->c:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
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

    .line 54
    if-nez p2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lenovo/safecenter/adapter/CallAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/CallAdapter;B)V

    .line 57
    .local v1, "holder":Lcom/lenovo/safecenter/adapter/CallAdapter$a;
    const v3, 0x7f090261

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->a:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f090262

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->b:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f090263

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->c:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f090264

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->d:Landroid/widget/TextView;

    .line 61
    const v3, 0x7f09025f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->e:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 67
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    :cond_0
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->a:Landroid/widget/TextView;

    const v4, 0x7f0d01b6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :goto_1
    iget-object v2, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->e:Landroid/widget/ImageView;

    .line 77
    .local v2, "tButton":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f020179

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    :goto_2
    iget v3, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->c:I

    if-nez v3, :cond_5

    .line 81
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    :goto_3
    return-object p2

    .line 64
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "holder":Lcom/lenovo/safecenter/adapter/CallAdapter$a;
    .end local v2    # "tButton":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/adapter/CallAdapter$a;
    goto :goto_0

    .line 73
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_3
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 78
    .restart local v2    # "tButton":Landroid/widget/ImageView;
    :cond_4
    const v3, 0x7f020178

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 84
    :cond_5
    iget v3, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 86
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/adapter/CallAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, v1, Lcom/lenovo/safecenter/adapter/CallAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
