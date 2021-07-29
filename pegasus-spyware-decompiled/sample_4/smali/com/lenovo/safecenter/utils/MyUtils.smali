.class public Lcom/lenovo/safecenter/utils/MyUtils;
.super Ljava/lang/Object;
.source "MyUtils.java"


# static fields
.field public static final INFO_NOTI_ID:I = 0x101

.field public static final LONG_NOTI_ID:I = 0x100

.field public static final NOTIFICATION_CHILD_MODE:I = 0x1

.field public static final NOTIFICATION_GUEST_MODE:I = 0x11

.field public static final NOTIFI_HARASS_CALL:I = 0x3

.field public static final NOTIFI_HARASS_SMS:I = 0x4

.field public static final NOTIFI_LESEC:I = 0x0

.field public static final NOTIFI_PRIVACY:I = 0x2

.field public static final NOTIFI_TARIFF:I = 0x1

.field public static final NOTIFI_TRAFFIC_CORRECT:I = 0x5

.field public static final SMS_OUT_NOTI_ID:I = 0x1000

.field public static final TRAFFIC_OUT_NOTI_ID:I = 0x111

.field public static final UNREAD_SMS_ID:I = 0x111

.field public static final VIRUS_NOTI_ID:I = 0x110

.field private static a:Landroid/location/LocationManager;

.field public static info:Z

.field public static isLocked:Z

.field public static isRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/MyUtils;->isRead:Z

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/utils/MyUtils;->isLocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1334
    const/4 v7, 0x0

    .line 1336
    .local v7, "mContentView":Landroid/widget/RemoteViews;
    const/4 v14, 0x0

    .line 1337
    .local v14, "strMonthFree":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1339
    .local v12, "progress":I
    const-wide/16 v16, 0x0

    .line 1340
    .local v16, "todayUsed":J
    const-wide/16 v9, 0x0

    .line 1341
    .local v9, "monthFree":J
    const/4 v11, 0x0

    .line 1342
    .local v11, "monthLImit":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataCardPosition(Landroid/content/Context;)I

    move-result v4

    .line 1343
    .local v4, "dataPostion":I
    if-nez v4, :cond_1

    .line 1344
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v16

    .line 1345
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v9

    .line 1346
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed()I

    move-result v12

    .line 1347
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v11

    .line 1354
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 1355
    .local v15, "strTodayUsed":Ljava/lang/String;
    const-string v18, "-1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1356
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f0300ce

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .end local v7    # "mContentView":Landroid/widget/RemoteViews;
    .local v8, "mContentView":Landroid/widget/RemoteViews;
    const v18, 0x7f090476

    const v19, 0x7f0d0462

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 1384
    .end local v8    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v7    # "mContentView":Landroid/widget/RemoteViews;
    :goto_1
    const v18, 0x7f090475

    const/16 v19, 0x64

    const/16 v20, 0x0

    :try_start_2
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v7, v0, v1, v12, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1386
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070021

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1387
    .local v3, "color":I
    sget v18, Lcom/lenovo/safecenter/support/SafeCenterService;->charge_count:I

    if-lez v18, :cond_5

    .line 1388
    const v18, 0x7f09046e

    move/from16 v0, v18

    invoke-virtual {v7, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1392
    :goto_2
    sget v18, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    if-lez v18, :cond_6

    .line 1393
    const v18, 0x7f090470

    move/from16 v0, v18

    invoke-virtual {v7, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1397
    :goto_3
    sget v18, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    if-lez v18, :cond_7

    .line 1398
    const v18, 0x7f090471

    move/from16 v0, v18

    invoke-virtual {v7, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1402
    :goto_4
    sget v18, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    if-lez v18, :cond_8

    .line 1403
    const v18, 0x7f09046f

    move/from16 v0, v18

    invoke-virtual {v7, v0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1408
    :goto_5
    const v18, 0x7f09046e

    sget v19, Lcom/lenovo/safecenter/support/SafeCenterService;->charge_count:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1409
    const v18, 0x7f090470

    sget v19, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1410
    const v18, 0x7f090471

    sget v19, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1411
    const v18, 0x7f09046f

    sget v19, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1416
    .end local v3    # "color":I
    .end local v4    # "dataPostion":I
    .end local v15    # "strTodayUsed":Ljava/lang/String;
    :goto_6
    return-object v7

    .line 1348
    .restart local v4    # "dataPostion":I
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_0

    .line 1349
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v16

    .line 1350
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic2()J

    move-result-wide v9

    .line 1351
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed2()I

    move-result v12

    .line 1352
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 1359
    .restart local v15    # "strTodayUsed":Ljava/lang/String;
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-gez v18, :cond_3

    .line 1360
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f0300d0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1361
    .end local v7    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v8    # "mContentView":Landroid/widget/RemoteViews;
    neg-long v0, v9

    move-wide/from16 v18, v0

    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 1362
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0d0387

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v15, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1364
    .local v13, "stoday":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0d03a8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1365
    .local v5, "decribe":Ljava/lang/String;
    const v18, 0x7f090476

    move/from16 v0, v18

    invoke-virtual {v8, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v8

    .line 1366
    .end local v8    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v7    # "mContentView":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .end local v5    # "decribe":Ljava/lang/String;
    .end local v13    # "stoday":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x5a

    move/from16 v0, v18

    if-lt v12, v0, :cond_4

    .line 1367
    :try_start_4
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f0300cf

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1368
    .end local v7    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v8    # "mContentView":Landroid/widget/RemoteViews;
    :try_start_5
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 1370
    const v18, 0x7f090476

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0d0387

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0d03a9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

    .end local v8    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v7    # "mContentView":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 1375
    :cond_4
    :try_start_6
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f0300ce

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1376
    .end local v7    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v8    # "mContentView":Landroid/widget/RemoteViews;
    :try_start_7
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 1378
    const v18, 0x7f090476

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0d0387

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0d03a9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v7, v8

    .end local v8    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v7    # "mContentView":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 1390
    .restart local v3    # "color":I
    :cond_5
    const v18, 0x7f09046e

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 1412
    .end local v3    # "color":I
    .end local v4    # "dataPostion":I
    .end local v15    # "strTodayUsed":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1413
    .local v6, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1395
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "color":I
    .restart local v4    # "dataPostion":I
    .restart local v15    # "strTodayUsed":Ljava/lang/String;
    :cond_6
    const v18, 0x7f090470

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    .line 1400
    :cond_7
    const v18, 0x7f090471

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_4

    .line 1405
    :cond_8
    const v18, 0x7f09046f

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5

    .line 1412
    .end local v3    # "color":I
    .end local v7    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v8    # "mContentView":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v7    # "mContentView":Landroid/widget/RemoteViews;
    goto :goto_7
.end method

.method public static alarming(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    const-string v0, "test"

    const-string v1, "==============>checking alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.antitheft.ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    return-void
.end method

.method public static alert(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1553
    :try_start_0
    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return-void

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static backupToMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "safeMailAddress"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0d00cb

    const v7, 0x7f0d00c1

    .line 348
    const-string v5, "test"

    const-string v6, "in the backup"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v4, 0x0

    .line 351
    .local v4, "type":I
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0d04d4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->sendMsgToSafeNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return v4

    .line 361
    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    .line 365
    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->getNetWorksState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 367
    new-instance v5, Lcom/lenovo/safecenter/utils/BackUpSms;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/utils/BackUpSms;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/lenovo/safecenter/utils/BackUpSms;->backup()V

    .line 368
    new-instance v5, Lcom/lenovo/safecenter/utils/BackUpContact;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/utils/BackUpContact;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/lenovo/safecenter/utils/BackUpContact;->backup()V

    .line 371
    new-instance v3, Lcom/lenovo/safecenter/utils/SendEmail;

    invoke-direct {v3, p0, p2}, Lcom/lenovo/safecenter/utils/SendEmail;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    .local v3, "se":Lcom/lenovo/safecenter/utils/SendEmail;
    invoke-virtual {v3}, Lcom/lenovo/safecenter/utils/SendEmail;->send()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0d00c8

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0d00ca

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->sendMsgToSafeNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_1
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Contacts.vcf"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "smsbackup.txt"

    aput-object v6, v1, v5

    .line 401
    .local v1, "filesName":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 402
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "filesName":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 388
    :cond_4
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->sendMsgToSafeNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    .line 408
    .end local v3    # "se":Lcom/lenovo/safecenter/utils/SendEmail;
    :cond_6
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->sendMsgToSafeNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :cond_7
    const/4 v4, 0x2

    goto/16 :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notiId"    # I

    .prologue
    .line 1421
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1423
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1424
    return-void
.end method

.method public static clearCalendar(Landroid/content/ContentResolver;)V
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 557
    :try_start_0
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 559
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 561
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 564
    .local v8, "id":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 566
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    .end local v8    # "id":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    const-string v0, "test"

    const-string v2, "clearCalendar end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v7

    .line 571
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static clearMMS(Landroid/content/ContentResolver;)V
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 535
    :try_start_0
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 536
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 538
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 540
    .local v8, "id":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 541
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "id":I
    :catch_0
    move-exception v7

    .line 549
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 544
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_1
    const-string v0, "test"

    const-string v2, "clear mms end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static clearSMS(Landroid/content/ContentResolver;)V
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 511
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 512
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 513
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 514
    .local v9, "numcount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 515
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 516
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, "_id":Ljava/lang/String;
    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 528
    .end local v6    # "_id":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 529
    const-string v0, "test"

    const-string v2, "clear sms end"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .restart local v6    # "_id":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static deleteBrowserRecord(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    return-void
.end method

.method public static deleteCallLog(Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 578
    :try_start_0
    const-string v2, "content://call_log/calls"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 579
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    const-string v2, "test"

    const-string v3, "delete callLog end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteContactsItemInPhone(Landroid/content/ContentResolver;)V
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 464
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 466
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 469
    .local v6, "contact_id":I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 471
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    .end local v6    # "contact_id":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 488
    return-void
.end method

.method public static deleteMail(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mails.intent.action.deleteall"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/support/CMDHelper;->deleMail(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    const-string v2, "test"

    const-string v3, "delete Mail end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete Mail error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deletePushAccount(Landroid/content/ContentResolver;)V
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 639
    :try_start_0
    const-string v3, "content://com.android.provider.pushsetting/userdata"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 641
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 642
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "confvalue"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v3, "confname=? or confname=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UserName"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Password"

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 647
    const-string v3, "test"

    const-string v4, "delete pushAccount end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteSimContacts(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 681
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const/4 v1, 0x0

    .line 682
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 683
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 684
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 685
    .local v9, "operator":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 687
    const-string v2, "46000"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    :cond_0
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 689
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 707
    :cond_1
    :goto_0
    if-eqz v6, :cond_7

    .line 708
    const/4 v2, -0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 709
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 710
    const-string v2, "name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 711
    .local v8, "name":Ljava/lang/String;
    const-string v2, "number"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 712
    .local v10, "phoneNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 713
    .local v12, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND number=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 714
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 715
    .local v7, "i":I
    if-nez v7, :cond_2

    .line 716
    const-string v2, "test"

    const-string v3, "delete simContacts error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 691
    .end local v7    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "phoneNumber":Ljava/lang/String;
    .end local v12    # "where":Ljava/lang/String;
    :cond_3
    const-string v2, "46001"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 692
    const-string v2, "content://icc/pbr"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 694
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 696
    :catch_0
    move-exception v2

    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 697
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 698
    goto/16 :goto_0

    .line 700
    :cond_4
    const-string v2, "46003"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    :cond_5
    :goto_2
    return-void

    .line 720
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_7
    const-string v2, "test"

    const-string v3, "delete simContacts end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static deleteUnsendSMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const-string v3, "body like ? and (type!=0 and type!=1 and type!=2)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 113
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "_id":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "thread_id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/conversations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "_id":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "thread_id":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 121
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static deleteWhiteAndBlackContacts(Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 493
    :try_start_0
    const-string v2, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 495
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    const-string v2, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 498
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 499
    const-string v2, "content://com.lenovo.safecenter.netBlackProvider/netblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 501
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 502
    const-string v2, "test"

    const-string v3, "delete white and black contacts end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatAllTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1506
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "dateValue":Ljava/lang/String;
    return-object v0
.end method

.method public static formatReportTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1512
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "dateValue":Ljava/lang/String;
    return-object v0
.end method

.method public static formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1495
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "dateValue":Ljava/lang/String;
    return-object v0
.end method

.method public static getDataDirectorySize()F
    .locals 7

    .prologue
    .line 1543
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1544
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-float v3, v4

    .line 1545
    .local v3, "totalBlocks":F
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-float v0, v4

    .line 1546
    .local v0, "availableBlocks":F
    sub-float v4, v3, v0

    div-float v1, v4, v3

    .line 1547
    .local v1, "size":F
    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataDirectorySize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return v1
.end method

.method public static getForegroundNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x10000000

    .line 1063
    if-nez p0, :cond_0

    .line 1064
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1066
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1068
    .local v1, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1070
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1074
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1076
    const/16 v2, 0x12

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1078
    return-object v1
.end method

.method public static getNetWorksState(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    const/4 v3, 0x0

    .line 426
    .local v3, "success":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 428
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 430
    .local v2, "stateWIFI":Landroid/net/NetworkInfo$State;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 432
    .local v1, "stateMOBILE":Landroid/net/NetworkInfo$State;
    const-string v4, "info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetWorksState state-wifi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state-mobile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_0

    .line 435
    const/4 v3, 0x1

    .line 437
    :cond_0
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v1, :cond_1

    .line 438
    const/4 v3, 0x1

    .line 443
    :cond_1
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in the getNetWorks State is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v3
.end method

.method public static getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notiInfo"    # Ljava/lang/String;
    .param p2, "LesecVisible"    # Z
    .param p3, "netFilter"    # Landroid/content/Intent;
    .param p4, "notiIcon"    # I
    .param p5, "tickerText"    # Ljava/lang/String;

    .prologue
    .line 1025
    const/4 v3, 0x0

    .line 1027
    .local v3, "notification":Landroid/app/Notification;
    :try_start_0
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1029
    .end local v3    # "notification":Landroid/app/Notification;
    .local v4, "notification":Landroid/app/Notification;
    :try_start_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1030
    .local v2, "mContentView":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_1

    .line 1031
    const v5, 0x7f090466

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1032
    const v5, 0x7f090473

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1034
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v5

    const/16 v6, 0x320

    if-ge v5, v6, :cond_0

    .line 1035
    const v5, 0x7f090473

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d068f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1046
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, p3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1047
    .local v0, "appIntent":Landroid/app/PendingIntent;
    iput p4, v4, Landroid/app/Notification;->icon:I

    .line 1048
    const/16 v5, 0xa

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1049
    iput-object p5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1051
    iput-object v2, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1052
    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v3, v4

    .line 1057
    .end local v0    # "appIntent":Landroid/app/PendingIntent;
    .end local v2    # "mContentView":Landroid/widget/RemoteViews;
    .end local v4    # "notification":Landroid/app/Notification;
    .restart local v3    # "notification":Landroid/app/Notification;
    :goto_1
    return-object v3

    .line 1038
    .end local v3    # "notification":Landroid/app/Notification;
    .restart local v2    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v4    # "notification":Landroid/app/Notification;
    :cond_0
    const v5, 0x7f090473

    invoke-virtual {v2, v5, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1053
    .end local v2    # "mContentView":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1054
    .end local v4    # "notification":Landroid/app/Notification;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "notification":Landroid/app/Notification;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1041
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "notification":Landroid/app/Notification;
    .restart local v2    # "mContentView":Landroid/widget/RemoteViews;
    .restart local v4    # "notification":Landroid/app/Notification;
    :cond_1
    const v5, 0x7f090466

    const/16 v6, 0x8

    :try_start_2
    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1042
    const v5, 0x7f090473

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1043
    const v5, 0x7f090473

    invoke-virtual {v2, v5, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1053
    .end local v2    # "mContentView":Landroid/widget/RemoteViews;
    .end local v4    # "notification":Landroid/app/Notification;
    .restart local v3    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static getPreMType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1460
    const-string v0, "sendmessage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    const-string v0, "0"

    .line 1491
    :goto_0
    return-object v0

    .line 1463
    :cond_0
    const-string v0, "call_phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1464
    const-string v0, "1"

    goto :goto_0

    .line 1466
    :cond_1
    const-string v0, "contact"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1467
    const-string v0, "3"

    goto :goto_0

    .line 1469
    :cond_2
    const-string v0, "readmessage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1470
    const-string v0, "4"

    goto :goto_0

    .line 1472
    :cond_3
    const-string v0, "calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1473
    const-string v0, "5"

    goto :goto_0

    .line 1475
    :cond_4
    const-string v0, "history"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1476
    const-string v0, "6"

    goto :goto_0

    .line 1478
    :cond_5
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1479
    const-string v0, "7"

    goto :goto_0

    .line 1482
    :cond_6
    const-string v0, "record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1483
    const-string v0, "8"

    goto :goto_0

    .line 1485
    :cond_7
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1486
    const-string v0, "9"

    goto :goto_0

    .line 1488
    :cond_8
    const-string v0, "receive_phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1489
    const-string v0, "10"

    goto :goto_0

    .line 1491
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I
    .param p1, "state"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_1

    move-object v0, v1

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    invoke-static {p2}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "number":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :cond_2
    invoke-static {p2}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {p2}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/provider/MultiSIMUtils;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move-object v0, v1

    .line 275
    goto :goto_0

    .line 277
    :cond_3
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "......get sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static lockedScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v1, "test"

    const-string v2, "locked screen--->"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.lockscreenservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "phonenumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    return-void
.end method

.method public static openGPSSettings(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 778
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/lenovo/safecenter/utils/MyUtils;->a:Landroid/location/LocationManager;

    .line 780
    sget-object v0, Lcom/lenovo/safecenter/utils/MyUtils;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    const-string v0, "GPS\u6a21\u5757\u6b63\u5e38"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 787
    sget-object v0, Lcom/lenovo/safecenter/utils/MyUtils;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const-string v0, "GPS\u5f00\u542f"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static replaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1518
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    :cond_0
    const-string v0, "N/A"

    .line 1521
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "|"

    const-string v1, "\\|"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendBackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.antitheft.SENDMESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1011
    return-void
.end method

.method public static sendGETRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 129
    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x26

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const-string v9, "ydp"

    const-string v10, "catch -1"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v6, "ERROR"

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 134
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 136
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v9, "path"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 139
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.connection.timeout"

    const/16 v11, 0x1770

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 140
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.socket.timeout"

    const/16 v11, 0x1770

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 142
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 143
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 144
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    const-string v9, "StatusCode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">>>>>>>>>>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_2

    .line 147
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "msg":Ljava/lang/String;
    const-string v9, "ydp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dw ok msg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 152
    .end local v6    # "msg":Ljava/lang/String;
    :cond_2
    const-string v9, "ydp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-1 :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v6, "SC_ERROR"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static sendMsgToSafeNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.antitheft.SENDMESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    return-void
.end method

.method public static setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "color"    # I

    .prologue
    .line 1527
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1528
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1529
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1530
    return-void
.end method

.method public static setSpannableString(Landroid/widget/TextView;Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "color"    # I
    .param p5, "textSize"    # I

    .prologue
    .line 1535
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1536
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1538
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1539
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1540
    return-void
.end method

.method public static declared-synchronized showLeSecNotification(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1249
    const-class v18, Lcom/lenovo/safecenter/utils/MyUtils;

    monitor-enter v18

    const/4 v10, 0x0

    .line 1250
    .local v10, "notification":Landroid/app/Notification;
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1251
    .local v4, "netFilter":Landroid/content/Intent;
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    if-nez v1, :cond_2

    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->charge_count:I

    if-nez v1, :cond_2

    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    if-nez v1, :cond_2

    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    if-nez v1, :cond_2

    .line 1253
    const-class v1, Lcom/lenovo/safecenter/MainTab/SplashActivity;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1254
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    const v1, 0x7f0d020a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v5, 0x7f0200bb

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1327
    :cond_0
    :goto_0
    const-string v1, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1328
    .local v9, "manager":Landroid/app/NotificationManager;
    if-eqz v10, :cond_1

    .line 1329
    const/16 v1, 0x100

    invoke-virtual {v9, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    :cond_1
    monitor-exit v18

    return-void

    .line 1261
    .end local v9    # "manager":Landroid/app/NotificationManager;
    :cond_2
    const/4 v1, 0x4

    :try_start_1
    new-array v0, v1, [J

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 1262
    .local v17, "times":[J
    const-wide/16 v15, 0x0

    .line 1263
    .local v15, "tariffTime":J
    const-wide/16 v11, 0x0

    .line 1264
    .local v11, "privacyTime":J
    const-wide/16 v13, 0x0

    .line 1265
    .local v13, "smsTime":J
    const-wide/16 v7, 0x0

    .line 1267
    .local v7, "callTime":J
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->charge_count:I

    if-lez v1, :cond_3

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "tariff"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1269
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "tariff"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 1270
    const/4 v1, 0x0

    aput-wide v15, v17, v1

    .line 1273
    :cond_3
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->privacy_count:I

    if-lez v1, :cond_4

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "privacy"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1275
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "privacy"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1276
    const/4 v1, 0x1

    aput-wide v11, v17, v1

    .line 1279
    :cond_4
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    if-lez v1, :cond_5

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "harass_call"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1281
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "harass_call"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1282
    const/4 v1, 0x2

    aput-wide v7, v17, v1

    .line 1284
    :cond_5
    sget v1, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    if-lez v1, :cond_6

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "harass_sms"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1286
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "harass_sms"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1287
    const/4 v1, 0x3

    aput-wide v13, v17, v1

    .line 1289
    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([J)V

    .line 1291
    const/4 v1, 0x3

    aget-wide v5, v17, v1

    cmp-long v1, v15, v5

    if-nez v1, :cond_7

    .line 1292
    const-class v1, Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1293
    const-string v1, "key"

    const-string v3, "key"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getChargeLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1295
    .local v2, "notiInfo":Ljava/lang/String;
    const/4 v3, 0x0

    const v5, 0x7f02020f

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1297
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshChargeLogs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1249
    .end local v2    # "notiInfo":Ljava/lang/String;
    .end local v4    # "netFilter":Landroid/content/Intent;
    .end local v7    # "callTime":J
    .end local v11    # "privacyTime":J
    .end local v13    # "smsTime":J
    .end local v15    # "tariffTime":J
    .end local v17    # "times":[J
    :catchall_0
    move-exception v1

    monitor-exit v18

    throw v1

    .line 1299
    .restart local v4    # "netFilter":Landroid/content/Intent;
    .restart local v7    # "callTime":J
    .restart local v11    # "privacyTime":J
    .restart local v13    # "smsTime":J
    .restart local v15    # "tariffTime":J
    .restart local v17    # "times":[J
    :cond_7
    const/4 v1, 0x3

    :try_start_2
    aget-wide v5, v17, v1

    cmp-long v1, v7, v5

    if-nez v1, :cond_8

    .line 1300
    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1301
    const-string v1, "key"

    const-string v3, "key"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v1, "type"

    const/4 v3, 0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getHarassLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    .restart local v2    # "notiInfo":Ljava/lang/String;
    const/4 v3, 0x0

    const v5, 0x7f02020c

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1306
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshHarassLogs()V

    goto/16 :goto_0

    .line 1308
    .end local v2    # "notiInfo":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x3

    aget-wide v5, v17, v1

    cmp-long v1, v13, v5

    if-nez v1, :cond_9

    .line 1309
    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1310
    const-string v1, "key"

    const-string v3, "key"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getHarassLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1313
    .restart local v2    # "notiInfo":Ljava/lang/String;
    const/4 v3, 0x0

    const v5, 0x7f02020e

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1315
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshHarassLogs()V

    goto/16 :goto_0

    .line 1317
    .end local v2    # "notiInfo":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x3

    aget-wide v5, v17, v1

    cmp-long v1, v11, v5

    if-nez v1, :cond_0

    .line 1318
    const-class v1, Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1319
    const-string v1, "key"

    const-string v3, "key"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getPrivacyLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1321
    .restart local v2    # "notiInfo":Ljava/lang/String;
    const/4 v3, 0x0

    const v5, 0x7f02020d

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1323
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshPrivacyLogs()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1261
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static declared-synchronized showNotification(Landroid/content/Context;II)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notiId"    # I
    .param p2, "notiType"    # I

    .prologue
    .line 1083
    const-class v13, Lcom/lenovo/safecenter/utils/MyUtils;

    monitor-enter v13

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1084
    .local v11, "manager":Landroid/app/NotificationManager;
    const/4 v10, 0x0

    .line 1085
    .local v10, "mNotification":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    .local v3, "mIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1087
    .local v9, "intent":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 1089
    .local v12, "notiInfo":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move-object v1, v12

    .line 1210
    .end local v12    # "notiInfo":Ljava/lang/String;
    .local v1, "notiInfo":Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit v13

    return-void

    .line 1091
    .end local v1    # "notiInfo":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f03007d

    invoke-direct {v6, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1092
    .local v6, "childView":Landroid/widget/RemoteViews;
    const v0, 0x7f0902eb

    const v2, 0x7f0d0023

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1093
    const v0, 0x7f0902ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d0023

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0d003c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1096
    const-class v0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1097
    const/high16 v0, 0x20000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1098
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1099
    new-instance v10, Landroid/app/Notification;

    .end local v10    # "mNotification":Landroid/app/Notification;
    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 1100
    .restart local v10    # "mNotification":Landroid/app/Notification;
    const/16 v0, 0xa

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 1101
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1102
    const v0, 0x7f0200f4

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 1103
    iput-object v6, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1104
    iput-object v9, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1106
    const/4 v0, 0x1

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object v1, v12

    .line 1107
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    goto :goto_1

    .line 1110
    .end local v1    # "notiInfo":Ljava/lang/String;
    .end local v6    # "childView":Landroid/widget/RemoteViews;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :sswitch_1
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f03007d

    invoke-direct {v8, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1111
    .local v8, "guestView":Landroid/widget/RemoteViews;
    const v0, 0x7f0902eb

    const v2, 0x7f0d0025

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1112
    const v0, 0x7f0902ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d0025

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0d003c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1115
    const-class v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1116
    const/high16 v0, 0x20000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1117
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1118
    new-instance v10, Landroid/app/Notification;

    .end local v10    # "mNotification":Landroid/app/Notification;
    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 1119
    .restart local v10    # "mNotification":Landroid/app/Notification;
    const/16 v0, 0xa

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 1120
    const v0, 0x7f0d0035

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1121
    const v0, 0x7f020143

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 1122
    iput-object v8, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1123
    iput-object v9, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1125
    const/16 v0, 0x11

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object v1, v12

    .line 1126
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    goto/16 :goto_1

    .line 1129
    .end local v1    # "notiInfo":Ljava/lang/String;
    .end local v8    # "guestView":Landroid/widget/RemoteViews;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :sswitch_2
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 1131
    :pswitch_0
    const-class v0, Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1132
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    const v0, 0x7f0d020a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const v4, 0x7f0200bb

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1136
    if-eqz v10, :cond_0

    .line 1137
    const/16 v0, 0x100

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object v1, v12

    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    goto/16 :goto_1

    .line 1140
    .end local v1    # "notiInfo":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :pswitch_1
    const-class v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1141
    const-string v0, "key"

    const-string v2, "key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    invoke-static {p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getChargeLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    const/4 v2, 0x0

    const v4, 0x7f02020f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1145
    if-eqz v10, :cond_1

    .line 1146
    const/16 v0, 0x100

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1083
    .end local v1    # "notiInfo":Ljava/lang/String;
    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v9    # "intent":Landroid/app/PendingIntent;
    .end local v10    # "mNotification":Landroid/app/Notification;
    .end local v11    # "manager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 1150
    .restart local v3    # "mIntent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/app/PendingIntent;
    .restart local v10    # "mNotification":Landroid/app/Notification;
    .restart local v11    # "manager":Landroid/app/NotificationManager;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :pswitch_2
    :try_start_2
    const-class v0, Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1151
    const-string v0, "key"

    const-string v2, "key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-static {p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getPrivacyLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    const/4 v2, 0x0

    const v4, 0x7f02020d

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1155
    if-eqz v10, :cond_1

    .line 1156
    const/16 v0, 0x100

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 1160
    .end local v1    # "notiInfo":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :pswitch_3
    const-class v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1161
    const-string v0, "key"

    const-string v2, "key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v0, "type"

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    invoke-static {p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getHarassLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    const/4 v2, 0x0

    const v4, 0x7f02020c

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1166
    if-eqz v10, :cond_1

    .line 1167
    const/16 v0, 0x100

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 1171
    .end local v1    # "notiInfo":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :pswitch_4
    const-class v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1172
    const-string v0, "key"

    const-string v2, "key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    const-string v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1174
    invoke-static {p0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getHarassLogs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1175
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    const/4 v2, 0x0

    const v4, 0x7f02020e

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1177
    if-eqz v10, :cond_1

    .line 1178
    const/16 v0, 0x100

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 1182
    .end local v1    # "notiInfo":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :pswitch_5
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 1184
    const-string v0, "key"

    const-string v2, "key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-class v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1190
    :goto_2
    const v0, 0x7f0d07d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1191
    .local v7, "format":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 1192
    sget v0, Lcom/lenovo/safecenter/net/cache/NetCache;->lastCorrectCard:I

    if-nez v0, :cond_3

    .line 1193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v4, 0x7f0d07a5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    const v4, 0x7f0200bb

    move-object v0, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v10

    .line 1203
    if-eqz v10, :cond_1

    .line 1204
    const/16 v0, 0x100

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 1187
    .end local v1    # "notiInfo":Ljava/lang/String;
    .end local v7    # "format":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :cond_2
    const-class v0, Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1188
    const-string v0, "key"

    const-string v2, "key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1195
    .restart local v7    # "format":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v4, 0x7f0d07a6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    goto :goto_3

    .line 1198
    .end local v1    # "notiInfo":Ljava/lang/String;
    .restart local v12    # "notiInfo":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v0, v2

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v12    # "notiInfo":Ljava/lang/String;
    .restart local v1    # "notiInfo":Ljava/lang/String;
    goto :goto_3

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x11 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static showScanVirusNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0d018f

    const v9, 0x7f020293

    const v8, 0x7f0d0561

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1429
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1431
    .local v3, "manager":Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 1432
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1433
    .local v2, "mNotification":Landroid/app/Notification;
    const/16 v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 1437
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1440
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 1441
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1442
    const v4, 0x7f0d0190

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1456
    :cond_0
    :goto_0
    const/16 v4, 0x110

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1457
    return-void

    .line 1444
    :cond_1
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1445
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1446
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 1447
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1448
    .local v1, "intentunsure":Landroid/content/Intent;
    const-string v4, "com.lenovo.antivirus.notice"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string v4, "packageName"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1450
    const-string v4, "virustype"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const-string v4, "pname"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1453
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1564
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1566
    return-void
.end method

.method public static showUnreadSmsNotification(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1215
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1216
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "read=? and thread_id>0"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1218
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1220
    .local v11, "num":I
    if-lez v11, :cond_0

    .line 1221
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1222
    .local v10, "manager":Landroid/app/NotificationManager;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 1223
    .local v9, "mNotification":Landroid/app/Notification;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1225
    .local v8, "mIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.lenovo.ideafriend"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 1226
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lenovo.ideafriend"

    const-string v4, "com.lenovo.ideafriend.alias.MmsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_0
    invoke-static {p0, v12, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1235
    .local v7, "intent":Landroid/app/PendingIntent;
    const/16 v2, 0x10

    iput v2, v9, Landroid/app/Notification;->flags:I

    .line 1236
    const v2, 0x7f0d01d5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1237
    const v2, 0x7f0202ef

    iput v2, v9, Landroid/app/Notification;->icon:I

    .line 1238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Landroid/app/Notification;->when:J

    .line 1239
    iput-object v7, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1240
    const v2, 0x7f0d05df

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d05e0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, p0, v2, v3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1244
    const/16 v2, 0x111

    invoke-virtual {v10, v2, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1246
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mIntent":Landroid/content/Intent;
    .end local v9    # "mNotification":Landroid/app/Notification;
    .end local v10    # "manager":Landroid/app/NotificationManager;
    :cond_0
    return-void

    .line 1229
    .restart local v8    # "mIntent":Landroid/content/Intent;
    .restart local v9    # "mNotification":Landroid/app/Notification;
    .restart local v10    # "manager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v2

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
