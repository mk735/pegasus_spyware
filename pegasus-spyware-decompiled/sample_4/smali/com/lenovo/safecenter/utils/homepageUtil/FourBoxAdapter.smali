.class public Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;
.super Landroid/widget/BaseAdapter;
.source "FourBoxAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$1;-><init>(Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->d:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->c:Landroid/view/LayoutInflater;

    .line 54
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    .line 56
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isRootThePhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxchargeShield;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxchargeShield;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 85
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
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f030089

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;

    .line 102
    .local v0, "item":Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$2;-><init>(Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v1
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-void
.end method
