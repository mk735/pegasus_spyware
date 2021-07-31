.class public Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;
.super Landroid/widget/BaseAdapter;
.source "WhiteSmsPersonApater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;->b:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    .line 45
    if-nez p2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;B)V

    .line 48
    .local v0, "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;
    const v2, 0x7f0900ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->a:Landroid/widget/ImageView;

    .line 49
    const v2, 0x7f0900af

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->d:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f0900b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->e:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f0900b2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->c:Landroid/widget/ImageView;

    .line 52
    const v2, 0x7f0900b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->b:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 58
    .local v1, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->a:Landroid/widget/ImageView;

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    :cond_0
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->d:Landroid/widget/TextView;

    const v3, 0x7f0d024a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :goto_1
    return-object p2

    .line 55
    .end local v0    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;
    .end local v1    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;
    goto :goto_0

    .line 69
    .restart local v1    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_2
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/adapter/WhiteSmsPersonApater$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
