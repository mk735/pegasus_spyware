.class public Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneInfoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "phoneItems":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->b:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 46
    move-object v1, p2

    .line 49
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 50
    new-instance v2, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;

    invoke-direct {v2, v5}, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;-><init>(B)V

    .line 51
    .local v2, "viewHolder":Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300d4

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    const v3, 0x7f090482

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;->a:Landroid/widget/ImageView;

    .line 54
    const v3, 0x7f090484

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;->b:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    sget-object v3, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    .line 66
    .local v0, "infoItem":Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;
    iget-object v3, v2, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->getIconRes()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v3, v2, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object v1

    .line 58
    .end local v0    # "infoItem":Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;
    .end local v2    # "viewHolder":Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;

    .restart local v2    # "viewHolder":Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter$a;
    goto :goto_0
.end method
