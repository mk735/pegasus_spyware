.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
.source "FourBoxTrafficMonitor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const v0, 0x7f02018a

    const v1, 0x7f0d05b3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 30
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "type_traffic_monitor"

    invoke-static/range {v26 .. v27}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->hasContentInType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 37
    const v26, 0x7f090338

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 39
    .local v14, "newMark":Landroid/widget/ImageView;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .end local v14    # "newMark":Landroid/widget/ImageView;
    :cond_0
    const v26, 0x7f09033a

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 43
    .local v8, "icon":Landroid/widget/ImageView;
    const v26, 0x7f09033b

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 46
    .local v21, "tvTitle":Landroid/widget/TextView;
    const v26, 0x7f09033d

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 49
    .local v9, "layoutCenterAlign":Landroid/view/ViewGroup;
    const v26, 0x7f090340

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 58
    .local v10, "layoutLeftAndRightAlign":Landroid/view/ViewGroup;
    const v26, 0x7f090341

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 60
    .local v23, "tv_LR_Line1Title":Landroid/widget/TextView;
    const v26, 0x7f090342

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 62
    .local v22, "tv_LR_Line1Detail":Landroid/widget/TextView;
    const v26, 0x7f090344

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 64
    .local v25, "tv_LR_Line2Title":Landroid/widget/TextView;
    const v26, 0x7f090345

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 67
    .local v24, "tv_LR_Line2Detail":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->idIcon:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d05b4

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v15

    .line 77
    .local v15, "phoneSimInfo":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->initNetCache(Landroid/content/Context;)V

    .line 78
    const-string v26, "air"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NetCache.imsi = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-wide/16 v11, 0x0

    .line 80
    .local v11, "monthFree":J
    const-wide/16 v18, 0x0

    .line 81
    .local v18, "todayUsed":J
    const/4 v13, 0x0

    .line 83
    .local v13, "monthLimit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataCardPosition(Landroid/content/Context;)I

    move-result v6

    .line 84
    .local v6, "dataPostion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v20

    .line 85
    .local v20, "trafficMode":I
    if-nez v6, :cond_3

    .line 86
    sget-object v26, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2

    sget v26, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 87
    const-wide/16 v18, 0x0

    .line 91
    :goto_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v11

    .line 92
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed()I

    .line 93
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v13

    .line 106
    :cond_1
    :goto_1
    const/16 v16, 0x0

    .line 112
    .local v16, "strMonthFree":Ljava/lang/String;
    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-nez v26, :cond_5

    .line 114
    const-string v17, "0MB"

    .line 120
    .local v17, "strTodayUsed":Ljava/lang/String;
    :goto_2
    const/16 v26, 0xc

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    iget-object v0, v15, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_6

    iget-object v0, v15, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 123
    const v26, 0x7f0d07e4

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f07001c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f07001c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 183
    .end local v6    # "dataPostion":I
    .end local v11    # "monthFree":J
    .end local v13    # "monthLimit":Ljava/lang/String;
    .end local v15    # "phoneSimInfo":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .end local v16    # "strMonthFree":Ljava/lang/String;
    .end local v17    # "strTodayUsed":Ljava/lang/String;
    .end local v18    # "todayUsed":J
    .end local v20    # "trafficMode":I
    :goto_3
    return-object p1

    .line 89
    .restart local v6    # "dataPostion":I
    .restart local v11    # "monthFree":J
    .restart local v13    # "monthLimit":Ljava/lang/String;
    .restart local v15    # "phoneSimInfo":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .restart local v18    # "todayUsed":J
    .restart local v20    # "trafficMode":I
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v18

    goto :goto_0

    .line 94
    :cond_3
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v6, v0, :cond_1

    .line 95
    sget-object v26, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi2:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 96
    const-wide/16 v18, 0x0

    .line 100
    :goto_4
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic2()J

    move-result-wide v11

    .line 101
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed2()I

    .line 102
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 98
    :cond_4
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v18

    goto :goto_4

    .line 116
    .restart local v16    # "strMonthFree":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "strTodayUsed":Ljava/lang/String;
    goto/16 :goto_2

    .line 129
    :cond_6
    const/16 v26, 0xa

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    iget-object v0, v15, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 131
    const v26, 0x7f0d07e4

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f07001c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f07001c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 180
    .end local v6    # "dataPostion":I
    .end local v11    # "monthFree":J
    .end local v13    # "monthLimit":Ljava/lang/String;
    .end local v15    # "phoneSimInfo":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .end local v16    # "strMonthFree":Ljava/lang/String;
    .end local v17    # "strTodayUsed":Ljava/lang/String;
    .end local v18    # "todayUsed":J
    .end local v20    # "trafficMode":I
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dataPostion":I
    .restart local v11    # "monthFree":J
    .restart local v13    # "monthLimit":Ljava/lang/String;
    .restart local v15    # "phoneSimInfo":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .restart local v16    # "strMonthFree":Ljava/lang/String;
    .restart local v17    # "strTodayUsed":Ljava/lang/String;
    .restart local v18    # "todayUsed":J
    .restart local v20    # "trafficMode":I
    :cond_7
    const-wide/16 v26, 0x0

    cmp-long v26, v11, v26

    if-gez v26, :cond_8

    :try_start_1
    const-string v26, "-1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    neg-long v0, v11

    move-wide/from16 v27, v0

    invoke-static/range {v26 .. v28}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d05b5

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f07001c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 146
    const/16 v26, 0x0

    invoke-static/range {v16 .. v16}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070016

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto/16 :goto_3

    .line 149
    :cond_8
    const-string v26, "-1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 150
    const v26, 0x7f0d0461

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f070016

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f07001c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto/16 :goto_3

    .line 157
    :cond_9
    const-wide/16 v26, 0x0

    cmp-long v26, v11, v26

    if-nez v26, :cond_a

    .line 158
    const-string v16, "0MB"

    .line 164
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d0433

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f07001c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 170
    const-string v26, "0MB"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 172
    const v5, 0x7f070016

    .line 176
    .local v5, "color":I
    :goto_6
    const/16 v26, 0x0

    invoke-static/range {v16 .. v16}, Lcom/lenovo/safecenter/utils/WflUtils;->getCharIndexInString(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto/16 :goto_3

    .line 160
    .end local v5    # "color":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto :goto_5

    .line 174
    :cond_b
    const v5, 0x7f07001c

    .restart local v5    # "color":I
    goto :goto_6
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxTrafficMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntentTraffic(Landroid/content/Context;)V

    .line 189
    return-void
.end method
