.class public Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;
.super Landroid/widget/BaseAdapter;
.source "LocalBlackApater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->b:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNameStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 101
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    if-nez p1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 48
    if-nez p2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;

    invoke-direct {v0, p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;B)V

    .line 51
    .local v0, "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;
    const v2, 0x7f0900ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->a:Landroid/widget/ImageView;

    .line 52
    const v2, 0x7f0900af

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->d:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0900b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->e:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0900b2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->c:Landroid/widget/ImageView;

    .line 55
    const v2, 0x7f0900b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->b:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 61
    .local v1, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v2

    if-nez v2, :cond_3

    .line 64
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :cond_0
    :goto_1
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    :cond_1
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->getNameStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_2
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->a:Landroid/widget/ImageView;

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    return-object p2

    .line 58
    .end local v0    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;
    .end local v1    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;
    goto :goto_0

    .line 65
    .restart local v1    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_3
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 67
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater$a;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/LocalBlackApater;->getNameStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
