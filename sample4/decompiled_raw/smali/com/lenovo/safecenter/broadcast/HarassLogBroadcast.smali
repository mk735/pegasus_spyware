.class public Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "HarassLogBroadcast.java"


# instance fields
.field private a:Lcom/lenovo/safecenter/database/AppDatabase;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_BLACK_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    new-instance v2, Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 38
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->b:Landroid/content/SharedPreferences;

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v3, "safe_log_harass"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/Const;->saveHarassLogsCount(Landroid/content/Context;)V

    .line 43
    const-string v2, "black_address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "black_body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "black_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "black_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "fromtype"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    new-instance v17, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct/range {v17 .. v17}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    const-string v2, "0"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    move-object/from16 v0, v17

    iput-object v15, v0, Lcom/lenovo/safecenter/support/SafeLog;->mms_type:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->hassee:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertHarassLog(Lcom/lenovo/safecenter/support/SafeLog;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/database/AppDatabase;->close()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lenovo.antispam.notify"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v3, "harass_sms"

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "guest_mode_on"

    const/4 v14, 0x0

    invoke-static {v2, v3, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->b:Landroid/content/SharedPreferences;

    const-string v3, "harassLog_preference"

    const/4 v14, 0x1

    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    sget v2, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/Const;->saveHarassLogsCount(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportInterceptGarbageSMS()V

    .line 50
    const/16 v2, 0x100

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V

    .line 54
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 56
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 59
    .local v11, "mDefaultPreference":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 60
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "total_harass_sms"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v14, "0"

    invoke-virtual {v3, v14}, Lcom/lenovo/safecenter/database/AppDatabase;->getHarassLogCount(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "mDefaultPreference":Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->showFirstHarass(Landroid/content/Context;)V

    .line 73
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_BLACK_PHONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 75
    const-string v2, "black_address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, "number":Ljava/lang/String;
    const-string v2, "black_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "date":Ljava/lang/String;
    new-instance v13, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v13}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 79
    .local v13, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    iput-object v12, v13, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    iput v2, v13, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 81
    iput-object v8, v13, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 83
    const-string v2, "1"

    iput-object v2, v13, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 84
    const/4 v2, 0x0

    iput v2, v13, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 85
    const/4 v2, 0x1

    iput v2, v13, Lcom/lenovo/safecenter/support/SafeLog;->hassee:I

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v2, v13}, Lcom/lenovo/safecenter/database/AppDatabase;->insertHarassLog(Lcom/lenovo/safecenter/support/SafeLog;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/database/AppDatabase;->close()V

    .line 93
    .end local v8    # "date":Ljava/lang/String;
    .end local v12    # "number":Ljava/lang/String;
    .end local v13    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lenovo.antivirus.notify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    move-object/from16 v5, p1

    .line 95
    .local v5, "ctx":Landroid/content/Context;
    const-string v2, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "pkgName":Ljava/lang/String;
    const-string v2, "virustype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "type":Ljava/lang/String;
    const-string v2, "pname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "appName":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 99
    new-instance v2, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;-><init>(Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->start()V

    .line 112
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "appName":Ljava/lang/String;
    :cond_3
    return-void

    .line 63
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/utils/Const;->saveHarassCount(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 65
    :catch_0
    move-exception v9

    .line 67
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public showFirstHarass(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-static {p1, v2}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
