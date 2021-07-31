.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.source "DrawerKillVirus.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z

    .prologue
    .line 21
    const v0, 0x7f020161

    const v1, 0x7f0d0007

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;-><init>(ILjava/lang/String;Landroid/content/Context;Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 27
    const v4, 0x7f09032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 28
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f09032e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f09032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .local v0, "bg":Landroid/view/ViewGroup;
    const v4, 0x7f09032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 32
    .local v2, "newMark":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;->mIsNew:Z

    if-eqz v4, :cond_0

    .line 33
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :goto_0
    iget v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;->idIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;->setBackgroundResource(Landroid/view/ViewGroup;)V

    .line 42
    return-object p1

    .line 35
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->enterKillVirus(Landroid/content/Context;)V

    .line 48
    return-void
.end method
