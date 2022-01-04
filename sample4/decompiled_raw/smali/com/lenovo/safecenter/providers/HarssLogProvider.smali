.class public Lcom/lenovo/safecenter/providers/HarssLogProvider;
.super Landroid/content/ContentProvider;
.source "HarssLogProvider.java"


# static fields
.field private static final b:Landroid/content/UriMatcher;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private c:Lcom/lenovo/safecenter/database/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    .line 36
    sget-object v0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.safecenter.HarassProvider"

    const-string v2, "safe_log_harass"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.safecenter.HarassProvider"

    const-string v2, "safe_log_harass/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 155
    iget-object v5, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 170
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :pswitch_0
    const-string v5, "safe_log_harass"

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, "num":I
    :goto_0
    return v3

    .line 162
    .end local v3    # "num":I
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 163
    .local v1, "id":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "where":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_0
    const-string v5, "safe_log_harass"

    invoke-virtual {v0, v5, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 168
    .restart local v3    # "num":I
    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/safe_log_harass"

    .line 50
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/safe_log_harass"

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lenovo/safecenter/providers/HarssLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->a:Landroid/content/SharedPreferences;

    .line 77
    iget-object v10, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v11, "safe_log_harass"

    invoke-virtual {v10, v1, v11}, Lcom/lenovo/safecenter/database/AppDatabase;->isLogFull(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget-object v10, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v10}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 80
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v10, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 149
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown Uri:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 82
    :pswitch_0
    const-string v10, "isPrivate"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "isPrivate"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_7

    .line 84
    :cond_0
    const-string v10, "type"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 86
    const-string v10, "type"

    const-string v11, "1"

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    const-string v10, "isupload"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 90
    const-string v10, "isupload"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    :cond_2
    const-string v10, "hassee"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 94
    const-string v10, "hassee"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    :cond_3
    const-string v10, "log_selected"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 98
    const-string v10, "log_selected"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    :cond_4
    const-string v10, "safe_log_harass"

    const-string v11, "_id"

    invoke-virtual {v2, v10, v11, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 103
    .local v7, "rowid":J
    new-instance v9, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v9}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 104
    .local v9, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 105
    const-string v10, "time"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 106
    const-string v10, "fromtype"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    .line 107
    sget-object v10, Lcom/lenovo/safecenter/utils/Const;->lastSafeLogs:Ljava/util/Map;

    const-string v11, "harass_call"

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "guest_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->a:Landroid/content/SharedPreferences;

    const-string v11, "harassLog_preference"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    sget v10, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    .line 113
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->saveHarassLogsCount(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportInterceptHarassCalls()V

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/safecenter/providers/HarssLogProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x100

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V

    .line 117
    :cond_5
    const/4 v10, 0x1

    invoke-static {v1, v10}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v10

    if-nez v10, :cond_6

    .line 119
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 122
    .local v6, "mDefaultPreference":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 123
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "total_harass_call"

    iget-object v11, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v12, "1"

    invoke-virtual {v11, v12}, Lcom/lenovo/safecenter/database/AppDatabase;->getHarassLogCount(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "mDefaultPreference":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.lenovo.antispam.notify"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    invoke-static {p1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 146
    .end local v7    # "rowid":J
    .end local v9    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :goto_1
    return-object v10

    .line 126
    .restart local v7    # "rowid":J
    .restart local v9    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_6
    const/4 v10, 0x1

    :try_start_1
    invoke-static {v1, v10}, Lcom/lenovo/safecenter/utils/Const;->saveHarassCount(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "rowid":J
    .end local v9    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_7
    const-string v10, "isPrivate"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "isPrivate"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 135
    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v0

    .line 136
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 137
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 138
    iget-object v10, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Lcom/lenovo/safecenter/support/Contract;)V

    .line 139
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.lenovo.safeceter.endpricall"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v5, "endpri":Landroid/content/Intent;
    const-string v10, "number"

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    const/4 v10, 0x0

    goto :goto_1

    .line 146
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v5    # "endpri":Landroid/content/Intent;
    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/providers/HarssLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Uri:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :pswitch_0
    const-string v1, "safe_log_harass"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 63
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 64
    .local v8, "id":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "where":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    :cond_0
    const-string v1, "safe_log_harass"

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 179
    iget-object v5, p0, Lcom/lenovo/safecenter/providers/HarssLogProvider;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/lenovo/safecenter/providers/HarssLogProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 195
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :pswitch_0
    const-string v5, "safe_log_harass"

    invoke-virtual {v0, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, "num":I
    :goto_0
    return v3

    .line 187
    .end local v3    # "num":I
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 188
    .local v1, "id":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "where":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v5, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    :cond_0
    const-string v5, "safe_log_harass"

    invoke-virtual {v0, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 193
    .restart local v3    # "num":I
    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
