.class public Lcom/lenovo/safecenter/utils/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/utils/CallUtil;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "fromTime"    # Ljava/lang/Long;
    .param p2, "toTime"    # Ljava/lang/Long;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v5, "date DESC"

    const-string v2, "%s > ? AND %s < ? "

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "date"

    aput-object v4, v3, v8

    const-string v4, "date"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/safecenter/utils/CallUtil;->a:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)[I
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 107
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 109
    .local v1, "durations":[I
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const-string v3, "duration"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "duration":Ljava/lang/String;
    const-string v3, "type"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/WflUtils;->convertSecondsToMinute(I)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/WflUtils;->convertSecondsToMinute(I)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    goto :goto_0

    .line 135
    .end local v0    # "duration":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static statisticsCallDurationByType(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "callDurations":[I
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallDurationStatisticsTime()J

    move-result-wide v4

    .line 31
    .local v4, "statisticsTime":J
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->getNextMonthStartTime()J

    move-result-wide v2

    .line 32
    .local v2, "nextMonth":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/WflUtils;->parseMonthStartTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 34
    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    .line 35
    const-string v6, "wu0wu"

    const-string v7, "CallDuration first Statistics"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/safecenter/utils/WflUtils;->parseMonthStartTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/utils/CallUtil;->a(Landroid/content/ContentResolver;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 40
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/CallUtil;->a(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 42
    aget v6, v1, v9

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setCallIncommingDurationCurrMonth(I)V

    .line 43
    aget v6, v1, v10

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setCallOutgoingDurationCurrMonth(I)V

    .line 69
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const-string v6, "date"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/utils/Const;->setCallDurationStatisticsTime(J)V

    .line 75
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshCallDurationCurrMonth()V

    .line 78
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2
    const-string v6, "wu0wu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallIncommingDurationCurrMonth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallIncommingDurationCurrMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v6, "wu0wu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallOutgoingDurationCurrMonth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallOutgoingDurationCurrMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v6, "wu0wu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallDurationStatisticsTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallDurationStatisticsTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 46
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3
    const-string v6, "wu0wu"

    const-string v7, "CallDuration Statisticsed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/utils/CallUtil;->a(Landroid/content/ContentResolver;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 49
    .restart local v0    # "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 50
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/CallUtil;->a(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 51
    aget v6, v1, v9

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallIncommingDurationCurrMonth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setCallIncommingDurationCurrMonth(I)V

    .line 53
    aget v6, v1, v10

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallOutgoingDurationCurrMonth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setCallOutgoingDurationCurrMonth(I)V

    goto/16 :goto_0

    .line 59
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_4
    const-string v6, "wu0wu"

    const-string v7, "CallDuration first Statistics"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/safecenter/utils/WflUtils;->parseMonthStartTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/utils/CallUtil;->a(Landroid/content/ContentResolver;Ljava/lang/Long;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    .restart local v0    # "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/CallUtil;->a(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 65
    aget v6, v1, v9

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setCallIncommingDurationCurrMonth(I)V

    .line 66
    aget v6, v1, v10

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setCallOutgoingDurationCurrMonth(I)V

    goto/16 :goto_0
.end method
