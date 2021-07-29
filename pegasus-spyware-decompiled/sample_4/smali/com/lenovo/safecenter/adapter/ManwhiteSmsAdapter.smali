.class public Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManwhiteSmsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;
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
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->b:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->b:Ljava/util/List;

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
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_3

    .line 53
    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->a:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030128

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;B)V

    .line 55
    .local v2, "holder":Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;
    const v6, 0x7f09060a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    .line 56
    const v6, 0x7f09060b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    .line 57
    const v6, 0x7f09060e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->c:Landroid/widget/TextView;

    .line 58
    const v6, 0x7f09060c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->d:Landroid/widget/TextView;

    .line 59
    const v6, 0x7f09060f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->e:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/Contract;

    .line 66
    .local v4, "sms":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getFromtype()I

    move-result v6

    if-nez v6, :cond_5

    .line 68
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 71
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 73
    :cond_0
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getCount()I

    move-result v0

    .line 74
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 76
    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->a:Landroid/content/Context;

    const v7, 0x7f0d01a3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "recordcount":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .end local v3    # "recordcount":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 82
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v7, 0x7f020179

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :goto_1
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    const v7, 0x7f02029c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->a:Landroid/content/Context;

    const v7, 0x7f0d01de

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "date":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->a:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0    # "count":I
    .end local v1    # "date":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p2

    .line 62
    .end local v2    # "holder":Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;
    .end local v4    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;

    .restart local v2    # "holder":Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;
    goto/16 :goto_0

    .line 85
    .restart local v0    # "count":I
    .restart local v4    # "sms":Lcom/lenovo/safecenter/support/Contract;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_4
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v7, 0x7f020178

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 93
    .end local v0    # "count":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getFromtype()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 95
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v5

    .line 96
    .restart local v5    # "str":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 98
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 101
    :cond_6
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 103
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v7, 0x7f020179

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_3
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 110
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    const v7, 0x7f0201a9

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :cond_7
    :goto_4
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->a:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 106
    :cond_8
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v7, 0x7f020178

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 111
    :cond_9
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 113
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    const v7, 0x7f0201ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 114
    :cond_a
    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 116
    iget-object v6, v2, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    const v7, 0x7f0201ac

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
