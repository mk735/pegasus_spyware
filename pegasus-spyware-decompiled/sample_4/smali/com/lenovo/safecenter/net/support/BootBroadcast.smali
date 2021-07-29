.class public Lcom/lenovo/safecenter/net/support/BootBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcast.java"


# static fields
.field public static final APPLY_IPTABLE_RULES:Ljava/lang/String; = "apply_iptable_rules"


# instance fields
.field private a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Set;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "netBlackUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v4, ""

    .line 382
    .local v4, "uids":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 384
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 385
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 388
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 389
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "selected uids"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "uids":Ljava/lang/String;
    :goto_1
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Filter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 49
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    if-eqz p2, :cond_11

    .line 65
    const-string v43, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 66
    const-string v43, "forzajuve"

    const-string v44, "is in boot onReceive "

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 68
    .local v32, "now":J
    invoke-static/range {v32 .. v33}, Lcom/lenovo/safecenter/net/cache/NetCache;->setBoot_time(J)V

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v36

    .line 70
    .local v36, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v36 .. v36}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v43

    const-string v44, "boot_time"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->initNetCache(Landroid/content/Context;)V

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v18

    .line 74
    .local v18, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    const-string v43, "bootairtest"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "imsi 1 = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "imsi 2 = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "boolean airmode ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->IsAirModeOn(Landroid/content/Context;)Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "now = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v43

    new-instance v44, Lcom/lenovo/safecenter/net/support/BootBroadcast$1;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/BootBroadcast$1;-><init>(Lcom/lenovo/safecenter/net/support/BootBroadcast;Landroid/content/Context;)V

    invoke-interface/range {v43 .. v44}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 83
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v43

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v44

    const-string v45, "shutdowm_month"

    const/16 v46, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v45

    const-string v46, "clear"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "nowMonth ="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ",month = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v45

    move/from16 v1, v44

    if-eq v0, v1, :cond_4

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_4

    const-string v45, "haveDone4newMonthTime"

    const/16 v46, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v45

    move/from16 v0, v45

    move/from16 v1, v44

    if-eq v0, v1, :cond_4

    const-string v44, "shutdowm_time"

    const-wide/16 v45, -0x1

    invoke-interface/range {v43 .. v46}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v44

    const-wide/16 v46, -0x1

    cmp-long v46, v44, v46

    if-eqz v46, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    cmp-long v44, v44, v46

    if-lez v44, :cond_3

    .line 84
    :cond_0
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoTrafficCorrectSim1(Landroid/content/Context;)V

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startAutoTrafficCorrectSim2(Landroid/content/Context;)V

    .line 88
    .end local v18    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .end local v32    # "now":J
    .end local v36    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v43, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_a

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v43

    const-string v44, "android.intent.extra.UID"

    invoke-virtual/range {v43 .. v44}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 90
    .local v39, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v43

    const/16 v44, 0xd

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_12

    .line 91
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    if-eqz v43, :cond_2

    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashSet;->size()I

    move-result v43

    if-nez v43, :cond_5

    .line 92
    :cond_2
    const-string v43, "system info"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 94
    .local v34, "prefs":Landroid/content/SharedPreferences;
    const-string v43, "selected uids"

    const-string v44, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "allUid":Ljava/lang/String;
    const-string v43, ";"

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 96
    .local v41, "uidString":[Ljava/lang/String;
    const-string v43, ""

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_5

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_5

    .line 97
    move-object/from16 v6, v41

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v40, v6, v16

    .line 98
    .local v40, "uid2":Ljava/lang/String;
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 83
    .end local v5    # "allUid":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v34    # "prefs":Landroid/content/SharedPreferences;
    .end local v39    # "uid":I
    .end local v40    # "uid2":Ljava/lang/String;
    .end local v41    # "uidString":[Ljava/lang/String;
    .restart local v18    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .restart local v32    # "now":J
    .restart local v36    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    const-string v44, "clear"

    const-string v45, "do4newMonth now"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->do4newMonth()V

    const-string v44, "clear"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "haveDone4newMonthTime = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "haveDone4newMonthTime"

    const/16 v47, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v44

    const-string v45, "shutdowm_daily"

    const/16 v46, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v44

    move/from16 v1, v43

    if-eq v0, v1, :cond_0

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lcom/lenovo/safecenter/utils/Const;->setIsTodayNoticed(Z)V

    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setIsTodayNoticed2(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 103
    .end local v18    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .end local v32    # "now":J
    .end local v36    # "sp":Landroid/content/SharedPreferences;
    .restart local v39    # "uid":I
    :cond_5
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    if-eqz v43, :cond_6

    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashSet;->size()I

    move-result v43

    if-nez v43, :cond_7

    .line 104
    :cond_6
    const-string v43, "wlan info"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 106
    .local v35, "prefsWlan":Landroid/content/SharedPreferences;
    const-string v43, "selected uids"

    const-string v44, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .restart local v5    # "allUid":Ljava/lang/String;
    const-string v43, ";"

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 108
    .restart local v41    # "uidString":[Ljava/lang/String;
    const-string v43, ""

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_7

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_7

    .line 109
    move-object/from16 v6, v41

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v40, v6, v16

    .line 110
    .restart local v40    # "uid2":Ljava/lang/String;
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 114
    .end local v5    # "allUid":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v35    # "prefsWlan":Landroid/content/SharedPreferences;
    .end local v40    # "uid2":Ljava/lang/String;
    .end local v41    # "uidString":[Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    .line 115
    .local v14, "flag":Z
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    if-eqz v43, :cond_8

    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_8

    .line 116
    const/4 v14, 0x1

    .line 117
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 118
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    const-string v44, "system info"

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a(Ljava/util/Set;Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    :cond_8
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    if-eqz v43, :cond_9

    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_9

    .line 121
    const/4 v14, 0x1

    .line 122
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    sget-object v43, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    const-string v44, "wlan info"

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a(Ljava/util/Set;Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    :cond_9
    if-eqz v14, :cond_a

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->createShell(Landroid/content/Context;)Z

    .line 169
    .end local v14    # "flag":Z
    .end local v39    # "uid":I
    :cond_a
    :goto_3
    const-string v43, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v44

    const-string v45, "shutdowm_month"

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v46

    invoke-interface/range {v44 .. v46}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v44

    const-string v45, "shutdowm_daily"

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v46

    invoke-interface/range {v44 .. v46}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v43

    const-string v44, "shutdowm_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v45

    invoke-interface/range {v43 .. v46}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v43

    const/16 v44, 0xd

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refresh()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->insertDayTrafficDate(Landroid/content/Context;)V

    .line 171
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v43

    const-string v44, "com.lenovo.safecenter.traffic.correction"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_e

    .line 173
    const-string v43, "TrafficCorrectCenter"

    const-string v44, "touch com.lenovo.safecenter.traffic.correction receive"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v10, 0x0

    .line 176
    .local v10, "correctResult":Ljava/lang/String;
    const-string v43, "code"

    const/16 v44, -0x29a

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 177
    .local v13, "errorCode":I
    const-string v43, "used"

    const/16 v44, -0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    .line 178
    .local v42, "used":I
    const-string v43, "card"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 179
    .local v8, "card":I
    const-string v43, "left"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 180
    .local v19, "left":I
    const-string v43, "description"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "desc":Ljava/lang/String;
    const-string v43, "TrafficCorrectCenter"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "desc = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v43, "TrafficCorrectCenter"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "errorCode ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ",used ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ",card ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ",left ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-nez v13, :cond_1d

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v21

    .line 187
    .local v21, "mAppDatabase":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    const/16 v38, 0x0

    .line 188
    .local v38, "trafficCorrectSucessFlag":Z
    if-nez v8, :cond_19

    .line 191
    const/16 v43, 0x0

    sput v43, Lcom/lenovo/safecenter/net/cache/NetCache;->lastCorrectCard:I

    .line 197
    :goto_4
    const/16 v43, 0x1

    sput-boolean v43, Lcom/lenovo/safecenter/net/cache/NetCache;->canCorrect:Z

    .line 198
    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1a

    .line 199
    move/from16 v0, v42

    mul-int/lit16 v0, v0, 0x400

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 200
    .local v30, "monthUsed":J
    move-wide/from16 v0, v30

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v8}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->checkTraffic(JLcom/lenovo/safecenter/net/support/TrafficStatsService;Landroid/content/Context;I)V

    .line 208
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f0d07e6

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 211
    const/16 v38, 0x1

    .line 240
    .end local v30    # "monthUsed":J
    :goto_5
    if-eqz v38, :cond_e

    .line 241
    sget-object v43, Lcom/lenovo/safecenter/utils/Const;->trafficHandler:Landroid/os/Handler;

    if-eqz v43, :cond_d

    .line 242
    sget-object v43, Lcom/lenovo/safecenter/utils/Const;->trafficHandler:Landroid/os/Handler;

    const/16 v44, 0x5

    invoke-virtual/range {v43 .. v44}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/lenovo/safecenter/net/support/Utils;->showCorrectSuccessNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    .end local v8    # "card":I
    .end local v10    # "correctResult":Ljava/lang/String;
    .end local v11    # "desc":Ljava/lang/String;
    .end local v13    # "errorCode":I
    .end local v19    # "left":I
    .end local v21    # "mAppDatabase":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .end local v38    # "trafficCorrectSucessFlag":Z
    .end local v42    # "used":I
    :cond_e
    :goto_6
    const-string v43, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_10

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 261
    .local v7, "b":Landroid/os/Bundle;
    if-eqz v7, :cond_10

    .line 262
    const-string v43, "networkInfo"

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 264
    .local v4, "a":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v37

    .line 265
    .local v37, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v43, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_f

    .line 266
    const-string v43, "nac"

    const-string v44, "conn~~"

    invoke-static/range {v43 .. v44}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->noticeTrafficStats(Landroid/content/Context;)V

    .line 269
    const-string v43, "nac"

    const-string v44, "net on notice trafficStats"

    invoke-static/range {v43 .. v44}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_f

    .line 273
    invoke-static/range {p1 .. p1}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v22

    .line 275
    .local v22, "mUtils":Landroid/provider/MultiSIMUtils;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 276
    .local v9, "clazz":Ljava/lang/Class;
    const-string v43, "getDataSubscriberId"

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v9, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 278
    .local v23, "method":Ljava/lang/reflect/Method;
    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 279
    .local v17, "id":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/utils/Const;->setDataCacheImsi(Ljava/lang/String;)V

    .line 280
    const-string v43, "nac"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "data id ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v9    # "clazz":Ljava/lang/Class;
    .end local v17    # "id":Ljava/lang/String;
    .end local v22    # "mUtils":Landroid/provider/MultiSIMUtils;
    .end local v23    # "method":Ljava/lang/reflect/Method;
    :cond_f
    :goto_7
    sget-object v43, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_10

    .line 287
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v43

    new-instance v44, Lcom/lenovo/safecenter/net/support/BootBroadcast$2;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/BootBroadcast$2;-><init>(Lcom/lenovo/safecenter/net/support/BootBroadcast;Landroid/content/Context;)V

    invoke-interface/range {v43 .. v44}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->cancelNoticeTrafficStats(Landroid/content/Context;)V

    .line 293
    const-string v43, "nac"

    const-string v44, "net dis cancel trafficStats"

    invoke-static/range {v43 .. v44}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v4    # "a":Landroid/net/NetworkInfo;
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v37    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_10
    const-string v43, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v43

    const/16 v44, 0xd

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v45

    const-string v46, "android.intent.extra.UID"

    invoke-virtual/range {v45 .. v46}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    const-string v46, ":"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v44

    const/16 v46, 0x1

    aget-object v44, v44, v46

    const-string v46, "android.permission.INTERNET"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v43

    if-nez v43, :cond_11

    const-string v43, "pa"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "pkgname = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v43

    new-instance v44, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;-><init>(Lcom/lenovo/safecenter/net/support/BootBroadcast;Landroid/content/Context;I)V

    invoke-interface/range {v43 .. v44}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 300
    :cond_11
    return-void

    .line 129
    .restart local v39    # "uid":I
    :cond_12
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    if-eqz v43, :cond_13

    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashSet;->size()I

    move-result v43

    if-nez v43, :cond_14

    .line 130
    :cond_13
    const-string v43, "system info"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 132
    .restart local v34    # "prefs":Landroid/content/SharedPreferences;
    const-string v43, "selected uids"

    const-string v44, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5    # "allUid":Ljava/lang/String;
    const-string v43, ";"

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 134
    .restart local v41    # "uidString":[Ljava/lang/String;
    const-string v43, ""

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_14

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_14

    .line 135
    move-object/from16 v6, v41

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    aget-object v40, v6, v16

    .line 136
    .restart local v40    # "uid2":Ljava/lang/String;
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 141
    .end local v5    # "allUid":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v34    # "prefs":Landroid/content/SharedPreferences;
    .end local v40    # "uid2":Ljava/lang/String;
    .end local v41    # "uidString":[Ljava/lang/String;
    :cond_14
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    if-eqz v43, :cond_15

    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashSet;->size()I

    move-result v43

    if-nez v43, :cond_16

    .line 142
    :cond_15
    const-string v43, "wlan info"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 144
    .restart local v35    # "prefsWlan":Landroid/content/SharedPreferences;
    const-string v43, "selected uids"

    const-string v44, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .restart local v5    # "allUid":Ljava/lang/String;
    const-string v43, ";"

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 146
    .restart local v41    # "uidString":[Ljava/lang/String;
    const-string v43, ""

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_16

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_16

    .line 147
    move-object/from16 v6, v41

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_9
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    aget-object v40, v6, v16

    .line 148
    .restart local v40    # "uid2":Ljava/lang/String;
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 152
    .end local v5    # "allUid":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v20    # "len$":I
    .end local v35    # "prefsWlan":Landroid/content/SharedPreferences;
    .end local v40    # "uid2":Ljava/lang/String;
    .end local v41    # "uidString":[Ljava/lang/String;
    :cond_16
    const/4 v15, 0x0

    .line 153
    .local v15, "flag2":Z
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    if-eqz v43, :cond_17

    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_17

    .line 154
    const/4 v15, 0x1

    .line 155
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 156
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    const-string v44, "system info"

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a(Ljava/util/Set;Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    :cond_17
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    if-eqz v43, :cond_18

    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    .line 159
    const/4 v15, 0x1

    .line 160
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    sget-object v43, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    const-string v44, "wlan info"

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/BootBroadcast;->a(Ljava/util/Set;Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    :cond_18
    if-eqz v15, :cond_a

    .line 164
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->createShell(Landroid/content/Context;)Z

    goto/16 :goto_3

    .line 195
    .end local v15    # "flag2":Z
    .end local v39    # "uid":I
    .restart local v8    # "card":I
    .restart local v10    # "correctResult":Ljava/lang/String;
    .restart local v11    # "desc":Ljava/lang/String;
    .restart local v13    # "errorCode":I
    .restart local v19    # "left":I
    .restart local v21    # "mAppDatabase":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .restart local v38    # "trafficCorrectSucessFlag":Z
    .restart local v42    # "used":I
    :cond_19
    const/16 v43, 0x1

    sput v43, Lcom/lenovo/safecenter/net/cache/NetCache;->lastCorrectCard:I

    goto/16 :goto_4

    .line 212
    :cond_1a
    const/16 v43, -0x1

    move/from16 v0, v19

    move/from16 v1, v43

    if-eq v0, v1, :cond_1c

    .line 213
    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 215
    .local v24, "monthLeft":J
    if-nez v8, :cond_1b

    .line 216
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    const-wide/16 v45, 0x400

    mul-long v43, v43, v45

    const-wide/16 v45, 0x400

    mul-long v26, v43, v45

    .line 218
    .local v26, "monthLimit":J
    sub-long v30, v26, v24

    .line 224
    .end local v26    # "monthLimit":J
    .restart local v30    # "monthUsed":J
    :goto_a
    move-wide/from16 v0, v30

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v8}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->checkTraffic(JLcom/lenovo/safecenter/net/support/TrafficStatsService;Landroid/content/Context;I)V

    .line 232
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const v44, 0x7f0d07ed

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 235
    const/16 v38, 0x1

    .line 236
    goto/16 :goto_5

    .line 220
    .end local v30    # "monthUsed":J
    :cond_1b
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    const-wide/16 v45, 0x400

    mul-long v43, v43, v45

    const-wide/16 v45, 0x400

    mul-long v28, v43, v45

    .line 222
    .local v28, "monthLimit2":J
    sub-long v30, v28, v24

    .restart local v30    # "monthUsed":J
    goto :goto_a

    .line 237
    .end local v24    # "monthLeft":J
    .end local v28    # "monthLimit2":J
    .end local v30    # "monthUsed":J
    :cond_1c
    const v43, 0x7f0d07de

    const/16 v44, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 247
    .end local v21    # "mAppDatabase":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .end local v38    # "trafficCorrectSucessFlag":Z
    :cond_1d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_e

    .line 248
    const/16 v43, -0x67

    move/from16 v0, v43

    if-ne v13, v0, :cond_1e

    .line 249
    const v43, 0x7f0d07de

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 251
    :cond_1e
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    .line 252
    const v43, 0x7f0d0828

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v43

    const v44, 0x7f0d0829

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/net/support/Utils;->showCorrectFailNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 282
    .end local v8    # "card":I
    .end local v10    # "correctResult":Ljava/lang/String;
    .end local v11    # "desc":Ljava/lang/String;
    .end local v13    # "errorCode":I
    .end local v19    # "left":I
    .end local v42    # "used":I
    .restart local v4    # "a":Landroid/net/NetworkInfo;
    .restart local v7    # "b":Landroid/os/Bundle;
    .restart local v37    # "state":Landroid/net/NetworkInfo$DetailedState;
    :catch_0
    move-exception v12

    .line 283
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7
.end method
