.class public Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;
.super Landroid/widget/BaseAdapter;
.source "whiteSmsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;
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
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->b:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 162
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 168
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x13

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 56
    if-nez p2, :cond_2

    .line 58
    iget-object v3, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030128

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;

    invoke-direct {v0, p0, v9}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;B)V

    .line 60
    .local v0, "holder":Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;
    const v3, 0x7f09060a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    .line 61
    const v3, 0x7f09060b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    .line 62
    const v3, 0x7f09060e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->c:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f09060c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->d:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f09060f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->e:Landroid/widget/TextView;

    .line 65
    const v3, 0x7f09060d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->f:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 73
    .local v1, "sms":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "fromtype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getFromtype()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==getFromtype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getFromtype()I

    move-result v3

    if-nez v3, :cond_4

    .line 85
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_0
    iget v3, v1, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    if-lez v3, :cond_3

    .line 101
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->a:Landroid/content/Context;

    const v5, 0x7f0d0571

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v10}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v10}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object p2

    .line 69
    .end local v0    # "holder":Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;
    .end local v1    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;
    goto/16 :goto_0

    .line 105
    .restart local v1    # "sms":Lcom/lenovo/safecenter/support/Contract;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_3
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->a:Landroid/content/Context;

    const v5, 0x7f0d0571

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, v1, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 116
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getFromtype()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 118
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 121
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v4, 0x7f0201ab

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    :goto_3
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_5
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getIsRead()I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 138
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v10}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_4
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v3, "content"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->a:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "===call"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 123
    .end local v2    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 125
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v4, 0x7f0201ac

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 128
    :cond_7
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->a:Landroid/widget/ImageView;

    const v4, 0x7f0201a9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 141
    .restart local v2    # "str":Ljava/lang/String;
    :cond_8
    iget-object v3, v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method
