.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.source "DrawerPrivacyZone.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z

    .prologue
    .line 26
    const v0, 0x7f020163

    const v1, 0x7f0d000b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;-><init>(ILjava/lang/String;Landroid/content/Context;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 32
    const v4, 0x7f09032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 33
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f09032e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f09032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .local v0, "bg":Landroid/view/ViewGroup;
    const v4, 0x7f09032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .local v2, "newMark":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mIsNew:Z

    if-eqz v4, :cond_1

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :goto_0
    const-string v4, "changeNametitle"

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v4, "changeimg"

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "changeimg"

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->idIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->setBackgroundResource(Landroid/view/ViewGroup;)V

    .line 46
    return-object p1

    .line 40
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_2
    const-string v4, "changeNametitle"

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const v4, 0x7f020299

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "com.lenovo.safecenter.privatezone"

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/DialogUtil;->showPwdDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerPrivacyZone;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.safecenter.privatezone"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->startSettingPasswordActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
