.class public Lcom/lenovo/safecenter/utils/AlarmManageUtils;
.super Ljava/lang/Object;
.source "AlarmManageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method public static cancelNoticeTrafficStats(Landroid/content/Context;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->a(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 87
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, "i":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 89
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 90
    return-void
.end method

.method public static cancelNoticeUpdateLab(Landroid/content/Context;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->a(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 70
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.lenovo.safecenter.Broadcast.updateLab"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 73
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 74
    return-void
.end method

.method public static noticeTrafficStats(Landroid/content/Context;)V
    .locals 8
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 79
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->a(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 80
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 82
    return-void
.end method

.method public static noticeUpdateLab(Landroid/content/Context;)V
    .locals 14
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const-wide/32 v4, 0x5265c00

    const/16 v13, 0xc

    const/4 v1, 0x0

    .line 30
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->isAutoUpdate(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 63
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 35
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v7, "intent":Landroid/content/Intent;
    const-string v9, "com.lenovo.safecenter.Broadcast.updateLab"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 39
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getAutoUpdateMode(Landroid/content/Context;)I

    move-result v8

    .line 40
    .local v8, "mode":I
    const-string v9, "wu0wu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "auto update mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v13, v1, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 44
    const-string v9, "wu0wu"

    const-string v10, "triggerTime<currentTime"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v13, v1, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v9

    add-long v2, v9, v4

    .line 51
    .local v2, "triggerTime":J
    :goto_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 58
    :cond_1
    :goto_2
    const-string v1, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto update start time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9}, Lcom/lenovo/safecenter/utils/WflUtils;->convertLongTime2DateFormat(Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    .end local v2    # "triggerTime":J
    :cond_2
    invoke-static {v13, v1, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v2

    .restart local v2    # "triggerTime":J
    goto :goto_1

    .line 54
    :cond_3
    const/4 v4, 0x2

    if-ne v8, v4, :cond_1

    .line 55
    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2
.end method
