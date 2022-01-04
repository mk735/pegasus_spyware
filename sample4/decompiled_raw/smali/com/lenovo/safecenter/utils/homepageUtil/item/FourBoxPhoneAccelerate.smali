.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
.source "FourBoxPhoneAccelerate.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const v0, 0x7f020188

    const v1, 0x7f0d05af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static enterPhoneAccelerate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 18
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 35
    const v12, 0x7f09033a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .local v1, "icon":Landroid/widget/ImageView;
    const v12, 0x7f09033b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 39
    .local v8, "tvTitle":Landroid/widget/TextView;
    const v12, 0x7f09033d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 42
    .local v4, "layoutCenterAlign":Landroid/view/ViewGroup;
    const v12, 0x7f090340

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 50
    .local v5, "layoutLeftAndRightAlign":Landroid/view/ViewGroup;
    const v12, 0x7f090341

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 52
    .local v10, "tv_LR_Line1Title":Landroid/widget/TextView;
    const v12, 0x7f090342

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 54
    .local v9, "tv_LR_Line1Detail":Landroid/widget/TextView;
    const v12, 0x7f090344

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 59
    .local v11, "tv_LR_Line2Title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->idIcon:I

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 63
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 65
    new-instance v12, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;

    invoke-direct {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;-><init>()V

    invoke-virtual {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getSystemMeminfo()I

    move-result v12

    rsub-int/lit8 v6, v12, 0x64

    .line 67
    .local v6, "percentage":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    const v13, 0x7f0d066f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "strPercentage":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastKillTime(Landroid/content/Context;)J

    move-result-wide v14

    sub-long v2, v12, v14

    .line 74
    .local v2, "interval":J
    const-wide/16 v12, 0x3a98

    cmp-long v12, v2, v12

    if-gez v12, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :goto_0
    return-object p1

    .line 82
    :cond_0
    new-instance v12, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;

    invoke-direct {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;-><init>()V

    invoke-virtual {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getTotalMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    const-string v14, "i"

    const-string v15, "wu0wu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "totalMemory="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v14, 0x20000000

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    const-string v12, "i"

    const-string v13, "wu0wu"

    const-string v14, "getValueWordingInCritical=30"

    invoke-static {v12, v13, v14}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x1e

    :goto_1
    if-le v6, v12, :cond_2

    .line 83
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0671

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v12, "i"

    const-string v13, "wu0wu"

    const-string v14, "getValueWordingInCritical=20"

    invoke-static {v12, v13, v14}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x14

    goto :goto_1

    .line 88
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0670

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxPhoneAccelerate;->enterPhoneAccelerate(Landroid/content/Context;)V

    .line 120
    return-void
.end method
