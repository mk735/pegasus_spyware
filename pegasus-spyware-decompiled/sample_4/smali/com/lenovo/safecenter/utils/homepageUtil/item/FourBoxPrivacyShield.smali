.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
.source "FourBoxPrivacyShield.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const v0, 0x7f020189

    const v1, 0x7f0d0003

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(Lcom/lenovo/safecenter/support/SafeLog;)Ljava/lang/String;
    .locals 5
    .param p1, "log"    # Lcom/lenovo/safecenter/support/SafeLog;

    .prologue
    .line 94
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 97
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    .local v1, "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 99
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    iget-object v1, p1, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static enterPrivacyShield(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 16
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 37
    const v11, 0x7f09033a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .local v1, "icon":Landroid/widget/ImageView;
    const v11, 0x7f09033b

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 41
    .local v6, "tvTitle":Landroid/widget/TextView;
    const v11, 0x7f09033d

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "layoutCenterAlign":Landroid/view/View;
    const v11, 0x7f090340

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 47
    .local v3, "layoutLeftAndRightAlign":Landroid/view/View;
    const v11, 0x7f09033e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 49
    .local v8, "tv_C_Line1Title":Landroid/widget/TextView;
    const v11, 0x7f09033f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 52
    .local v7, "tv_C_Line1Detail":Landroid/widget/TextView;
    const v11, 0x7f090341

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 56
    .local v9, "tv_LR_Line1Title":Landroid/widget/TextView;
    const v11, 0x7f090344

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 61
    .local v10, "tv_LR_Line2Title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->idIcon:I

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v11, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    if-lez v11, :cond_1

    .line 65
    sget-object v11, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v12, "privacy"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/SafeLog;

    .line 66
    .local v4, "log":Lcom/lenovo/safecenter/support/SafeLog;
    if-eqz v4, :cond_1

    .line 67
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 69
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->a(Lcom/lenovo/safecenter/support/SafeLog;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    const v13, 0x7f0d05d1

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    const v13, 0x7f0d05d1

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    const v14, 0x7f0d05d1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07001c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-static {v9, v11, v12, v13, v14}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 76
    iget v11, v4, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0487

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    iget-object v13, v4, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v12, v13}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v4    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 76
    .restart local v4    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    iget-object v12, v4, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v12}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 82
    .end local v4    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    const v12, 0x7f0d05b6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    const v12, 0x7f0d0717

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPrivacyShield;->enterPrivacyShield(Landroid/content/Context;)V

    .line 123
    return-void
.end method
