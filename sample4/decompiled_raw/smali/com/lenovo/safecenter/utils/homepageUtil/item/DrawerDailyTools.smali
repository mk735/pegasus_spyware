.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.source "DrawerDailyTools.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z

    .prologue
    .line 25
    const v0, 0x7f02015d

    const v1, 0x7f0d0692

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;-><init>(ILjava/lang/String;Landroid/content/Context;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;->mContext:Landroid/content/Context;

    const-string v5, "type_tools"

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->hasContentInType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    const v4, 0x7f09032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 35
    .local v2, "newMark":Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .end local v2    # "newMark":Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f09032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f09032e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 39
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f09032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .local v0, "bg":Landroid/view/ViewGroup;
    iget v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;->idIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;->setBackgroundResource(Landroid/view/ViewGroup;)V

    .line 45
    return-object p1
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerDailyTools;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
