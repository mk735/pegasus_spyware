.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
.source "FourBoxHarassIntercept.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const v0, 0x7f020186

    const v1, 0x7f0d0230

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 14
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 36
    const v9, 0x7f09033a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .local v0, "icon":Landroid/widget/ImageView;
    const v9, 0x7f09033b

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 40
    .local v3, "tvTitle":Landroid/widget/TextView;
    const v9, 0x7f09033d

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .local v1, "layoutCenterAlign":Landroid/view/ViewGroup;
    const v9, 0x7f090340

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 46
    .local v2, "layoutLeftAndRightAlign":Landroid/view/ViewGroup;
    const v9, 0x7f09033e

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "tv_C_Line1Title":Landroid/widget/TextView;
    const v9, 0x7f090341

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 53
    .local v6, "tv_LR_Line1Title":Landroid/widget/TextView;
    const v9, 0x7f090342

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 55
    .local v5, "tv_LR_Line1Detail":Landroid/widget/TextView;
    const v9, 0x7f090344

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 57
    .local v8, "tv_LR_Line2Title":Landroid/widget/TextView;
    const v9, 0x7f090345

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .local v7, "tv_LR_Line2Detail":Landroid/widget/TextView;
    iget v9, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->idIcon:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z

    move-result v9

    if-nez v9, :cond_0

    .line 68
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    const v11, 0x7f0d05c5

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    const v11, 0x7f0d048d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :goto_0
    return-object p1

    .line 77
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    const v9, 0x7f0d010f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v9, 0x7f0d05b1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    const v10, 0x7f0d05b9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget v11, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-static {v5, v9, v10, v11, v12}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 88
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    const v10, 0x7f0d05ba

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget v11, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-static {v7, v9, v10, v11, v12}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxHarassIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
