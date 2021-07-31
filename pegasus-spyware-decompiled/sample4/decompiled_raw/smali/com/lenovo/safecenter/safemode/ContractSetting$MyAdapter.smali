.class public Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContractSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ContractSetting;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1061
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->b:Landroid/view/LayoutInflater;

    .line 1062
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->n(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 1082
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 1088
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1094
    if-nez p2, :cond_0

    .line 1097
    new-instance v0, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    .line 1099
    .local v0, "holder":Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030125

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1100
    const v1, 0x7f090601

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;->img:Landroid/widget/ImageView;

    .line 1101
    const v1, 0x7f090602

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;->imgon:Landroid/widget/ImageView;

    .line 1103
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1123
    :goto_0
    iget-object v2, v0, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->n(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "img"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1124
    iget-object v2, v0, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;->imgon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->n(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "imgon"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1126
    return-object p2

    .line 1107
    .end local v0    # "holder":Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;
    goto :goto_0
.end method
