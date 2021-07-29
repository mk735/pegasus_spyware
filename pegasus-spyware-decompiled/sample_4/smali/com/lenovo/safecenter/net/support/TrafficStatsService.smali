.class public Lcom/lenovo/safecenter/net/support/TrafficStatsService;
.super Ljava/lang/Object;
.source "TrafficStatsService.java"


# static fields
.field public static final ANDROID_CORE_UID:I = 0x2711

.field public static final ANDROID_MEDIA_UID:I = 0x271d

.field public static final ANDROID_MEDIA_UID2:I = 0x3f5

.field public static final ANDROID_PHONE_UID:I = 0x3e9

.field public static BAR_MAXHEIGHT:I = 0x0

.field public static final CMD_PATH:Ljava/lang/String; = "/data/data/com.lenovo.safecenter/files/nac.sh"

.field public static final CORRECT_ACTION_RTC_SIM:Ljava/lang/String; = "com.lenovo.safecenter.correct.traffic.SIM.service.RTC"

.field public static final CORRECT_ACTION_RTC_SIM2:Ljava/lang/String; = "com.lenovo.safecenter.correct.traffic.SIM2.service.RTC"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DB_NAME:Ljava/lang/String; = "trafficstats.db"

.field public static final ICS_MUTI:I = 0xc

.field public static final ICS_SINGLE:I = 0xa

.field public static final INTERVALTIME:J = 0x5265c00L

.field public static final LOW_ICS_SINGLE:I = 0xb

.field public static final NOTICE_TRAFFIC_ACTION_RTC:Ljava/lang/String; = "com.lenovo.safecenter.notice.traffic.ui.service.RTC"

.field public static final OPEN_PHONE:I = 0xd

.field public static final OPERATOR_CDMA:I = 0x2

.field public static final OPERATOR_M:I = 0x0

.field public static final OPERATOR_UN:I = 0x1

.field public static final OPERATOR_UNKONWN:I = 0x8

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.safecenter"

.field public static final TOTAL:Ljava/lang/String; = "total"

.field public static final TRAFFIC:Ljava/lang/String; = "traffic"

.field public static TRAFFIC_CHILDVIEW_WIDTH:I = 0x0

.field public static final TRAFFIC_DAY_WARN_ID:I = 0xf

.field public static final TRAFFIC_DAY_WARN_ID_SIM2:I = 0x17

.field public static final TRAFFIC_NOTI_TYPE_DAILY_OUT:I = 0x16

.field public static final TRAFFIC_WARN_ID:I = 0x9

.field public static final TRAFFIC_WARN_ID_SIM2:I = 0x18

.field public static final UNINSTALL_MODE:I = 0x10

.field public static canCorrect:Z

.field private static e:Z

.field private static f:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

.field private static g:Ljava/util/concurrent/ExecutorService;

.field private static final h:Landroid/os/Handler;

.field private static i:I


# instance fields
.field private a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    const/16 v0, 0x2d

    sput v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->TRAFFIC_CHILDVIEW_WIDTH:I

    .line 80
    const/16 v0, 0x3c

    sput v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->BAR_MAXHEIGHT:I

    .line 86
    sput-boolean v1, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->e:Z

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->f:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->g:Ljava/util/concurrent/ExecutorService;

    .line 141
    sput-boolean v1, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->canCorrect:Z

    .line 143
    new-instance v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$1;

    invoke-direct {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$1;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->h:Landroid/os/Handler;

    .line 2712
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->i:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    .line 433
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    .line 434
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    .line 435
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    .line 436
    return-void
.end method

.method public static IsAirModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2846
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J
    .locals 9
    .param p0, "statsService"    # Ljava/lang/Object;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v0, 0x0

    .line 377
    const-wide/16 v7, 0x0

    .line 378
    .local v7, "totalNetwork":J
    invoke-static {v0, v0, v0}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v3

    .line 379
    .local v3, "startTimeToday":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 387
    .local v5, "end":J
    :try_start_0
    const-string v0, "getSummaryForNetwork"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->invoke(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 392
    :goto_0
    return-wide v7

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2416
    if-nez p1, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2421
    :cond_0
    :goto_0
    return-object p1

    .line 2418
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    goto :goto_0
.end method

.method private a(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 23
    .param p1, "uid"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1020
    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v12

    .line 1022
    .local v12, "day":I
    const v2, 0xfff5

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1025
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v16

    .line 1026
    .local v16, "receivedData":J
    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receivedData 65525 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v19

    .line 1028
    .local v19, "sendData":J
    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendData 65525 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_0

    .line 1039
    const-wide/16 v16, 0x0

    .line 1040
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_1

    .line 1041
    const-wide/16 v19, 0x0

    .line 1042
    :cond_1
    const/4 v11, 0x0

    .line 1044
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v21, "INSERT INTO apps (uid, _date, received, sent, last_received, last_sent) VALUES ( ? , ? , ? , ? , ? , ? )"

    .line 1045
    .local v21, "sql":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "apps"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "received"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "sent"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "last_received"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "last_sent"

    aput-object v6, v4, v5

    const-string v5, "uid = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1051
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1052
    add-long v2, v16, v19

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    const-string v2, "3.6"

    const-string v3, "update_process getCount() == 0 then insert into the table......"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "update apps set received = ?, sent = ? where uid = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 1105
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1108
    :cond_3
    return-void

    .line 1032
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "receivedData":J
    .end local v19    # "sendData":J
    .end local v21    # "sql":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v16

    .line 1033
    .restart local v16    # "receivedData":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v19

    .line 1034
    .restart local v19    # "sendData":J
    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "===== and receivedData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sendData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1064
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v21    # "sql":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1066
    const-string v2, "last_received"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1068
    .local v13, "last_received":Ljava/lang/Long;
    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_received"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const-string v2, "last_sent"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1072
    .local v14, "last_sent":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1073
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1075
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1076
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1079
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v16, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1081
    .local v15, "received":Ljava/lang/Long;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v19, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 1082
    .local v18, "send":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1083
    .local v22, "total":Ljava/lang/Long;
    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "and last_received = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last_send = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1087
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 1088
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v15, v3, v4

    const/4 v4, 0x3

    aput-object v18, v3, v4

    const/4 v4, 0x4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    const-string v2, "Receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_process totoal >>>>>>> 0 uid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1104
    .end local v13    # "last_received":Ljava/lang/Long;
    .end local v14    # "last_sent":Ljava/lang/Long;
    .end local v15    # "received":Ljava/lang/Long;
    .end local v18    # "send":Ljava/lang/Long;
    .end local v21    # "sql":Ljava/lang/String;
    .end local v22    # "total":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 1105
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 1092
    .restart local v13    # "last_received":Ljava/lang/Long;
    .restart local v14    # "last_sent":Ljava/lang/Long;
    .restart local v15    # "received":Ljava/lang/Long;
    .restart local v18    # "send":Ljava/lang/Long;
    .restart local v21    # "sql":Ljava/lang/String;
    .restart local v22    # "total":Ljava/lang/Long;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    const-string v2, "Receiver"

    const-string v3, "update_process totoal <<<<<< 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;IIIJ)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notifyType"    # I
    .param p2, "cardPostion"    # I
    .param p3, "trafficMode"    # I
    .param p4, "todayLimit"    # J

    .prologue
    .line 2604
    const-string v9, ""

    .line 2605
    .local v9, "tmp":Ljava/lang/String;
    const/16 v10, 0xc

    move/from16 v0, p3

    if-ne v0, v10, :cond_0

    .line 2606
    if-nez p2, :cond_2

    const v10, 0x7f0d07a5

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2608
    :cond_0
    :goto_0
    const-string v10, "traffic_noti"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tmp = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    packed-switch p1, :pswitch_data_0

    .line 2667
    :cond_1
    :goto_1
    return-void

    .line 2606
    :cond_2
    const v10, 0x7f0d07a6

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 2612
    :pswitch_0
    if-nez p2, :cond_3

    const/16 v4, 0x9

    .line 2613
    .local v4, "id2":I
    :goto_2
    const v10, 0x7f0d03b4

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0d07cc

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11, v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showTariffOutLimitNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2619
    if-nez p2, :cond_4

    .line 2620
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/Const;->setIsNetAlarmedInMonth(Z)V

    goto :goto_1

    .line 2612
    .end local v4    # "id2":I
    :cond_3
    const/16 v4, 0x18

    goto :goto_2

    .line 2622
    .restart local v4    # "id2":I
    :cond_4
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/Const;->setIsNetAlarmedInMonth2(Z)V

    goto :goto_1

    .line 2626
    .end local v4    # "id2":I
    :pswitch_1
    if-nez p2, :cond_5

    const/16 v5, 0x211

    .line 2627
    .local v5, "id3":I
    :goto_3
    if-nez p2, :cond_6

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetLimitedInMonth()Z

    move-result v3

    .line 2628
    .local v3, "flag":Z
    :goto_4
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 2630
    .local v7, "mConnService":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 2631
    .local v1, "connFlag":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2632
    .local v2, "content":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0d0806

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    if-nez v3, :cond_1

    .line 2634
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getIsAutoDeny(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataCardPosition(Landroid/content/Context;)I

    move-result v10

    move/from16 v0, p2

    if-ne v10, v0, :cond_7

    .line 2635
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2636
    .local v6, "intent":Landroid/content/Intent;
    const-string v10, "sim_card_postion"

    move/from16 v0, p2

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2637
    const/high16 v10, 0x10000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2638
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2647
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_5
    if-nez p2, :cond_8

    .line 2648
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/Const;->setNetLimitedInMonth(Z)V

    goto/16 :goto_1

    .line 2626
    .end local v1    # "connFlag":Z
    .end local v2    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "flag":Z
    .end local v5    # "id3":I
    .end local v7    # "mConnService":Landroid/net/ConnectivityManager;
    :cond_5
    const/16 v5, 0x212

    goto :goto_3

    .line 2627
    .restart local v5    # "id3":I
    :cond_6
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetLimitedInMonth2()Z

    move-result v3

    goto :goto_4

    .line 2640
    .restart local v1    # "connFlag":Z
    .restart local v2    # "content":Ljava/lang/StringBuilder;
    .restart local v3    # "flag":Z
    .restart local v7    # "mConnService":Landroid/net/ConnectivityManager;
    :cond_7
    const v10, 0x7f0d03b4

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11, v5}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showTariffOutLimitNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 2650
    :cond_8
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/Const;->setNetLimitedInMonth2(Z)V

    goto/16 :goto_1

    .line 2657
    .end local v1    # "connFlag":Z
    .end local v2    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "flag":Z
    .end local v5    # "id3":I
    .end local v7    # "mConnService":Landroid/net/ConnectivityManager;
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0d0807

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2659
    .local v8, "s":Ljava/lang/String;
    const v10, 0x7f0d03b4

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x16

    invoke-static {p0, v10, v11, v12}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showTariffOutLimitNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2662
    if-nez p2, :cond_9

    .line 2663
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/Const;->setIsTodayNoticed(Z)V

    goto/16 :goto_1

    .line 2665
    :cond_9
    const/4 v10, 0x1

    invoke-static {p0, v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setIsTodayNoticed2(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 2609
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "maxTotal"    # J
    .param p4, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 654
    const-string v2, "select total,date from traffic where imsi = ?"

    .line 655
    .local v2, "sql":Ljava/lang/String;
    const-string v4, "update traffic set height=? where total=? and imsi= ?"

    .line 656
    .local v4, "updateSql":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aput-object p4, v5, v8

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 657
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 658
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "day":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 662
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 663
    .local v3, "total":I
    const-string v5, "exec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    int-to-long v6, v3

    invoke-virtual {p0, v6, v7, p2, p3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getHeight(JJ)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    aput-object p4, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    .end local v1    # "day":Ljava/lang/String;
    .end local v3    # "total":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 668
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 20
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "postion"    # I

    .prologue
    .line 563
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c()I

    move-result v4

    .line 564
    .local v4, "bar_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 565
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 566
    .local v9, "maxTotal":J
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDetailedDate()Ljava/lang/String;

    move-result-object v12

    .line 567
    .local v12, "today":Ljava/lang/String;
    if-nez p2, :cond_2

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v13

    .line 569
    .local v13, "trafficToday":J
    :goto_0
    const-string v11, "SELECT total FROM traffic WHERE date = ? and imsi = ?"

    .line 570
    .local v11, "selectSql":Ljava/lang/String;
    const-string v15, "update traffic set total = ?, height = ? where date = ? and imsi = ?"

    .line 571
    .local v15, "updateSql":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v6, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 573
    .local v5, "cusrsor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 574
    cmp-long v17, v13, v9

    if-lez v17, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    move-wide v9, v13

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v9, v10, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 579
    :cond_0
    const-string v17, "double"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "trafficToday = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9, v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getHeight(JJ)I

    move-result v8

    .line 581
    .local v8, "height":I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    aput-object v12, v17, v18

    const/16 v18, 0x3

    aput-object p1, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    .end local v8    # "height":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "traffc_view_height_changed_flag"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object/from16 v3, p1

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v17, v0

    const-string v18, "traffc_view_height_changed_flag"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    const-string v17, "viewheight1"

    const-string v18, "touch my change height"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 613
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 617
    .end local v4    # "bar_height":I
    .end local v5    # "cusrsor":Landroid/database/Cursor;
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "maxTotal":J
    .end local v11    # "selectSql":Ljava/lang/String;
    .end local v12    # "today":Ljava/lang/String;
    .end local v13    # "trafficToday":J
    .end local v15    # "updateSql":Ljava/lang/String;
    :goto_2
    return-void

    .line 567
    .restart local v4    # "bar_height":I
    .restart local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "maxTotal":J
    .restart local v12    # "today":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v13

    goto/16 :goto_0

    .line 584
    .restart local v5    # "cusrsor":Landroid/database/Cursor;
    .restart local v11    # "selectSql":Ljava/lang/String;
    .restart local v13    # "trafficToday":J
    .restart local v15    # "updateSql":Ljava/lang/String;
    :cond_3
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v16, "values":Landroid/content/ContentValues;
    const-string v17, "total"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 586
    const-string v17, "date"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v17, "imsi"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-wide/16 v17, -0x1

    cmp-long v17, v9, v17

    if-nez v17, :cond_5

    .line 589
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_4

    .line 590
    const-string v17, "height"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    :goto_3
    const-string v17, "traffic"

    const-string v18, "total"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 614
    .end local v4    # "bar_height":I
    .end local v5    # "cusrsor":Landroid/database/Cursor;
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "maxTotal":J
    .end local v11    # "selectSql":Ljava/lang/String;
    .end local v12    # "today":Ljava/lang/String;
    .end local v13    # "trafficToday":J
    .end local v15    # "updateSql":Ljava/lang/String;
    .end local v16    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 615
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 592
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "bar_height":I
    .restart local v5    # "cusrsor":Landroid/database/Cursor;
    .restart local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "maxTotal":J
    .restart local v11    # "selectSql":Ljava/lang/String;
    .restart local v12    # "today":Ljava/lang/String;
    .restart local v13    # "trafficToday":J
    .restart local v15    # "updateSql":Ljava/lang/String;
    .restart local v16    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    const-string v17, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 596
    :cond_5
    cmp-long v17, v9, v13

    if-ltz v17, :cond_6

    .line 597
    const-string v17, "height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9, v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getHeight(JJ)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 599
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v13, v14, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 601
    const-string v17, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "imsi2"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    invoke-static {p2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getCached_imsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imsi_catche_sim"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    invoke-static {p0}, Lcom/lenovo/safecenter/net/cache/NetCache;->setCached_imsi(Ljava/lang/String;)V

    .line 237
    const-string v1, "trafficui"

    const-string v2, "edit IMSI_CATCHE_SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getCached_imsi2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imsi_catche_sim2"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    invoke-static {p1}, Lcom/lenovo/safecenter/net/cache/NetCache;->setCached_imsi2(Ljava/lang/String;)V

    .line 243
    :cond_1
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/support/TrafficStatsService;)Z
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .prologue
    const-wide/16 v4, 0x0

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    const-string v3, "last_save_daily_data_time"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->e:Z

    return p0
.end method

.method public static addNetWhiteList(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1884
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1887
    .local v3, "mPackageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.lenovo.safecenter"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1889
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1894
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    :try_start_1
    const-string v4, "com.lenovo.safecenter.plugin"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1896
    .local v2, "info2":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1901
    .end local v2    # "info2":Landroid/content/pm/ApplicationInfo;
    :goto_1
    :try_start_2
    const-string v4, "com.lenovo.lsf.device"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1903
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1909
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_2
    :try_start_3
    const-string v4, "com.lenovo.ue.service"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1911
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1917
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_3
    :try_start_4
    const-string v4, "com.android.SDAC"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1919
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps2:Ljava/util/ArrayList;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1923
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_4
    return-void

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1897
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1898
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1904
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 1905
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1912
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v0

    .line 1913
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1920
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v0

    .line 1921
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 743
    if-eqz p0, :cond_0

    .line 744
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d041d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00f1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J
    .locals 9
    .param p0, "statsService"    # Ljava/lang/Object;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->parseMonthStartTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 408
    .local v3, "startTimeMonth":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 410
    .local v5, "end":J
    const-wide/16 v7, 0x0

    .line 416
    .local v7, "totalNetwork":J
    :try_start_0
    const-string v0, "getSummaryForNetwork"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->invoke(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v7

    .line 418
    const-string v0, "testtrafficbug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sys month used = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-wide v7

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2425
    if-nez p1, :cond_1

    .line 2426
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2430
    :cond_0
    :goto_0
    return-object p1

    .line 2427
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/support/TrafficStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d()V

    return-void
.end method

.method private c()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2509
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    const-string v2, "traffc_view_height"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2511
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getTraffic_view_height()F

    move-result v1

    float-to-int v0, v1

    .line 2512
    .local v0, "bar_height":I
    const-string v1, "viewheight1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetCache.getTraffic_view_height() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :goto_0
    const-string v1, "viewheight1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final bar_height  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    return v0

    .line 2515
    .end local v0    # "bar_height":I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    const-string v2, "traffc_view_height"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "bar_height":I
    goto :goto_0
.end method

.method public static cancelAutoCorrectTraffic(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1950
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1952
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1953
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.safecenter.correct.traffic.SIM.service.RTC"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1956
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1957
    const-string v3, "4.2"

    const-string v4, "cancel correct_ACTION_RTC"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return-void
.end method

.method public static cancelAutoCorrectTraffic2(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1985
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1987
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1988
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.safecenter.correct.traffic.SIM2.service.RTC"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1989
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1991
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1992
    const-string v3, "4.2"

    const-string v4, "cancel correct_ACTION_RTC_SIM2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return-void
.end method

.method public static changeBinFileOwnerMode(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2279
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/net/support/TrafficStatsService$4;

    invoke-direct {v1, p1, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2321
    return-void
.end method

.method public static checkCorrectTime(JJ)Z
    .locals 4
    .param p0, "now"    # J
    .param p2, "time"    # J

    .prologue
    .line 2525
    const-string v1, "checktraffic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v0, 0x1

    .line 2527
    .local v0, "returnValue":Z
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    .line 2528
    const/4 v0, 0x0

    .line 2530
    :cond_0
    return v0
.end method

.method public static createShell(Landroid/content/Context;)Z
    .locals 24
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 765
    const-string v22, "createShell"

    const-string v23, "touch createShell method"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-nez p0, :cond_0

    .line 767
    const-string v22, "createShell"

    const-string v23, "ctx is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/16 v22, 0x0

    .line 858
    :goto_0
    return v22

    .line 771
    :cond_0
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v4, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "tiwlan+"

    aput-object v23, v4, v22

    const/16 v22, 0x1

    const-string v23, "wlan+"

    aput-object v23, v4, v22

    const/16 v22, 0x2

    const-string v23, "eth+"

    aput-object v23, v4, v22

    const/16 v22, 0x3

    const-string v23, "ra+"

    aput-object v23, v4, v22

    .line 772
    .local v4, "ITFS_WIFI":[Ljava/lang/String;
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v3, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "rmnet+"

    aput-object v23, v3, v22

    const/16 v22, 0x1

    const-string v23, "pdp+"

    aput-object v23, v3, v22

    const/16 v22, 0x2

    const-string v23, "ppp+"

    aput-object v23, v3, v22

    const/16 v22, 0x3

    const-string v23, "uwbr+"

    aput-object v23, v3, v22

    const/16 v22, 0x4

    const-string v23, "wimax+"

    aput-object v23, v3, v22

    const/16 v22, 0x5

    const-string v23, "vsnet+"

    aput-object v23, v3, v22

    const/16 v22, 0x6

    const-string v23, "ccmni+"

    aput-object v23, v3, v22

    const/16 v22, 0x7

    const-string v23, "usb+"

    aput-object v23, v3, v22

    .line 774
    .local v3, "ITFS_3G":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .local v9, "command":Ljava/lang/StringBuilder;
    const-string v22, "#####\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v22, "#!/sbin/ash\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v22, "system info"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 779
    .local v16, "prefs_sys":Landroid/content/SharedPreferences;
    const-string v22, "wlan info"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 781
    .local v17, "prefs_sys_wlan":Landroid/content/SharedPreferences;
    const-string v22, "selected uids"

    const-string v23, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "allUid":Ljava/lang/String;
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 783
    .local v19, "uids":[Ljava/lang/String;
    const-string v22, "selected uids"

    const-string v23, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, "allUidWlan":Ljava/lang/String;
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 785
    .local v20, "uidsWlan":[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 788
    const-string v12, "iptables "

    .line 811
    .local v12, "iptables":Ljava/lang/String;
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -F OUTPUT\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-P OUTPUT ACCEPT\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-A OUTPUT -o lo -j ACCEPT\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    sget v22, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 816
    const-string v22, "createShell"

    const-string v23, "in not open phone"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 820
    move-object/from16 v7, v19

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v13, :cond_2

    aget-object v18, v7, v10

    .line 821
    .local v18, "uid":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-A OUTPUT -o rmnet+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -m owner --uid-owner "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -j DROP\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-A OUTPUT -o ccmni+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -m owner --uid-owner "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -j DROP\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 790
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "iptables":Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v18    # "uid":Ljava/lang/String;
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/iptables "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "iptables":Ljava/lang/String;
    goto/16 :goto_1

    .line 827
    :cond_2
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_7

    .line 828
    move-object/from16 v7, v20

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v13, v7

    .restart local v13    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_3
    if-ge v10, v13, :cond_7

    aget-object v18, v7, v10

    .line 829
    .restart local v18    # "uid":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-A OUTPUT -o wlan0 -m owner --uid-owner "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -j DROP\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 835
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "uid":Ljava/lang/String;
    :cond_3
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 836
    move-object/from16 v7, v19

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v13, v7

    .restart local v13    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    move v11, v10

    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .local v11, "i$":I
    :goto_4
    if-ge v11, v13, :cond_5

    aget-object v18, v7, v11

    .line 837
    .restart local v18    # "uid":Ljava/lang/String;
    move-object v8, v3

    .local v8, "arr$":[Ljava/lang/String;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_5
    if-ge v10, v14, :cond_4

    aget-object v15, v8, v10

    .line 838
    .local v15, "mobileNetName":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-A OUTPUT -o "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -m owner --uid-owner "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -j DROP\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 836
    .end local v15    # "mobileNetName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_4

    .line 846
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "uid":Ljava/lang/String;
    :cond_5
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_7

    .line 847
    move-object/from16 v7, v20

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v13, v7

    .restart local v13    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    move v11, v10

    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .restart local v11    # "i$":I
    :goto_6
    if-ge v11, v13, :cond_7

    aget-object v18, v7, v11

    .line 848
    .restart local v18    # "uid":Ljava/lang/String;
    move-object v8, v4

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v14, v8

    .restart local v14    # "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_7
    if-ge v10, v14, :cond_6

    aget-object v21, v8, v10

    .line 849
    .local v21, "wifiNetName":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-A OUTPUT -o "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -m owner --uid-owner "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -j DROP\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 847
    .end local v21    # "wifiNetName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_6

    .line 858
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "uid":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    goto/16 :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_save_daily_data_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2554
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 2504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2505
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static do4NewMonthBug(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 2836
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetLimitedInMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2837
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->setNetLimitedInMonth(Z)V

    .line 2840
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed2()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetLimitedInMonth2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2841
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->setNetLimitedInMonth2(Z)V

    .line 2843
    :cond_1
    return-void
.end method

.method public static formatTraffic(JLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "total"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1554
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1555
    const-string v0, ""

    .line 1557
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2, p0, p1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppInfos(Landroid/content/Context;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/net/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v9, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    new-instance v11, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-direct {v11, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v11, "openHelper":Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;
    invoke-virtual {v11}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1170
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 1172
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "apps"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SUM(received)+SUM(sent) AS item_3g"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "uid"

    const/4 v6, 0x0

    const-string v7, "SUM(received)+SUM(sent) DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1175
    const-string v1, "boot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1177
    new-instance v8, Lcom/lenovo/safecenter/net/support/AppInfo;

    invoke-direct {v8}, Lcom/lenovo/safecenter/net/support/AppInfo;-><init>()V

    .line 1178
    .local v8, "app":Lcom/lenovo/safecenter/net/support/AppInfo;
    const-string v1, "uid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    .line 1179
    iget v1, v8, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const v2, 0xfff5

    if-eq v1, v2, :cond_0

    iget v1, v8, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1182
    const-string v1, "item_3g"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/lenovo/safecenter/net/support/AppInfo;->item_3g:J

    .line 1183
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    iget v1, v8, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1187
    .end local v8    # "app":Lcom/lenovo/safecenter/net/support/AppInfo;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_1

    .line 1188
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 1187
    :cond_2
    if-eqz v10, :cond_3

    .line 1188
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1191
    :cond_3
    const-string v1, "boot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps to show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v11}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->close()V

    .line 1193
    return-object v9
.end method

.method public static getApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/net/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v4, "mApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1137
    .local v5, "pkgmanager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1139
    .local v3, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1140
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v6, "android.permission.INTERNET"

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1147
    new-instance v0, Lcom/lenovo/safecenter/net/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/net/support/AppInfo;-><init>()V

    .line 1148
    .local v0, "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v0, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    .line 1149
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/lenovo/safecenter/net/support/AppInfo;->item_3g:J

    .line 1150
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1152
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v4
.end method

.method public static getBackValue()I
    .locals 1

    .prologue
    .line 2718
    sget v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->i:I

    return v0
.end method

.method public static getCurrentMonth()I
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getCurrentYear()I
    .locals 2

    .prologue
    .line 540
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDataCardPosition(Landroid/content/Context;)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v13, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1583
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    move v3, v8

    .line 1645
    :cond_0
    :goto_0
    return v3

    .line 1595
    :cond_1
    sget v10, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v11, 0xe

    if-ge v10, v11, :cond_2

    move v3, v8

    .line 1596
    goto :goto_0

    .line 1598
    :cond_2
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v6

    .line 1599
    .local v6, "mUtils":Landroid/provider/MultiSIMUtils;
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v5

    .line 1600
    .local v5, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    const-string v10, "8.20"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imsi 1 ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "imsi2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1604
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v10, "getDataSubscriberId"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1606
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1607
    .local v4, "id":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1608
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getDataCacheImsi()Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "cacheImsi":Ljava/lang/String;
    const-string v10, "8.20"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cachimsi ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1611
    const/4 v3, 0x0

    .line 1612
    .local v3, "flag":I
    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1614
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1618
    .end local v3    # "flag":I
    :cond_3
    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v3, v8

    .line 1619
    goto/16 :goto_0

    :cond_4
    move v3, v9

    .line 1621
    goto/16 :goto_0

    .line 1625
    .end local v0    # "cacheImsi":Ljava/lang/String;
    :cond_5
    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_6

    move v3, v8

    .line 1626
    goto/16 :goto_0

    :cond_6
    move v3, v9

    .line 1628
    goto/16 :goto_0

    .line 1631
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1632
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1633
    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    if-nez v10, :cond_7

    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    if-eqz v10, :cond_7

    move v3, v9

    .line 1634
    goto/16 :goto_0

    .line 1635
    :cond_7
    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    if-nez v10, :cond_8

    move v3, v8

    .line 1636
    goto/16 :goto_0

    .line 1637
    :cond_8
    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 1638
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v10

    cmp-long v10, v10, v13

    if-nez v10, :cond_9

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v10

    cmp-long v10, v10, v13

    if-lez v10, :cond_9

    move v3, v9

    .line 1640
    goto/16 :goto_0

    :cond_9
    move v3, v8

    .line 1642
    goto/16 :goto_0

    .line 1645
    :cond_a
    const/4 v3, 0x3

    goto/16 :goto_0
.end method

.method public static getDataSIMId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v9, 0x0

    .line 1562
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v4

    .line 1563
    .local v4, "mUtils":Landroid/provider/MultiSIMUtils;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1565
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v6, "getDataSubscriberId"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1567
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1568
    .local v2, "id":Ljava/lang/String;
    const-string v6, "s3"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data id ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 1570
    :catch_0
    move-exception v1

    .line 1571
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1572
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v3

    .line 1573
    .local v3, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v6

    cmp-long v6, v6, v9

    if-nez v6, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v6

    cmp-long v6, v6, v9

    if-lez v6, :cond_0

    .line 1575
    iget-object v2, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    goto :goto_0

    .line 1577
    :cond_0
    iget-object v2, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDataString(J)Ljava/lang/String;
    .locals 4
    .param p0, "total"    # J

    .prologue
    const/high16 v3, 0x44800000    # 1024.0f

    .line 2773
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2774
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 2775
    const-string v1, "0M"

    .line 2785
    :goto_0
    return-object v1

    .line 2776
    :cond_0
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    .line 2777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2778
    :cond_1
    const-wide/32 v1, 0x100000

    cmp-long v1, p0, v1

    if-gez v1, :cond_2

    .line 2779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v2, p0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2780
    :cond_2
    const-wide/32 v1, 0x40000000

    cmp-long v1, p0, v1

    if-gez v1, :cond_3

    .line 2781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2782
    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_4

    .line 2783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2785
    :cond_4
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public static getDate()I
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayCountInMonth()I
    .locals 3

    .prologue
    .line 1866
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v0

    .line 1867
    .local v0, "nowMonth":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 1869
    :cond_0
    const/16 v2, 0x20

    .line 1879
    :goto_0
    return v2

    .line 1871
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1872
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentYear()I

    move-result v1

    .line 1873
    .local v1, "nowYear":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_3

    :cond_2
    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_4

    .line 1874
    :cond_3
    const/16 v2, 0x1e

    goto :goto_0

    .line 1876
    :cond_4
    const/16 v2, 0x1d

    goto :goto_0

    .line 1879
    .end local v1    # "nowYear":I
    :cond_5
    const/16 v2, 0x1f

    goto :goto_0
.end method

.method public static getDetailedDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getIfSimState(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 1229
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getSimState(Landroid/content/Context;)I

    move-result v0

    .line 1230
    .local v0, "simState":I
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 1232
    :cond_0
    const/4 v1, 0x0

    .line 1234
    :cond_1
    return v1
.end method

.method public static getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1242
    new-instance v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    invoke-direct {v3}, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;-><init>()V

    .line 1243
    .local v3, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    sget-boolean v8, Lcom/lenovo/safecenter/net/cache/NetCache;->isProvideMuti:Z

    iput-boolean v8, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->isMutiSimCard:Z

    .line 1245
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1246
    .local v5, "now":J
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getBoot_time()J

    move-result-wide v0

    .line 1247
    .local v0, "bootTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    sub-long v8, v5, v0

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    :cond_0
    move v4, v7

    .line 1248
    .local v4, "isBoot":Z
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1249
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 1250
    iget-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1251
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->IsAirModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_3

    .line 1252
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getCached_imsi()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 1253
    const-string v7, "bootairtest"

    const-string v8, "touch @@@@@@ single"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_3
    iget-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1257
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->SimState:Z

    .line 1259
    :cond_4
    const/4 v7, 0x0

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    .line 1294
    .end local v0    # "bootTime":J
    .end local v4    # "isBoot":Z
    .end local v5    # "now":J
    :goto_0
    return-object v3

    .line 1262
    .restart local v0    # "bootTime":J
    .restart local v4    # "isBoot":Z
    .restart local v5    # "now":J
    :cond_5
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 1265
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    .line 1267
    const-string v7, "bootairtest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@getImsiInfo now = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "boottime ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",is boot ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1269
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->IsAirModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v4, :cond_7

    .line 1270
    :cond_6
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getCached_imsi()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 1271
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getCached_imsi2()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    .line 1272
    const-string v7, "bootairtest"

    const-string v8, "touch @@@@@@ double"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_7
    iget-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1283
    :cond_8
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->SimState:Z

    .line 1285
    :cond_9
    const-string v7, "bootairtest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsi1 ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",imsi2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "info.SimState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->SimState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1288
    .end local v0    # "bootTime":J
    .end local v4    # "isBoot":Z
    .end local v5    # "now":J
    :catch_0
    move-exception v2

    .line 1292
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getImsiOperator(ILandroid/content/Context;)I
    .locals 3
    .param p0, "postion"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1301
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    .line 1302
    .local v0, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    if-nez p0, :cond_1

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 1303
    .local v1, "tmp":Ljava/lang/String;
    :goto_0
    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1304
    :cond_0
    const/4 v2, 0x0

    .line 1310
    :goto_1
    return v2

    .line 1302
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    goto :goto_0

    .line 1305
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1306
    const/4 v2, 0x1

    goto :goto_1

    .line 1307
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1308
    const/4 v2, 0x2

    goto :goto_1

    .line 1310
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-class v1, Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->f:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->f:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 165
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->f:Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getIsAutoDeny(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2564
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2565
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "auto_deny_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getIsTodayNoticed2(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2677
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2678
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "today_noticed_sim2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getMobileDataButtonValue(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2792
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2793
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "mobile_data_all_button_value"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getMySIMState(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2037
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 2038
    .local v1, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    const/4 v0, 0x1

    .line 2039
    .local v0, "flag":Z
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2057
    :goto_0
    :pswitch_0
    return v0

    .line 2041
    :pswitch_1
    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2043
    const/4 v0, 0x0

    goto :goto_0

    .line 2045
    :cond_0
    const/4 v0, 0x1

    .line 2047
    goto :goto_0

    .line 2049
    :pswitch_2
    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2050
    const/4 v0, 0x0

    goto :goto_0

    .line 2052
    :cond_1
    const/4 v0, 0x1

    .line 2054
    goto :goto_0

    .line 2056
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2039
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getNetWorkApps(Landroid/content/Context;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1116
    .local v3, "mApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1117
    .local v4, "pkgmanager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1119
    .local v2, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1120
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v5, "android.permission.INTERNET"

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1126
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1128
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v3
.end method

.method public static getNetWorkStatsService()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2070
    const-string v5, "netstats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v4

    .line 2073
    .local v4, "statsService":Landroid/net/INetworkStatsService;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 2074
    const/4 v2, 0x0

    .line 2076
    .local v2, "object":Ljava/lang/Object;
    :try_start_0
    const-string v5, "android.net.INetworkStatsService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 2079
    .local v3, "service":Ljava/lang/Class;
    :try_start_1
    const-string v5, "openSession"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 2082
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 2103
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "service":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 2083
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "service":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 2085
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2093
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2097
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "service":Ljava/lang/Class;
    :catch_2
    move-exception v0

    .line 2099
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2086
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "service":Ljava/lang/Class;
    :catch_3
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 2089
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "service":Ljava/lang/Class;
    :cond_0
    move-object v2, v4

    .line 2103
    goto :goto_0
.end method

.method public static getPlatform(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 867
    const/4 v1, 0x0

    .line 869
    .local v1, "platform":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2}, Landroid/provider/MultiSIMUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    .line 870
    const-string v2, "4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "platform ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-object v1

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "mtk"

    .line 873
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRawSize(Landroid/content/Context;F)F
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "size"    # F

    .prologue
    .line 2487
    if-nez p0, :cond_0

    .line 2488
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2492
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 2496
    .end local v1    # "r":Landroid/content/res/Resources;
    :goto_1
    return v2

    .line 2490
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0

    .line 2494
    .end local v1    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2496
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getRawSize(Landroid/content/Context;IF)F
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 2463
    if-nez p0, :cond_0

    .line 2464
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2468
    .local v0, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 2466
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .restart local v0    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public static getSIMCarryInfo(ILandroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "card"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v4, 0x7f0d03a3

    const/4 v3, 0x0

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1792
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_1

    .line 1793
    const-string v2, "SIM1_properties_safecenter"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1795
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "BOOLEAN_SET_LOCATION"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1796
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    :goto_0
    const-string v2, "plu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "builder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-object v0

    .line 1798
    :cond_0
    const-string v2, "SIM_CARD_PROVINCE_DESC"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_CARD_CITY_DESC"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_CARD_CARRY_DESC"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_CARD_BRAND_DESC"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1808
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "SIM2_properties_safecenter"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1810
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    const-string v2, "BOOLEAN_SET_LOCATION"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1811
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1813
    :cond_2
    const-string v2, "SIM_CARD_PROVINCE_DESC"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_CARD_CITY_DESC"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_CARD_CARRY_DESC"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_CARD_BRAND_DESC"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static getSIMSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "postion"    # I

    .prologue
    .line 336
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 340
    const-string v0, "dev"

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1219
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1221
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    return v1
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0d0454

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 713
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 718
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 719
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 721
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 734
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 717
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 718
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 719
    goto :goto_2

    .line 723
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 724
    goto :goto_3

    .line 725
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 726
    goto :goto_3

    .line 727
    :cond_5
    if-eqz v4, :cond_6

    .line 728
    const v6, 0x7f0d0451

    goto :goto_3

    .line 729
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 730
    const v6, 0x7f0d0453

    goto :goto_3

    .line 731
    :cond_7
    if-eqz v2, :cond_8

    .line 732
    const v6, 0x7f0d0450

    goto :goto_3

    .line 734
    :cond_8
    const v6, 0x7f0d0452

    goto :goto_3
.end method

.method public static getTotalMonthly(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 910
    const-string v2, "SELECT SUM(sent)+SUM(received) AS total FROM apps WHERE uid = 65525"

    .line 911
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 913
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 914
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 915
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 922
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 923
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v4

    if-nez v4, :cond_1

    .line 926
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 933
    :cond_1
    :goto_0
    return-object v3

    .line 928
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 922
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 923
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v3

    if-nez v3, :cond_4

    .line 926
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 933
    :cond_4
    :goto_1
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 928
    :catch_1
    move-exception v1

    .line 929
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 917
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 919
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 922
    if-eqz v0, :cond_5

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 923
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v3

    if-nez v3, :cond_4

    .line 926
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 928
    :catch_3
    move-exception v1

    .line 929
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 921
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 922
    if-eqz v0, :cond_6

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 923
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v4

    if-nez v4, :cond_7

    .line 926
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 930
    :cond_7
    :goto_2
    throw v3

    .line 928
    :catch_4
    move-exception v1

    .line 929
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getTotalToday(Landroid/database/sqlite/SQLiteDatabase;I)J
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "date"    # I

    .prologue
    .line 882
    const-wide/16 v3, 0x0

    .line 883
    .local v3, "total":J
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v2

    .line 884
    .local v2, "today":I
    const-string v1, " SELECT SUM(sent)+SUM(received) AS daily FROM apps WHERE uid=65525 AND _date=?"

    .line 886
    .local v1, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 888
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 890
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 891
    const-string v5, "daily"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 892
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 893
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v5

    if-nez v5, :cond_1

    .line 896
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :cond_1
    :goto_0
    return-wide v3

    .line 901
    :catch_0
    move-exception v5

    const-string v5, "trafficdb"

    const-string v6, "catch traffic db exception"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTrafficDaliogNoticeValue(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2725
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2726
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "traffic_dailog_notice_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getTrafficMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xe

    const/16 v0, 0xd

    .line 1832
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->isSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return v0

    .line 1835
    :cond_1
    sget v1, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    if-lt v1, v2, :cond_2

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1836
    const/16 v0, 0xa

    goto :goto_0

    .line 1837
    :cond_2
    sget v1, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1839
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2739
    const-string v1, "safecenter_nac"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2740
    .local v0, "sp":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getTriggerTime(III)J
    .locals 3
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    .line 2596
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2597
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p0}, Ljava/util/Date;->setHours(I)V

    .line 2598
    invoke-virtual {v0, p1}, Ljava/util/Date;->setMinutes(I)V

    .line 2599
    invoke-virtual {v0, p2}, Ljava/util/Date;->setSeconds(I)V

    .line 2600
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getWeekOfDate()I
    .locals 4

    .prologue
    .line 2746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2747
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2748
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2749
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2750
    .local v2, "dayOfWeek":I
    add-int/lit8 v3, v2, -0x1

    return v3
.end method

.method public static getWlanDataButtonValue(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2809
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2810
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "wlan_data_all_button_value"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static initFridayAlarm(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 2581
    const-string v1, "week"

    const-string v2, "touch initFridayAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2584
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2585
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.notice.traffic.ui.service.RTC"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2586
    invoke-static {p0, v4, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2588
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x1

    const/16 v2, 0x12

    const/16 v3, 0x1e

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTriggerTime(III)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2593
    return-void
.end method

.method public static initNetCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2754
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    .line 2755
    .local v0, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi:Ljava/lang/String;

    .line 2756
    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi2:Ljava/lang/String;

    .line 2757
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/safecenter/net/cache/NetCache;->isProvideMuti:Z

    .line 2758
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataCardPosition(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/lenovo/safecenter/net/cache/NetCache;->data_id_postion:I

    .line 2760
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    .line 2761
    sget v2, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->BAR_MAXHEIGHT:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getRawSize(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Lcom/lenovo/safecenter/net/cache/NetCache;->setTraffic_view_height(F)V

    .line 2763
    sget v2, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->TRAFFIC_CHILDVIEW_WIDTH:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getRawSize(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Lcom/lenovo/safecenter/net/cache/NetCache;->setTraffic_view_width(F)V

    .line 2765
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2766
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "imsi_catche_sim"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/net/cache/NetCache;->setCached_imsi(Ljava/lang/String;)V

    .line 2767
    const-string v2, "imsi_catche_sim2"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/net/cache/NetCache;->setCached_imsi2(Ljava/lang/String;)V

    .line 2769
    return-void
.end method

.method public static invoke(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)J
    .locals 12
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "startTimeMonth"    # J
    .param p5, "end"    # J

    .prologue
    .line 2136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2137
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 2138
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 2139
    .local v5, "stats":Landroid/net/NetworkStats;
    const-string v8, "getSummaryForAllUid"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2143
    :try_start_0
    const-string v8, "getSummaryForAllUid"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/net/NetworkTemplate;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2146
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/net/NetworkStats;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2162
    :cond_0
    :goto_0
    const-string v8, "getSummaryForNetwork"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2164
    :try_start_1
    const-string v8, "getSummaryForNetwork"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/net/NetworkTemplate;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2166
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/net/NetworkStats;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    .line 2183
    :cond_1
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 2184
    .local v2, "devTotal":Landroid/net/NetworkStats$Entry;
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v6, v8, v10

    .line 2185
    .local v6, "totalNetwork":J
    return-wide v6

    .line 2148
    .end local v2    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v6    # "totalNetwork":J
    :catch_0
    move-exception v3

    .line 2150
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 2151
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 2153
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2154
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 2156
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 2157
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 2159
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 2168
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 2170
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 2171
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v3

    .line 2173
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 2174
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v3

    .line 2176
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 2177
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v3

    .line 2179
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static invokeForAllUid(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 9
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "start"    # J
    .param p5, "end"    # J

    .prologue
    .line 2190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2191
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 2192
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 2193
    .local v4, "stats":Landroid/net/NetworkStats;
    const-string v5, "getSummaryForAllUid"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2195
    :try_start_0
    const-string v5, "getSummaryForAllUid"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/net/NetworkTemplate;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2198
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/NetworkStats;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2215
    :cond_0
    :goto_0
    return-object v4

    .line 2200
    :catch_0
    move-exception v2

    .line 2202
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 2203
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 2205
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2206
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 2208
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 2209
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 2211
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2434
    const/4 v2, 0x0

    .line 2436
    .local v2, "returnValue":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.lenovo.safecenter"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2438
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2439
    const/4 v2, 0x1

    .line 2445
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 2441
    :catch_0
    move-exception v0

    .line 2443
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static mutiSIMdoStats(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 34
    .param p0, "statsService"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1318
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v10

    .line 1319
    .local v10, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    iget-object v3, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1320
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v22

    .line 1325
    .local v22, "template1":Landroid/net/NetworkTemplate;
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v23

    .line 1327
    .local v23, "template2":Landroid/net/NetworkTemplate;
    const-string v2, "4.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim1 imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sim2 imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",totalMonth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",totalMonth2 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v21

    .line 1333
    .local v21, "service":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1334
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v28

    .line 1335
    .local v28, "totalToday1":J
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v24

    .line 1359
    .local v24, "totalMonth1":J
    :cond_0
    :goto_0
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1360
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v30

    .line 1361
    .local v30, "totalToday2":J
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic2()J

    move-result-wide v26

    .line 1387
    .local v26, "totalMonth2":J
    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-gez v2, :cond_2

    .line 1388
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_c

    const-wide/16 v24, 0x0

    .line 1393
    :cond_2
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-gez v2, :cond_3

    .line 1394
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    const-wide/16 v26, 0x0

    .line 1400
    :cond_3
    :goto_3
    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v8, 0x1

    .line 1401
    .local v8, "ifSeted1":Z
    :goto_4
    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v9, 0x1

    .line 1402
    .local v9, "ifSeted2":Z
    :goto_5
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    mul-long v15, v2, v4

    .line 1403
    .local v15, "monthLimit1":J
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    mul-long v17, v2, v4

    .line 1404
    .local v17, "monthLimit2":J
    sub-long v11, v15, v24

    .line 1405
    .local v11, "monthFree1":J
    sub-long v13, v17, v26

    .line 1407
    .local v13, "monthFree2":J
    if-nez v8, :cond_10

    .line 1408
    const/16 v19, 0x0

    .line 1412
    .local v19, "progress1":I
    :goto_6
    if-nez v9, :cond_11

    .line 1413
    const/16 v20, 0x0

    .line 1418
    .local v20, "progress2":I
    :goto_7
    invoke-static/range {v28 .. v29}, Lcom/lenovo/safecenter/utils/Const;->setTodayUsedTraffic(J)V

    .line 1419
    invoke-static {v11, v12}, Lcom/lenovo/safecenter/utils/Const;->setMonthFreeTraffic(J)V

    .line 1420
    invoke-static/range {v24 .. v25}, Lcom/lenovo/safecenter/utils/Const;->setMonthUsedTraffic(J)V

    .line 1421
    const-string v2, "letraffic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "today use1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",month use1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-static/range {v30 .. v31}, Lcom/lenovo/safecenter/utils/Const;->setTodayUsedTraffic2(J)V

    .line 1424
    invoke-static {v13, v14}, Lcom/lenovo/safecenter/utils/Const;->setMonthFreeTraffic2(J)V

    .line 1425
    invoke-static/range {v26 .. v27}, Lcom/lenovo/safecenter/utils/Const;->setMonthUsedTraffic2(J)V

    .line 1426
    const-string v2, "4.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "today use2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",month use2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static/range {v19 .. v19}, Lcom/lenovo/safecenter/utils/Const;->setProgressTrafficMonthUsed(I)V

    .line 1429
    invoke-static/range {v20 .. v20}, Lcom/lenovo/safecenter/utils/Const;->setProgressTrafficMonthUsed2(I)V

    .line 1430
    move/from16 v0, v19

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/cache/NetCache;->setTraffic_used_progress(J)V

    .line 1431
    move/from16 v0, v20

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/cache/NetCache;->setTraffic_used_progress2(J)V

    .line 1432
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 1433
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshTrafficInfo()V

    .line 1434
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonitorOn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1436
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v6

    .line 1438
    .local v6, "todayLimit":J
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsTodayNoticed()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x400

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    cmp-long v2, v28, v2

    if-ltz v2, :cond_4

    .line 1441
    const/16 v3, 0x16

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    .line 1443
    :cond_4
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getIsTodayNoticed2(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const-wide/16 v2, 0x400

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    cmp-long v2, v30, v2

    if-ltz v2, :cond_5

    .line 1446
    const/16 v3, 0x16

    const/4 v4, 0x1

    const/16 v5, 0xc

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    .line 1448
    :cond_5
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetAlarmedInMonth()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x5a

    move/from16 v0, v19

    if-lt v0, v2, :cond_6

    const/16 v2, 0x64

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 1452
    const/16 v3, 0x14

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    .line 1454
    :cond_6
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn2()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetAlarmedInMonth2()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x5a

    move/from16 v0, v20

    if-lt v0, v2, :cond_7

    const/16 v2, 0x64

    move/from16 v0, v20

    if-ge v0, v2, :cond_7

    .line 1457
    const/16 v3, 0x14

    const/4 v4, 0x1

    const/16 v5, 0xc

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    .line 1460
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-gez v2, :cond_8

    if-eqz v8, :cond_8

    .line 1461
    const/16 v3, 0x15

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    .line 1463
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-gez v2, :cond_9

    if-eqz v9, :cond_9

    .line 1464
    const/16 v3, 0x15

    const/4 v4, 0x1

    const/16 v5, 0xc

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    .line 1468
    .end local v6    # "todayLimit":J
    :cond_9
    return-void

    .line 1337
    .end local v8    # "ifSeted1":Z
    .end local v9    # "ifSeted2":Z
    .end local v11    # "monthFree1":J
    .end local v13    # "monthFree2":J
    .end local v15    # "monthLimit1":J
    .end local v17    # "monthLimit2":J
    .end local v19    # "progress1":I
    .end local v20    # "progress2":I
    .end local v24    # "totalMonth1":J
    .end local v26    # "totalMonth2":J
    .end local v28    # "totalToday1":J
    .end local v30    # "totalToday2":J
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v28

    .line 1338
    .restart local v28    # "totalToday1":J
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v24

    .line 1339
    .restart local v24    # "totalMonth1":J
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->queryTrafficCheck(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1341
    .local v32, "trafficCheckDatas1":[Ljava/lang/String;
    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check month used  sim1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v32, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficCheckDatas1[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v32, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",System.currentTimeMillis() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v2, 0x0

    aget-object v2, v32, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v32, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameMonth(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v32, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->checkCorrectTime(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1351
    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch sim1 if begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficCheckDatas1[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v32, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v2, 0x1

    aget-object v2, v32, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v24, v24, v2

    .line 1354
    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch sim1 if end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficCheckDatas1[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v32, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1363
    .end local v32    # "trafficCheckDatas1":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v30

    .line 1364
    .restart local v30    # "totalToday2":J
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v26

    .line 1365
    .restart local v26    # "totalMonth2":J
    iget-object v2, v10, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->queryTrafficCheck(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1367
    .local v33, "trafficCheckDatas2":[Ljava/lang/String;
    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check month used  sim2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v33, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficCheckDatas2[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v33, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",System.currentTimeMillis() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v2, 0x0

    aget-object v2, v33, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v33, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameMonth(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v33, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->checkCorrectTime(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1377
    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch sim2 if begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficCheckDatas2[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v33, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v2, 0x1

    aget-object v2, v33, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v26, v26, v2

    .line 1380
    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch sim2 if end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",trafficCheckDatas2[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v33, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1388
    .end local v33    # "trafficCheckDatas2":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v24

    goto/16 :goto_2

    .line 1394
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v26

    goto/16 :goto_3

    .line 1400
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1401
    .restart local v8    # "ifSeted1":Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1410
    .restart local v9    # "ifSeted2":Z
    .restart local v11    # "monthFree1":J
    .restart local v13    # "monthFree2":J
    .restart local v15    # "monthLimit1":J
    .restart local v17    # "monthLimit2":J
    :cond_10
    sub-long v2, v15, v11

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long/2addr v2, v15

    long-to-int v0, v2

    move/from16 v19, v0

    .restart local v19    # "progress1":I
    goto/16 :goto_6

    .line 1415
    :cond_11
    sub-long v2, v17, v13

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long v2, v2, v17

    long-to-int v0, v2

    move/from16 v20, v0

    .restart local v20    # "progress2":I
    goto/16 :goto_7
.end method

.method public static nacServerIsExist()Z
    .locals 5

    .prologue
    .line 1846
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/nac_server"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1848
    const/4 v1, 0x1

    .line 1850
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openPhoneFirstRun(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2851
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2852
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "lesafe_net_first_run_flag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2854
    .local v0, "firstBoot":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 2855
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2863
    :cond_0
    return-void
.end method

.method public static setBackValue(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 2714
    sput p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->i:I

    .line 2715
    return-void
.end method

.method public static setIsAutoDeny(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auto"    # Z

    .prologue
    .line 2572
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2573
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "auto_deny_mode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2574
    return-void
.end method

.method public static setIsTodayNoticed2(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNotice"    # Z

    .prologue
    .line 2685
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2686
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "today_noticed_sim2"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2688
    return-void
.end method

.method public static setMobileDataButtonValue(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 2800
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2801
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mobile_data_all_button_value"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2803
    return-void
.end method

.method public static setMonthLimit(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2065
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2066
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Month_Limit_Traffic"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2067
    return-void
.end method

.method public static setPluginPhoneNumberData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2694
    new-instance v0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$5;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$5;->start()V

    .line 2708
    return-void
.end method

.method public static setTrafficDaliogNoticeValue(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNotice"    # Z

    .prologue
    .line 2733
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2734
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "traffic_dailog_notice_value"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2736
    return-void
.end method

.method public static setWlanDataButtonValue(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 2817
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2818
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wlan_data_all_button_value"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2820
    return-void
.end method

.method public static startAutoCorrectTraffic(Landroid/content/Context;J)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intervalTime"    # J

    .prologue
    const/16 v11, 0x16

    const/4 v10, 0x0

    .line 1927
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1929
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1930
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.correct.traffic.SIM.service.RTC"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1933
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v11, v10, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 1936
    const-string v1, "8.31"

    const-string v4, "triggerTime<currentTime"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-static {v11, v10, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    add-long v2, v4, v8

    .line 1943
    .local v2, "triggerTime":J
    :goto_0
    const/4 v1, 0x1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1945
    const-string v1, "8.31"

    const-string v4, "correct_ACTION_RTC"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return-void

    .line 1940
    .end local v2    # "triggerTime":J
    :cond_0
    invoke-static {v11, v10, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v2

    .restart local v2    # "triggerTime":J
    goto :goto_0
.end method

.method public static startAutoCorrectTraffic2(Landroid/content/Context;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intervalTime"    # J

    .prologue
    const/16 v12, 0x1e

    const/16 v11, 0x16

    const/4 v10, 0x0

    .line 1962
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1964
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1965
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.correct.traffic.SIM2.service.RTC"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1968
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v11, v12, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 1971
    const-string v1, "8.20"

    const-string v4, "triggerTime<currentTime"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-static {v11, v12, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    add-long v2, v4, v8

    .line 1978
    .local v2, "triggerTime":J
    :goto_0
    const/4 v1, 0x1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1980
    const-string v1, "4.2"

    const-string v4, "correct_ACTION_RTC"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-void

    .line 1975
    .end local v2    # "triggerTime":J
    :cond_0
    invoke-static {v11, v12, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v2

    .restart local v2    # "triggerTime":J
    goto :goto_0
.end method

.method public static startAutoTrafficCorrectSim1(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2014
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2025
    :goto_0
    return-void

    .line 2017
    :pswitch_0
    const-wide/32 v0, 0x240c8400

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoCorrectTraffic(Landroid/content/Context;J)V

    goto :goto_0

    .line 2021
    :pswitch_1
    const-wide/32 v0, 0x337f9800

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoCorrectTraffic(Landroid/content/Context;J)V

    goto :goto_0

    .line 2024
    :pswitch_2
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->cancelAutoCorrectTraffic(Landroid/content/Context;)V

    goto :goto_0

    .line 2014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startAutoTrafficCorrectSim2(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1996
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle2()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2007
    :goto_0
    return-void

    .line 1999
    :pswitch_0
    const-wide/32 v0, 0x240c8400

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoCorrectTraffic2(Landroid/content/Context;J)V

    goto :goto_0

    .line 2003
    :pswitch_1
    const-wide/32 v0, 0x337f9800

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoCorrectTraffic2(Landroid/content/Context;J)V

    goto :goto_0

    .line 2006
    :pswitch_2
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->cancelAutoCorrectTraffic2(Landroid/content/Context;)V

    goto :goto_0

    .line 1996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startIntent2TrafficCorrect(ILandroid/content/Context;I)V
    .locals 11
    .param p0, "card"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const-wide/32 v9, 0x1d4c0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1677
    :try_start_0
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 1678
    .local v1, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    if-nez p0, :cond_1

    .line 1679
    iget-object v5, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1681
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1683
    const v3, 0x7f0d083c

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1751
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :goto_0
    return-void

    .line 1686
    .restart local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :cond_0
    const v3, 0x7f0d07e5

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1748
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1692
    .restart local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :cond_1
    iget-object v5, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1693
    const v3, 0x7f0d07e5

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1698
    :cond_2
    if-nez p2, :cond_8

    .line 1700
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/Utils;->getCanCorrectFlag(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/Utils;->getLastCorrectTime(Landroid/content/Context;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v7, v5, v9

    if-ltz v7, :cond_4

    :goto_1
    if-eqz v3, :cond_7

    .line 1701
    :cond_3
    const/4 v3, 0x0

    sput-boolean v3, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->canCorrect:Z

    .line 1702
    sget-boolean v3, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->canCorrect:Z

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/net/support/Utils;->setCanCorrectFlag(Landroid/content/Context;Z)V

    .line 1703
    invoke-static {p1, p0}, Lcom/lenovo/safecenter/net/support/Utils;->setCorrectPostion(Landroid/content/Context;I)V

    .line 1704
    sget-object v3, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->h:Landroid/os/Handler;

    sget-object v4, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->h:Landroid/os/Handler;

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1706
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/net/support/Utils;->hasSetConfiged(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1707
    const v3, 0x7f0d082f

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1709
    const-string v3, "TrafficCorrectPlugin"

    const-string v4, "touch toast short"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/Utils;->setLastCorrectTime(Landroid/content/Context;)V

    .line 1711
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1712
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "correct"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1713
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1700
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_5

    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/Utils;->setLastCorrectTime(Landroid/content/Context;)V

    :cond_5
    move v3, v4

    goto :goto_1

    .line 1715
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1716
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v3, "card"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1717
    const-string v3, "correct_type"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1718
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1721
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_7
    const v3, 0x7f0d082a

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1727
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1728
    .restart local v2    # "mIntent":Landroid/content/Intent;
    const-string v3, "card"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1729
    const-string v3, "correct_type"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1730
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static startIntentNetFilter(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2228
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v1

    .line 2230
    .local v1, "mode":I
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2231
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2235
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2237
    return-void

    .line 2233
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static startIntentTraffic(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2240
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v1

    .line 2242
    .local v1, "mode":I
    const-string v2, "9.17"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 2245
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2249
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2250
    return-void

    .line 2247
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static startTrafficCorrect(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "card"    # I

    .prologue
    .line 1855
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1858
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1859
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.net.traffic.auto.correct"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1860
    const-string v1, "card"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1861
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static statsSettingUiMonthTrafficLowLevel(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    const-string v1, "trafficstats.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 428
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTotalMonthly(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static statsSystemMonthTraffic(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "simSubscriberId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 318
    .local v1, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getNetWorkStatsService()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 320
    .local v2, "totalMonth":J
    return-wide v2
.end method

.method public static statsSystemMonthTraffic(Landroid/content/Context;I)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "postion"    # I

    .prologue
    .line 327
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getSIMSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "simSubscriberId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 330
    .local v1, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getNetWorkStatsService()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 332
    .local v2, "totalMonth":J
    return-wide v2
.end method

.method public static statsTrafficMobile(Landroid/content/Context;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v16

    .line 213
    .local v16, "trafficMode":I
    packed-switch v16, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getNetWorkStatsService()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->mutiSIMdoStats(Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v2

    iget-object v14, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 219
    .local v14, "simSubscriberId":Ljava/lang/String;
    invoke-static {v14}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 220
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getNetWorkStatsService()Ljava/lang/Object;

    move-result-object v6

    const-string v2, "forzajuve"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TrafficUtils doStats()  start..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v14, v2, v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v4

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v2

    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->queryTrafficCheck(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameMonth(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->checkCorrectTime(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "testtrafficbug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "touch sim if begin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",trafficCheckDatas[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    const-string v8, "testtrafficbug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "touch sim if end "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",trafficCheckDatas[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gez v7, :cond_2

    invoke-static {v6, v15}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-gez v2, :cond_6

    const-wide/16 v2, 0x0

    :cond_2
    :goto_2
    const-string v6, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    move/from16 v17, v6

    :goto_3
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    sub-long v18, v6, v2

    const-string v8, "forzajuve"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "monthLImit = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",monthfree = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v17, :cond_8

    const/4 v6, 0x0

    move v8, v6

    :goto_4
    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/Const;->setTodayUsedTraffic(J)V

    invoke-static/range {v18 .. v19}, Lcom/lenovo/safecenter/utils/Const;->setMonthFreeTraffic(J)V

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Const;->setMonthUsedTraffic(J)V

    const-string v6, "4.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "today use = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",month use = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Const;->setProgressTrafficMonthUsed(I)V

    int-to-long v2, v8

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/cache/NetCache;->setTraffic_used_progress(J)V

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshTrafficInfo()V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonitorOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v6

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v2

    const-wide/16 v9, -0x1

    cmp-long v2, v2, v9

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsTodayNoticed()Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x400

    mul-long/2addr v2, v6

    const-wide/16 v9, 0x400

    mul-long/2addr v2, v9

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    :cond_3
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetAlarmedInMonth()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x5a

    if-lt v8, v2, :cond_4

    const/16 v2, 0x64

    if-ge v8, v2, :cond_4

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/16 v11, 0xa

    const-wide/16 v12, 0x0

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gez v2, :cond_0

    if-eqz v17, :cond_0

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v6, v15}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    invoke-static {v6, v15}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    goto/16 :goto_1

    :cond_6
    invoke-static {v6, v15}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Ljava/lang/Object;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x0

    move/from16 v17, v6

    goto/16 :goto_3

    :cond_8
    sub-long v8, v6, v18

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v6, v8, v6

    long-to-int v6, v6

    move v8, v6

    goto/16 :goto_4

    .line 224
    .end local v14    # "simSubscriberId":Ljava/lang/String;
    .end local v15    # "template":Landroid/net/NetworkTemplate;
    :pswitch_3
    const-string v10, "dev"

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getOpenHelper()Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTotalToday(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v12

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSettingUiMonthTrafficLowLevel(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v6

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsTodayNoticed()Z

    move-result v2

    if-nez v2, :cond_9

    const-wide/16 v2, 0x400

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-ltz v2, :cond_9

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->queryTrafficCheck(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameMonth(JJ)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->checkCorrectTime(JJ)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "testtrafficbug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch open if begin "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",trafficCheckDatas[1] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v8

    const-string v5, "testtrafficbug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "touch open if begin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",trafficCheckDatas[1] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSettingUiMonthTrafficLowLevel(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    const-wide/16 v2, 0x0

    :goto_6
    move-wide v8, v2

    :goto_7
    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    move v10, v2

    :goto_8
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    sub-long v17, v2, v8

    const-string v4, "forzajuve"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "monthLImit = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ",monthfree = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_d

    const/4 v2, 0x0

    move v11, v2

    :goto_9
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetAlarmedInMonth()Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0x5a

    if-lt v11, v2, :cond_a

    const/16 v2, 0x64

    if-ge v11, v2, :cond_a

    const-string v2, "forzajuve"

    const-string v3, "touch warnning"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    :cond_a
    invoke-static {v12, v13}, Lcom/lenovo/safecenter/utils/Const;->setTodayUsedTraffic(J)V

    invoke-static/range {v17 .. v18}, Lcom/lenovo/safecenter/utils/Const;->setMonthFreeTraffic(J)V

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/utils/Const;->setMonthUsedTraffic(J)V

    invoke-static {v11}, Lcom/lenovo/safecenter/utils/Const;->setProgressTrafficMonthUsed(I)V

    const-string v2, "3.6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "today use = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",month use = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v11

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/cache/NetCache;->setTraffic_used_progress(J)V

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshTrafficInfo()V

    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-gez v2, :cond_0

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isNetLimitedInMonth()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Landroid/content/Context;IIIJ)V

    goto/16 :goto_0

    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSettingUiMonthTrafficLowLevel(Landroid/content/Context;)J

    move-result-wide v2

    goto/16 :goto_6

    :cond_c
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_8

    :cond_d
    sub-long v4, v2, v17

    const-wide/16 v19, 0x64

    mul-long v4, v4, v19

    div-long v2, v4, v2

    long-to-int v2, v2

    move v11, v2

    goto/16 :goto_9

    :cond_e
    move-wide v8, v2

    goto/16 :goto_7

    :cond_f
    move-wide v2, v8

    goto/16 :goto_5

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static statsTrafficMobileInLimit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public static trafficForceUpdate(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 2254
    sget v3, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->isSystemApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2256
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    .line 2259
    .local v2, "statsService":Landroid/net/INetworkStatsService;
    sput-boolean v5, Lcom/lenovo/safecenter/net/cache/NetCache;->is_net_flush_cast:Z

    .line 2261
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2274
    .end local v2    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    return-void

    .line 2262
    .restart local v2    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 2264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2267
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v1

    .line 2269
    .local v1, "service":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    sput-boolean v5, Lcom/lenovo/safecenter/net/cache/NetCache;->is_net_flush_cast:Z

    .line 2270
    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refreshTotal()V

    .line 2271
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobileInLimit(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteTrafficData()V
    .locals 3

    .prologue
    .line 527
    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 528
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM apps"

    .line 529
    .local v1, "sql2":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 533
    :cond_0
    return-void
.end method

.method public do4newMonth()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 687
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 688
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "haveDone4newMonthTime"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 706
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->deleteTrafficData()V

    .line 692
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setNetLimitedInMonth(Z)V

    .line 693
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setNetLimitedInMonth2(Z)V

    .line 694
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setIsNetAlarmedInMonth(Z)V

    .line 695
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setHasNoticed2MonthLimit(Z)V

    .line 696
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setIsNetAlarmedInMonth2(Z)V

    .line 697
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 698
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi2:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "haveDone4newMonthTime"

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 700
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/net/support/TrafficStatsService$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService$3;-><init>(Lcom/lenovo/safecenter/net/support/TrafficStatsService;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 705
    const-string v1, "forzajuve"

    const-string v2, "do4newmonth is exec ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDayTrafficInMonth(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/net/support/TrafficDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 625
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/safecenter/net/support/TrafficDate;>;"
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 626
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, " SELECT total,date,height FROM traffic where imsi = ?"

    .line 627
    .local v7, "sql":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "imsi":Ljava/lang/String;
    :cond_0
    aput-object p1, v10, v11

    invoke-virtual {v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 629
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 631
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 632
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 633
    .local v2, "dayTotal":I
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "day":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 635
    .local v5, "height":I
    new-instance v8, Lcom/lenovo/safecenter/net/support/TrafficDate;

    invoke-direct {v8, v1, v2, v5}, Lcom/lenovo/safecenter/net/support/TrafficDate;-><init>(Ljava/lang/String;II)V

    .line 636
    .local v8, "trafficDate":Lcom/lenovo/safecenter/net/support/TrafficDate;
    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "day":Ljava/lang/String;
    .end local v2    # "dayTotal":I
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "height":I
    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "trafficDate":Lcom/lenovo/safecenter/net/support/TrafficDate;
    :catch_0
    move-exception v4

    .line 646
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "sqle"

    const-string v10, "getDayTrafficInMonth sql exception"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v6

    .line 639
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 640
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 643
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getHeight(JJ)I
    .locals 6
    .param p1, "total"    # J
    .param p3, "maxTotal"    # J

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->c()I

    move-result v0

    .line 672
    .local v0, "BAR_MAXHEIGHT":I
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gtz v4, :cond_1

    .line 673
    const/4 v0, 0x0

    .line 681
    .end local v0    # "BAR_MAXHEIGHT":I
    :cond_0
    :goto_0
    return v0

    .line 675
    .restart local v0    # "BAR_MAXHEIGHT":I
    :cond_1
    const-wide/32 v4, 0x129e412

    cmp-long v4, v4, p1

    if-gtz v4, :cond_2

    .line 676
    long-to-float v3, p1

    .line 677
    .local v3, "total2":F
    long-to-float v2, p3

    .line 678
    .local v2, "maxtotal2":F
    div-float v4, v3, v2

    int-to-float v5, v0

    mul-float/2addr v4, v5

    float-to-int v0, v4

    goto :goto_0

    .line 680
    .end local v2    # "maxtotal2":F
    .end local v3    # "total2":F
    :cond_2
    int-to-long v4, v0

    mul-long/2addr v4, p1

    div-long/2addr v4, p3

    long-to-int v1, v4

    .line 681
    .local v1, "height":I
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getOpenHelper()Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBeforeDay(I)I
    .locals 9
    .param p1, "day"    # I

    .prologue
    const/4 v8, 0x0

    .line 508
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 509
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 510
    .local v4, "sumTotal":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 511
    const-string v3, " SELECT total FROM traffic where date = ?"

    .line 512
    .local v3, "sql":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 513
    .local v0, "cusor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 516
    :cond_0
    const-string v5, "forzajuve"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sumTotal i ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "cusor":Landroid/database/Cursor;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public insertDayTrafficDate(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 547
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v1

    .line 548
    .local v1, "mode":I
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 549
    const-string v2, "dev"

    invoke-direct {p0, v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/String;I)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-static {p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    .line 552
    .local v0, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 553
    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/String;I)V

    .line 555
    :cond_2
    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public insertToApp(JJJJI)V
    .locals 5
    .param p1, "re"    # J
    .param p3, "sent"    # J
    .param p5, "last_re"    # J
    .param p7, "last_sent"    # J
    .param p9, "uid"    # I

    .prologue
    .line 2866
    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2867
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "INSERT INTO apps (uid, _date, received, sent, last_received, last_sent) VALUES ( ? , ? , ? , ? , ? , ? )"

    .line 2869
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2871
    return-void
.end method

.method public queryTrafficCheck(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "simSubscriberId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2335
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net_check_traffic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2337
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v5, "is_init_check_traffic"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2339
    .local v3, "flag":Z
    if-nez v3, :cond_5

    .line 2340
    const-string v5, "testtrafficbug"

    const-string v6, "touch db flag begin"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2342
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v1, v11, [Ljava/lang/String;

    .line 2344
    .local v1, "date":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "select * from traffic_Check where sim_subscriber_id=?"

    new-array v7, v9, [Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "simSubscriberId":Ljava/lang/String;
    :cond_0
    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2348
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2349
    const-string v5, "testtrafficbug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const-string v5, "testtrafficbug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checktime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "checktime"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const-string v5, "testtrafficbug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inaccuracy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "inaccuracy"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 2360
    const-string v5, "checktime"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 2361
    const-string v5, "inaccuracy"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    .line 2363
    :cond_1
    aget-object v5, v1, v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2364
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "checktime"

    aget-object v7, v1, v9

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2365
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "inaccuracy"

    aget-object v7, v1, v10

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2367
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2370
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2371
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2373
    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "is_init_check_traffic"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2374
    const-string v5, "testtrafficbug"

    const-string v6, "touch db flag end"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "date":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    new-array v1, v11, [Ljava/lang/String;

    .line 2377
    .restart local v1    # "date":[Ljava/lang/String;
    const-string v5, "checktime"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 2378
    const-string v5, "inaccuracy"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 2379
    const-string v5, "testtrafficbug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryTrafficCheck  date[0]= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",date[1] ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return-object v1
.end method

.method public refresh()V
    .locals 8

    .prologue
    .line 1000
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1002
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    const v5, 0xfff5

    invoke-direct {p0, v5, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 1003
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1004
    .local v1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/support/AppInfo;

    .line 1005
    .local v0, "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    iget v5, v0, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    invoke-direct {p0, v5, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(ILandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1007
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    .end local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 1008
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1009
    const-string v5, "Receiver"

    const-string v6, "catch Exception......"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1012
    const-string v5, "Receiver"

    const-string v6, "finally......"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1011
    .restart local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1012
    const-string v5, "Receiver"

    const-string v6, "finally......"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1011
    .end local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1012
    const-string v6, "Receiver"

    const-string v7, "finally......"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
.end method

.method public refreshTotal()V
    .locals 3

    .prologue
    .line 985
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 987
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    const v1, 0xfff5

    invoke-direct {p0, v1, v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 988
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v1

    const-string v1, "Receiver"

    const-string v2, "catch Exception......"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshUid()V
    .locals 7

    .prologue
    .line 1200
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1202
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1203
    .local v1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/support/AppInfo;

    .line 1204
    .local v0, "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    iget v5, v0, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    invoke-direct {p0, v5, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(ILandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1209
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    .end local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 1210
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1211
    const-string v5, "Receiver"

    const-string v6, "catch Exception......"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1206
    .restart local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setOpenHelper(Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;)V
    .locals 0
    .param p1, "openHelper"    # Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    .line 444
    return-void
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b:Landroid/content/SharedPreferences;

    .line 452
    return-void
.end method

.method public updateTrafficCheck(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "simSubscriberId"    # Ljava/lang/String;
    .param p2, "inaccuracy"    # Ljava/lang/String;

    .prologue
    .line 2406
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net_check_traffic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2408
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "checktime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2411
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "inaccuracy"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2412
    const-string v1, "testtrafficbug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTrafficCheck  inaccuracy= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    return-void
.end method

.method public updateTrafficTab(II)V
    .locals 8
    .param p1, "dateFlag"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    iget-object v3, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 480
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select total from traffic where date=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 482
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 485
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "total"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v3, "date"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v3, "traffic"

    const-string v4, "total"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 498
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_1
    return-void

    .line 490
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    const-string v3, "update traffic set total=? where date=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
