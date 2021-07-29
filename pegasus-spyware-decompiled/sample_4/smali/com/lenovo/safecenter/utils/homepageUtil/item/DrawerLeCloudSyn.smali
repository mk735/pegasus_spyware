.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.source "DrawerLeCloudSyn.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z

    .prologue
    .line 28
    const v0, 0x7f020164

    const v1, 0x7f0d05b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;-><init>(ILjava/lang/String;Landroid/content/Context;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 34
    const v4, 0x7f09032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 35
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f09032e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 36
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f09032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    .local v0, "bg":Landroid/view/ViewGroup;
    const v4, 0x7f09032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 39
    .local v2, "newMark":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->mIsNew:Z

    if-eqz v4, :cond_0

    .line 40
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :goto_0
    iget v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->idIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->setBackgroundResource(Landroid/view/ViewGroup;)V

    .line 49
    return-object p1

    .line 42
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->mContext:Landroid/content/Context;

    const-string v2, "com.lenovo.leos.cloud.sync"

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/WflUtils;->startLeCloudSyn(Landroid/content/Context;)V

    .line 61
    :goto_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportEntryLeCloudSync()V

    .line 62
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "down":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerLeCloudSyn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
