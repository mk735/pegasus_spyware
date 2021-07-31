.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.source "DrawerAdvertiseIntercept.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUp"    # Z

    .prologue
    .line 24
    const v0, 0x7f020157

    const v1, 0x7f0d0609

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
    const/4 v5, 0x0

    .line 32
    iput-boolean v5, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->mIsNew:Z

    .line 33
    const v4, 0x7f09032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 34
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f09032e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f09032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .local v0, "bg":Landroid/view/ViewGroup;
    const v4, 0x7f09032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 38
    .local v2, "newMark":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->mIsNew:Z

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :goto_0
    iget v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->idIcon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->setBackgroundResource(Landroid/view/ViewGroup;)V

    .line 47
    return-object p1

    .line 41
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 52
    sget-object v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/DrawerAdvertiseIntercept;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
