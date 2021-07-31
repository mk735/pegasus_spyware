.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.source "DrawerChargeShield.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isup"    # Z

    .prologue
    .line 24
    const v0, 0x7f020184

    const v1, 0x7f0d0001

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;-><init>(ILjava/lang/String;Landroid/content/Context;Z)V

    .line 26
    return-void
.end method

.method public static enterchargeShield(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 30
    const v4, 0x7f09032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f09032e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 32
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f09032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .local v0, "bg":Landroid/view/ViewGroup;
    const v4, 0x7f09032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 35
    .local v2, "newMark":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;->mIsNew:Z

    if-eqz v4, :cond_0

    .line 36
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_0
    iget v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;->idIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;->setBackgroundResource(Landroid/view/ViewGroup;)V

    .line 44
    return-object p1

    .line 38
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerChargeShield;->enterchargeShield(Landroid/content/Context;)V

    .line 50
    return-void
.end method
