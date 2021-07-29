.class public Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v1, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$1;-><init>(Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->d:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    .line 56
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->c:Landroid/view/LayoutInflater;

    .line 58
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isRootThePhone()Z

    move-result v0

    .line 59
    .local v0, "isRoot":Z
    if-eqz p2, :cond_2

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    .line 62
    if-eqz v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPhoneAccelerate;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPhoneAccelerate;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerBattery;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerBattery;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerBattery;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerBattery;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    .line 79
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    if-eqz v0, :cond_3

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAgainstTheft;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAgainstTheft;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyShield;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyShield;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
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
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f030087

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;

    .line 126
    .local v0, "item":Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$2;-><init>(Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-object v1
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "dataSource":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    return-void
.end method
