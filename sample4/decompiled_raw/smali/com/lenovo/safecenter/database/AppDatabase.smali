.class public Lcom/lenovo/safecenter/database/AppDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppDatabase.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "name"

.field public static final APP_PER_NAME:Ljava/lang/String; = "pername"

.field public static final APP_PER_TYPE:Ljava/lang/String; = "apptype"

.field public static final APP_PKG_NAME:Ljava/lang/String; = "packagename"

.field public static final APP_UPLOAD:Ljava/lang/String; = "isupload"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final DATEBASE_NAME:Ljava/lang/String; = "safecenterDB"

.field public static final DB_ACTION:Ljava/lang/String; = "action"

.field public static final DB_APP:Ljava/lang/String; = "appname"

.field public static final DB_APPID:Ljava/lang/String; = "_id"

.field public static final DB_APP_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final DB_APP_CALL:Ljava/lang/String; = "call_phone"

.field public static final DB_APP_CAMERA:Ljava/lang/String; = "camera"

.field public static final DB_APP_CANTACT:Ljava/lang/String; = "contact"

.field public static final DB_APP_HISTORY:Ljava/lang/String; = "history"

.field public static final DB_APP_INTERNET:Ljava/lang/String; = "internet"

.field public static final DB_APP_LOCATION:Ljava/lang/String; = "location"

.field public static final DB_APP_MESSAGE:Ljava/lang/String; = "readmessage"

.field public static final DB_APP_PHONE:Ljava/lang/String; = "receive_phone"

.field public static final DB_APP_RECORD:Ljava/lang/String; = "record_audio"

.field public static final DB_APP_SELECTED:Ljava/lang/String; = "app_selected"

.field public static final DB_APP_SENDMESSAGE:Ljava/lang/String; = "sendmessage"

.field public static final DB_APP_WCANTACT:Ljava/lang/String; = "writecontact"

.field public static final DB_APP_WMESSAGE:Ljava/lang/String; = "writemessage"

.field public static final DB_DISABLED:Ljava/lang/String; = "disabled"

.field public static final DB_HIDE_APPS:Ljava/lang/String; = "hide_apps"

.field public static final DB_LOG_HARASS:Ljava/lang/String; = "safe_log_harass"

.field public static final DB_LOG_PRIVACY:Ljava/lang/String; = "safe_log_privacy"

.field public static final DB_LOG_SELECTED:Ljava/lang/String; = "log_selected"

.field public static final DB_LOG_TARIFF:Ljava/lang/String; = "safe_log_tariff"

.field public static final DB_PASSWORD:Ljava/lang/String; = "password"

.field public static final DB_SELECTED:Ljava/lang/String; = "selected"

.field public static final DB_SUGGEST:Ljava/lang/String; = "suggest"

.field public static final DB_TRUSTED:Ljava/lang/String; = "trusted"

.field public static final DB_TYPE:Ljava/lang/String; = "type"

.field public static final DB_UID:Ljava/lang/String; = "uid"

.field public static final GETAPP:Ljava/lang/String; = "uid>0"

.field public static final GETSELECTED:Ljava/lang/String; = "selected=1"

.field public static final HARASS_CALL:Ljava/lang/String; = "harass_call"

.field public static final HARASS_SMS:Ljava/lang/String; = "harass_sms"

.field public static final HAS_SEE:Ljava/lang/String; = "hassee"

.field public static final INDEX_APPTYPE:I = 0x4

.field public static final INDEX_NAME:I = 0x6

.field public static final INDEX_PACKAGE:I = 0x3

.field public static final INDEX_PERNAME:I = 0x5

.field public static final INDEX_SELECTED:I = 0x2

.field public static final INDEX_UID:I = 0x1

.field public static final ISUPLOAD:Ljava/lang/String; = "isupload"

.field public static MAX_LOG_COUNT:I = 0x0

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PERM_TYPE_DEVICE:Ljava/lang/String; = "device"

.field public static final PERM_TYPE_INSTALLAPP:Ljava/lang/String; = "install_app"

.field public static final PERM_TYPE_LOCATION:Ljava/lang/String; = "location"

.field public static final PERM_TYPE_PRIVCY:Ljava/lang/String; = "privacy"

.field public static final PERM_TYPE_TARIFF:Ljava/lang/String; = "tariff"

.field public static final PER_NAME:Ljava/lang/String; = "pername"

.field public static final SORTBYUID:Ljava/lang/String; = "uid"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String; = "mms_type"

.field public static final VERSION:I = 0xc


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0xc7

    sput v0, Lcom/lenovo/safecenter/database/AppDatabase;->MAX_LOG_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v0, "safecenterDB"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 139
    iput-object p1, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    .line 140
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 338
    const-string v0, "CREATE TABLE IF NOT EXISTS checkpwd(result Integer)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    const-string v0, "insert into checkpwd values(0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    const-string v0, "insert into checkpwd values(1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1525
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1526
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    const/4 v1, 0x1

    .line 1530
    :goto_1
    return v1

    .line 1525
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 345
    const-string v0, "DROP TABLE IF EXISTS passwordNew"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    const-string v0, "CREATE TABLE IF NOT EXISTS passwordNew(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1071
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.M.dd.HH.mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "dateValue":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "datatime":Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "nowTimeArray":[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1079
    .local v5, "timeArray":[Ljava/lang/String;
    aget-object v6, v3, v8

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v3, v9

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v3, v10

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1082
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    :goto_0
    return-object v2

    .line 1086
    :cond_0
    aget-object v6, v3, v8

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, "formatTime":Ljava/lang/String;
    goto :goto_0

    .line 1093
    .end local v2    # "formatTime":Ljava/lang/String;
    :cond_1
    aget-object v6, v3, v8

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1094
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    .restart local v2    # "formatTime":Ljava/lang/String;
    goto :goto_0

    .line 1097
    .end local v2    # "formatTime":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static formatTime1(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1307
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, "timeArray":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d00f8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d00f9

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "formatTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 2428
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.M.dd.HH.mm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2431
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2432
    .local v0, "datatime":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2434
    .local v3, "timeArray":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2435
    .local v1, "formatTime":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public changeAppnameTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    const/4 v2, 0x7

    if-ge p2, v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DROP TABLE appname"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v2, "CREATE TABLE IF NOT EXISTS appname (_id INTEGER PRIMARY KEY,uid INTEGER,selected INTEGER,packagename VARCHAR,apptype VARCHAR,pername VARCHAR,name VARCHAR,isupload INTEGER,trusted INTEGER,suggest INTEGER)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v2, "delete from safe_log_tariff"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    const-string v2, "delete from safe_log_privacy"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    const-string v2, "tariff_logs"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "privacy_logs"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firstBoot"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    const-string v2, "tariff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    const-string v2, "tariff"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    :cond_0
    const-string v2, "accessPInformation"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    const-string v2, "accessPInformation"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public deleSafeMode()V
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 521
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 522
    const-string v1, "delete from whiteperson"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 523
    const-string v1, "delete from smslist"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 524
    const-string v1, "delete from calllist"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 525
    const-string v1, "delete from safe_log_harass"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 527
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 529
    return-void
.end method

.method public deleteAllCall()V
    .locals 2

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1914
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1916
    const-string v1, "delete from  calllist"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1919
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1920
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1921
    return-void
.end method

.method public deleteApp(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hideType"    # I

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1555
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from hide_apps where packagename=? and hidetype=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1558
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1559
    return-void
.end method

.method public deleteCall(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1924
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1925
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from  calllist where _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1926
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1927
    return-void
.end method

.method public deleteCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1931
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from  calllist where phonenumber=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1933
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1934
    return-void
.end method

.method public deleteCall(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1901
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1902
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1903
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 1904
    .local v0, "call":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "delete from  calllist where _id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1907
    .end local v0    # "call":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1908
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1909
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1910
    return-void
.end method

.method public deleteDbForUninstall(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 990
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 991
    .local v2, "uid":I
    const-string v3, "select uid from appname where packagename = ?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 994
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    const-string v3, "uid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 997
    :cond_0
    if-eqz v2, :cond_1

    .line 998
    const-string v3, "delete from appname where uid =?"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1003
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1004
    return-void
.end method

.method public deleteHarassLog(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1216
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from safe_log_harass where _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1219
    return-void
.end method

.method public deleteLogForTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1209
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1212
    return-void
.end method

.method public deleteLogForTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1374
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where type=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1377
    return-void
.end method

.method public deleteLogForTableName(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabelName"    # Ljava/lang/String;

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1146
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1148
    return-void
.end method

.method public deleteLogItemsforTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1175
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where log_selected=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1177
    return-void
.end method

.method public deleteLogItemsforTable(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1180
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1181
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1183
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 1194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1197
    :goto_0
    return-void

    .line 1186
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SafeLog;

    .line 1187
    .local v3, "log":Lcom/lenovo/safecenter/support/SafeLog;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where _id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v3, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1191
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1190
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1194
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method public deletePkgFormDb()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1009
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1016
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from appname where pername=?"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    const-string v1, "delete from appname where pername=?"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1022
    return-void
.end method

.method public deletePwd(Ljava/lang/String;)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 569
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from passwordNew where pwd=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 572
    return-void
.end method

.method public deleteSms(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2151
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2153
    const-string v1, "delete from  smslist"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2161
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2162
    return-void

    .line 2157
    :cond_0
    const-string v1, "delete from  smslist where _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deleteSms(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2165
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from  smslist where phonenumber=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2170
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2171
    return-void
.end method

.method public deleteSms(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2138
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    .line 2141
    .local v2, "sms":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "delete from  smslist where _id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2144
    .end local v2    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2146
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2147
    return-void
.end method

.method public deleteSmsByNo(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2174
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2175
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2177
    .local v2, "number":Ljava/lang/String;
    const-string v3, "delete from  smslist where phonenumber=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2180
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2182
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2183
    return-void
.end method

.method public deleteUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 539
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from uids where uid=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 541
    return-void
.end method

.method public deleteWhite(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1781
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from  whiteperson where _id =?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1783
    return-void
.end method

.method public deleteWhite(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1786
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1787
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1788
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 1789
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "delete from  whiteperson where _id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1792
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1793
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1794
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1795
    return-void
.end method

.method public deleteWhiteLog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2224
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 2227
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteCall(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteSms(Ljava/lang/String;)V

    goto :goto_0

    .line 2230
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    return-void
.end method

.method public delinfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2100
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2101
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2102
    const-string v1, "delete from calllist where phonenumber=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2104
    const-string v1, "delete from smslist where phonenumber=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2106
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2108
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2110
    return-void
.end method

.method public enableNohideApp(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1594
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1595
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select * from hide_apps where packagename=?"

    new-array v5, v6, [Ljava/lang/String;

    aput-object p1, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1597
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1598
    iget-object v4, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/lenovo/safecenter/support/CMDHelper;->enableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1599
    const-string v4, "delete from hide_apps where packagename=?"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    :cond_0
    const-string v0, ""

    .line 1606
    .local v0, "cmd":Ljava/lang/String;
    const-string v4, "select * from hide_apps where hidetype=1"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1607
    .local v3, "gcursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pm enable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1610
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1611
    const-string v4, "delete from hide_apps where hidetype=1"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1613
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1614
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1615
    return-void
.end method

.method public enableNohideApps(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pkgnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1618
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1620
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1621
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1622
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1623
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, "select * from hide_apps where packagename=?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v5, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1625
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1626
    new-instance v3, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v3}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 1627
    .local v3, "info":Lcom/lenovo/safecenter/support/AppInfo;
    iput-object v5, v3, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 1628
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    const-string v6, "delete from hide_apps where packagename=?"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    .end local v3    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1635
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1636
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1637
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1639
    iget-object v6, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->enableApps(Landroid/content/Context;Ljava/util/List;)Z

    .line 1640
    return-void
.end method

.method public expertSuggest(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onekeyconfig"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "applist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v10, 0x1

    .line 2770
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2771
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2772
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2774
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 2805
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2806
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2808
    :goto_0
    return-void

    .line 2777
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 2779
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    if-nez p3, :cond_2

    if-nez p3, :cond_1

    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-eq v6, v10, :cond_1

    .line 2780
    :cond_2
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/database/AppUtil;->getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 2781
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 2782
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 2795
    :goto_2
    const-string v6, "update appname set selected=? where packagename=? and apptype=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2802
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2803
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2805
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2806
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2784
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v7, "sendmessage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2785
    const/4 v6, 0x2

    iput v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2805
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2806
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6

    .line 2787
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_4
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v7, "privacy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2788
    const/4 v6, 0x1

    iput v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_2

    .line 2790
    :cond_5
    const/4 v6, 0x0

    iput v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_2

    .line 2801
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2805
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2806
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method public getAllApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1501
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const-string v7, "select * from appname"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1503
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1505
    :cond_0
    const-string v7, "packagename"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1507
    .local v4, "pkgname":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1508
    const-string v7, "trusted"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1509
    .local v5, "trusted":I
    const-string v7, "uid"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1510
    .local v6, "uid":I
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 1511
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iput-object v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 1512
    iput v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 1513
    iput v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 1514
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v5    # "trusted":I
    .end local v6    # "uid":I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1518
    .end local v4    # "pkgname":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1519
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1521
    return-object v3
.end method

.method public getAllCall()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1837
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1838
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1839
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select *  from calllist  order by addtime desc "

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1841
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1842
    new-instance v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 1843
    .local v0, "call":Lcom/lenovo/safecenter/support/Contract;
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 1844
    const-string v4, "phonenumber"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1846
    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 1847
    const-string v4, "calltype"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1848
    const-string v4, "addtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1849
    const-string v4, "isread"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 1850
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setFromtype(I)V

    .line 1851
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1853
    .end local v0    # "call":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1854
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1855
    return-object v3
.end method

.method public getAllPermDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 789
    const-string v2, ""

    .line 790
    .local v2, "des":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 791
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select pername from appname where packagename=? and apptype=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 795
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/lenovo/safecenter/database/AppUtil;->getPerDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->removeSameString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 803
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 804
    return-object v2
.end method

.method public getAllTrustedUids()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2733
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2734
    .local v2, "uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2735
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select uid from appname where trusted=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2737
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2738
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2740
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2741
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2742
    return-object v2
.end method

.method public getAllWhiteContract()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1662
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1664
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select * from whiteperson  order by addtime desc "

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1666
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1667
    new-instance v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v3}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 1668
    .local v3, "white":Lcom/lenovo/safecenter/support/Contract;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 1669
    const-string v4, "phonenumber"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1671
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 1672
    const-string v4, "addtime"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1673
    const-string v4, "realnumber"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 1675
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1677
    .end local v3    # "white":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1678
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1680
    return-object v2
.end method

.method public getAppPerInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppPerInfo;
    .locals 12
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 2531
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2532
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "select *  from appname  where packagename=?"

    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2544
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 2545
    .local v3, "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    const-string v4, ""

    .line 2547
    .local v4, "oldPkgname":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2548
    const-string v7, "apptype"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2549
    .local v0, "apptype":Ljava/lang/String;
    const-string v7, "packagename"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2552
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2553
    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 2554
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 2555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    .line 2557
    const-string v7, "appmes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==totaldmes=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==select=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "selected"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    const-string v7, "selected"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 2567
    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2569
    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 2570
    const-string v7, "appmes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 2578
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    goto/16 :goto_0

    .line 2581
    :cond_1
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 2582
    iput-object v0, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    goto/16 :goto_0

    .line 2584
    :cond_2
    const-string v7, "selected"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 2585
    iput-boolean v10, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    .line 2586
    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2588
    iget-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 2589
    const-string v7, "appmes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 2597
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    goto/16 :goto_0

    .line 2600
    :cond_3
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 2601
    iput-object v0, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    goto/16 :goto_0

    .line 2607
    :cond_4
    move-object v4, v5

    .line 2608
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2609
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Lcom/lenovo/safecenter/support/AppPerInfo;

    .end local v3    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    invoke-direct {v3}, Lcom/lenovo/safecenter/support/AppPerInfo;-><init>()V

    .line 2610
    .restart local v3    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    iput-object v5, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    .line 2611
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 2612
    iput-object v0, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    .line 2613
    const-string v7, "isupload"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    .line 2616
    const-string v7, "trusted"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 2617
    iput-boolean v10, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    .line 2619
    :cond_5
    const-string v7, "selected"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    .line 2620
    iget v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 2621
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2623
    :cond_6
    const-string v7, "selected"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 2624
    iput-boolean v10, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    .line 2626
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 2627
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 2629
    :cond_8
    const-string v7, "appmes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2632
    .end local v0    # "apptype":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2633
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2634
    return-object v3
.end method

.method public getAppPers(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppPerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2440
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2441
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppPerInfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2442
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, "select *  from appname order by trusted desc, uid"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2452
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 2454
    .local v4, "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    const/4 v7, 0x0

    .line 2456
    .local v7, "oldUid":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2457
    const-string v11, "apptype"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "apptype":Ljava/lang/String;
    const-string v11, "packagename"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2459
    .local v8, "pkgName":Ljava/lang/String;
    const-string v11, "uid"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2461
    .local v10, "uid":I
    const-string v11, "com.lenovo.safecenter"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2467
    if-ne v7, v10, :cond_3

    .line 2468
    :try_start_0
    iget-object v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_0

    .line 2469
    iget v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 2470
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    .line 2472
    const-string v11, "selected"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1

    .line 2474
    iget-object v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2475
    iget-object v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_1

    .line 2476
    const-string v11, "appmes"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "==index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 2480
    iget v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 2488
    :cond_1
    :goto_1
    const-string v11, "selected"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 2489
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    .line 2490
    const/4 v11, 0x1

    iput v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->isTurstInt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2521
    :catch_0
    move-exception v3

    .line 2522
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2483
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iput-object v0, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 2484
    iget v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v4, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    goto :goto_1

    .line 2496
    :cond_3
    move v7, v10

    .line 2497
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 2498
    .local v9, "sb":Ljava/lang/StringBuffer;
    new-instance v5, Lcom/lenovo/safecenter/support/AppPerInfo;

    invoke-direct {v5}, Lcom/lenovo/safecenter/support/AppPerInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2499
    .end local v4    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .local v5, "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    :try_start_2
    iput-object v8, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    .line 2500
    iget v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 2501
    iput-object v0, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    .line 2502
    const-string v11, "isupload"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    .line 2504
    const-string v11, "trusted"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 2505
    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    .line 2506
    const/4 v11, 0x1

    iput v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->isTurstInt:I

    .line 2508
    :cond_4
    const-string v11, "selected"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_5

    .line 2509
    iget v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 2510
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2512
    :cond_5
    const-string v11, "selected"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    .line 2513
    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    .line 2515
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 2516
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 2518
    :cond_7
    const-string v11, "appmes"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v5, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .end local v5    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .restart local v4    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    goto/16 :goto_0

    .line 2525
    .end local v0    # "apptype":Ljava/lang/String;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "uid":I
    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2526
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2527
    return-object v6

    .line 2521
    .end local v4    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .restart local v0    # "apptype":Ljava/lang/String;
    .restart local v5    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "uid":I
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .restart local v4    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    goto/16 :goto_2
.end method

.method public getAppTrusted(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2890
    const/4 v2, 0x0

    .line 2891
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2892
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select trusted from appname where packagename=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2894
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2895
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2897
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2898
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2899
    return v2
.end method

.method public getAppUploadinfo(Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppUploadInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1349
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 1350
    .local v2, "info":Lcom/lenovo/safecenter/support/AppUploadInfo;
    const-string v3, "db"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getAppUploadinfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v3, "select * from appuploadinfo where pkgname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1354
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1356
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1357
    new-instance v2, Lcom/lenovo/safecenter/support/AppUploadInfo;

    .end local v2    # "info":Lcom/lenovo/safecenter/support/AppUploadInfo;
    invoke-direct {v2}, Lcom/lenovo/safecenter/support/AppUploadInfo;-><init>()V

    .line 1358
    .restart local v2    # "info":Lcom/lenovo/safecenter/support/AppUploadInfo;
    const-string v3, "appname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setAppName(Ljava/lang/String;)V

    .line 1359
    const-string v3, "packagesha1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setPackagesha1(Ljava/lang/String;)V

    .line 1361
    const-string v3, "path"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setPath(Ljava/lang/String;)V

    .line 1362
    const-string v3, "certmd5"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setCertmd5(Ljava/lang/String;)V

    .line 1363
    const-string v3, "version"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setVersion(Ljava/lang/String;)V

    .line 1364
    const-string v3, "pkgname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setPkgName(Ljava/lang/String;)V

    .line 1365
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/AppUploadInfo;->setId(I)V

    .line 1367
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1368
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1369
    return-object v2
.end method

.method public getApp_isupload(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 678
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 679
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 680
    .local v2, "isupload":I
    const-string v3, "select isupload from appname where packagename=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 683
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 687
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 688
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 689
    return v2
.end method

.method public getAppperms(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "pkgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2904
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2905
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2906
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select apptype, selected from appname where packagename=? group by apptype"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2908
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2909
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2913
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2914
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2915
    return-object v2
.end method

.method public getAppsNum()[I
    .locals 10

    .prologue
    const/4 v5, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2869
    new-array v3, v5, [I

    .line 2870
    .local v3, "nums":[I
    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "sendmessage"

    aput-object v5, v4, v8

    const-string v5, "call_phone"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const-string v6, "privacy"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "location"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "device"

    aput-object v6, v4, v5

    .line 2872
    .local v4, "types":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2873
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 2874
    const-string v5, "select * from appname where apptype=? and trusted=0 group by uid"

    new-array v6, v9, [Ljava/lang/String;

    aget-object v7, v4, v2

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2876
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    aput v5, v3, v2

    .line 2877
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2873
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2880
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2881
    return-object v3
.end method

.method public getCallByNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1860
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1862
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select *  from calllist where  phonenumber=? order by addtime desc "

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1866
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1867
    new-instance v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 1868
    .local v0, "call":Lcom/lenovo/safecenter/support/Contract;
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 1869
    const-string v4, "phonenumber"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1871
    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 1872
    const-string v4, "calltype"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1873
    const-string v4, "addtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1874
    const-string v4, "isread"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 1875
    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/support/Contract;->setFromtype(I)V

    .line 1876
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1878
    .end local v0    # "call":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1879
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1880
    return-object v3
.end method

.method public getFilterApp()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2638
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2639
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2640
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select uid,pername,selected,apptype,trusted from  appname order by uid"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2644
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2645
    new-instance v2, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 2646
    .local v2, "info":Lcom/lenovo/safecenter/support/AppInfo;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 2647
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 2648
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 2649
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 2650
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 2652
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2654
    .end local v2    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2655
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2656
    return-object v3
.end method

.method public getFilterMap()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2660
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2661
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2662
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2663
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;>;"
    const/4 v3, 0x0

    .line 2664
    .local v3, "info":Lcom/lenovo/safecenter/support/AppInfo;
    const/4 v2, 0x0

    .line 2665
    .local v2, "i":I
    const/4 v6, 0x0

    .line 2666
    .local v6, "oldUid":I
    const-string v7, "select uid,packagename,pername,selected,apptype,trusted from  appname order by uid"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2669
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2670
    add-int/lit8 v2, v2, 0x1

    .line 2671
    new-instance v3, Lcom/lenovo/safecenter/support/AppInfo;

    .end local v3    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    invoke-direct {v3}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 2672
    .restart local v3    # "info":Lcom/lenovo/safecenter/support/AppInfo;
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v3, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 2673
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 2674
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 2675
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v3, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 2676
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 2680
    iget v7, v3, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    if-eq v6, v7, :cond_2

    .line 2681
    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2682
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2683
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2686
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2687
    iget v6, v3, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 2692
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v2, v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 2693
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2690
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2697
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2698
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2699
    return-object v5
.end method

.method public getFirstHarassTime(Ljava/lang/String;)J
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2385
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2386
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 2387
    .local v2, "time":J
    const-string v4, "select * from safe_log_harass where type=? order by _id desc limit 1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2390
    .local v0, "cLogs":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2391
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2394
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2395
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2396
    return-wide v2
.end method

.method public getFirstLog(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafeLog;
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 2360
    const/4 v2, 0x0

    .line 2361
    .local v2, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2362
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where action=1 order by _id desc limit 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2365
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2366
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    .end local v2    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2367
    .restart local v2    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    const-string v3, "packagename"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 2369
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 2370
    const-string v3, "pername"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 2372
    const-string v3, "time"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2373
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2374
    const-string v3, "log_selected"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 2378
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2379
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2381
    return-object v2
.end method

.method public getHarassLogCount()I
    .locals 5

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1223
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select _id from safe_log_harass "

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1224
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1225
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1226
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1227
    return v0
.end method

.method public getHarassLogCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1232
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select _id from safe_log_harass where type=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1235
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1236
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1237
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1238
    return v0
.end method

.method public getInWhiteCall(Ljava/lang/String;)I
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1734
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1735
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from whiteperson  where  realnumber=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1738
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1740
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1741
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1743
    return v0
.end method

.method public getIncomcount(Ljava/lang/String;)I
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 295
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from harassphone where phonenumber=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 298
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 299
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    const-string v3, "harasscount"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 303
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 304
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 305
    return v0
.end method

.method public getLastHarassLog(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafeLog;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1270
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1271
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from safe_log_harass where type=? order by _id desc limit 1"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1276
    .local v0, "cLogs":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1278
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1279
    const/4 v2, 0x0

    .line 1296
    :goto_0
    return-object v2

    .line 1281
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1283
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 1284
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 1285
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 1286
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 1287
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 1288
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 1289
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->mms_type:Ljava/lang/String;

    .line 1290
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 1291
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 1292
    const-string v3, "fromtype"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    .line 1293
    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->hassee:I

    .line 1294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1295
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public getLastTariffLog()Lcom/lenovo/safecenter/support/SafeLog;
    .locals 5

    .prologue
    .line 2746
    const/4 v2, 0x0

    .line 2747
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2748
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from safe_log_tariff order by _id desc"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2750
    .local v0, "cLogs":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2751
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    .end local v2    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2752
    .restart local v2    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    const-string v3, "number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 2753
    const-string v3, "time"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2754
    const-string v3, "content"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 2755
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2758
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2759
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2760
    return-object v2
.end method

.method public getLog(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2324
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, ""

    .line 2325
    .local v6, "time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select * from  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " order by time desc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2327
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2328
    const-string v7, "pername"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2329
    .local v5, "pername":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2330
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2331
    .local v2, "info":Lcom/lenovo/safecenter/support/SafeLog;
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 2332
    const-string v7, "packagename"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 2334
    const-string v7, "action"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 2335
    const-string v7, "name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 2336
    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 2337
    const-string v7, "time"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2338
    const-string v7, "content"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 2339
    const-string v7, "number"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 2340
    const-string v7, "type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2341
    const-string v7, "log_selected"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 2343
    iget-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/safecenter/database/AppDatabase;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2344
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2346
    :cond_1
    new-instance v4, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v4}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2347
    .local v4, "logDate":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v7, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/safecenter/database/AppDatabase;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2348
    iput-object v6, v4, Lcom/lenovo/safecenter/support/SafeLog;->logDay:Ljava/lang/String;

    .line 2349
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2350
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2354
    .end local v2    # "info":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v4    # "logDate":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v5    # "pername":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2355
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2356
    return-object v3
.end method

.method public getNotReadCallCount()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1886
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1887
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select *  from calllist where  isread=?  "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1890
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1891
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1892
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1893
    if-lez v0, :cond_0

    .line 1896
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public getNotReadSms(I)I
    .locals 7
    .param p1, "isread"    # I

    .prologue
    .line 2199
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2201
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select _id from smslist where isread=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2203
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2204
    .local v0, "count":I
    const-string v3, "count"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNotReadSms=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2206
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2207
    return v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReceiveSmsPkgs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 942
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select packagename from appname where pername=? order by uid"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.permission.RECEIVE_SMS"

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 947
    .local v0, "cApps":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 948
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 949
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 956
    .end local v0    # "cApps":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 957
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 960
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 952
    .restart local v0    # "cApps":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getRecentLogs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2233
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2234
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    .local v4, "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    const-string v5, "select count(*) as ss ,* from safe_log_privacy where packagename=? and action=\'0\' group by type UNION ALL select count(*) as ss, * from safe_log_tariff where packagename=? and action=\'0\' group by type order by _id desc"

    new-array v6, v8, [Ljava/lang/String;

    aput-object p1, v6, v7

    aput-object p1, v6, v9

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2240
    .local v0, "aLogs":Landroid/database/Cursor;
    const-string v5, "select count(*) as ss ,* from safe_log_privacy where packagename=? and action=\'1\' group by type UNION ALL select count(*) as ss, * from safe_log_tariff where packagename=? and action=\'1\' group by type order by _id desc"

    new-array v6, v8, [Ljava/lang/String;

    aput-object p1, v6, v7

    aput-object p1, v6, v9

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2269
    .local v1, "dLogs":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2270
    new-instance v3, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v3}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2271
    .local v3, "log":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 2272
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 2273
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 2274
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 2275
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 2276
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 2277
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2278
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 2279
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 2280
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 2281
    const/16 v5, 0xb

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2282
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2284
    .end local v3    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2285
    new-instance v3, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v3}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2286
    .restart local v3    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 2287
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 2288
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 2289
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 2290
    const/4 v5, 0x5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 2291
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 2292
    const/4 v5, 0x7

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2293
    const/16 v5, 0x8

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 2294
    const/16 v5, 0x9

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 2295
    const/16 v5, 0xa

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 2296
    const/16 v5, 0xb

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2297
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2300
    .end local v3    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    new-instance v5, Lcom/lenovo/safecenter/database/AppDatabase$1;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/database/AppDatabase$1;-><init>(Lcom/lenovo/safecenter/database/AppDatabase;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2309
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2310
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2311
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2312
    return-object v4
.end method

.method public getSendsmsAppSelect(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppInfo;
    .locals 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "pername"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1644
    const/4 v0, 0x0

    .line 1645
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1646
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select selected, name from appname where packagename=? and pername=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1650
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1651
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 1652
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 1653
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 1655
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1656
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1657
    return-object v0
.end method

.method public getSignCount()I
    .locals 5

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 408
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select _id from signcall order by _id desc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 410
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 411
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 413
    return v0
.end method

.method public getSignList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 385
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select * from signcall order by _id desc"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 387
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-direct {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;-><init>()V

    .line 390
    .local v2, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    const-string v4, "phonenumber"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setNumber(Ljava/lang/String;)V

    .line 392
    const-string v4, "addtime"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setAddTime(Ljava/lang/String;)V

    .line 393
    const-string v4, "bigtype"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setbType(I)V

    .line 394
    const-string v4, "smalltype"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setsType(I)V

    .line 395
    const-string v4, "calltotal"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setTotalCall(I)V

    .line 396
    const-string v4, "isupload"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setIsUpload(I)V

    .line 397
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setId(I)V

    .line 398
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    .end local v2    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 402
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 403
    return-object v3
.end method

.method public getTappingLogs(J)Ljava/util/List;
    .locals 7
    .param p1, "curtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2704
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2705
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2706
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from safe_log_privacy where log_selected=1 and time>=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "order by time desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2710
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2711
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2712
    .local v2, "info":Lcom/lenovo/safecenter/support/SafeLog;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 2713
    const-string v4, "packagename"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 2715
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 2716
    const-string v4, "pername"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 2717
    const-string v4, "time"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2718
    const-string v4, "type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2719
    const-string v4, "action"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 2721
    const-string v4, "tap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2726
    .end local v2    # "info":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2727
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2729
    return-object v3
.end method

.method public getTopThreeLogs(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2402
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order by _id desc limit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2404
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2405
    const-string v5, "pername"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2406
    .local v3, "pername":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2407
    new-instance v4, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v4}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 2408
    .local v4, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    const-string v5, "packagename"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 2410
    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 2411
    iput-object v3, v4, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 2412
    const-string v5, "action"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 2413
    const-string v5, "time"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 2414
    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 2415
    const-string v5, "log_selected"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 2418
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2422
    .end local v3    # "pername":Ljava/lang/String;
    .end local v4    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2423
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2424
    return-object v2
.end method

.method public getTrustedApps(Ljava/lang/String;)I
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1397
    const/4 v0, 0x0

    .line 1398
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1399
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from appname where trusted=? group by uid"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1411
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1412
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1413
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1418
    return v0
.end method

.method public getUid(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1026
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 1027
    .local v2, "uid":I
    const-string v3, "select uid from appname where packagename = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1030
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1031
    const-string v3, "uid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1033
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1034
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1035
    return v2
.end method

.method public getWhiteContract(I)Lcom/lenovo/safecenter/support/Contract;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1685
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from whiteperson  where  _id=? order by addtime desc "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1689
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1690
    .local v2, "white":Lcom/lenovo/safecenter/support/Contract;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1691
    new-instance v2, Lcom/lenovo/safecenter/support/Contract;

    .end local v2    # "white":Lcom/lenovo/safecenter/support/Contract;
    invoke-direct {v2}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 1692
    .restart local v2    # "white":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 1693
    const-string v3, "phonenumber"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1695
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 1696
    const-string v3, "addtime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1697
    const-string v3, "realnumber"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    goto :goto_0

    .line 1700
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1701
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1703
    return-object v2
.end method

.method public getWhiteContract(Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1707
    new-instance v2, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    .line 1708
    .local v2, "utils":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    invoke-virtual {v2, p1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1709
    invoke-virtual {v2, p1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1711
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1712
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from whiteperson  where  PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',0) order by addtime desc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1715
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1716
    .local v3, "white":Lcom/lenovo/safecenter/support/Contract;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1717
    new-instance v3, Lcom/lenovo/safecenter/support/Contract;

    .end local v3    # "white":Lcom/lenovo/safecenter/support/Contract;
    invoke-direct {v3}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 1718
    .restart local v3    # "white":Lcom/lenovo/safecenter/support/Contract;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 1719
    const-string v4, "phonenumber"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1721
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 1722
    const-string v4, "addtime"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1723
    const-string v4, "realnumber"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    goto :goto_0

    .line 1726
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1727
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1729
    return-object v3
.end method

.method public getWhiteSmsCount()I
    .locals 5

    .prologue
    .line 2211
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2213
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select _id  from smslist "

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2214
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2215
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2216
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2217
    return v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getwhiteSms()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1985
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1987
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 1988
    .local v2, "cursor_max":Landroid/database/Cursor;
    const-string v6, "select phonenumber,count(*) as smscount from smslist  group by phonenumber "

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1992
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1993
    new-instance v5, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v5}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 1995
    .local v5, "sms":Lcom/lenovo/safecenter/support/Contract;
    const-string v6, "phonenumber"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1997
    const-string v6, "smscount"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setCount(I)V

    .line 1999
    const-string v6, "select  * from smslist where phonenumber=? order by addtime desc limit 1 "

    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2004
    if-eqz v2, :cond_1

    .line 2005
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2006
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 2007
    const-string v6, "smscontent"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 2009
    const-string v6, "name"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 2010
    const-string v6, "smstype"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 2012
    const-string v6, "addtime"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 2014
    const-string v6, "isread"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 2015
    invoke-virtual {v5, v9}, Lcom/lenovo/safecenter/support/Contract;->setFromtype(I)V

    .line 2016
    const-string v6, "select  _id from smslist where phonenumber=? and isread=? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, "1"

    aput-object v8, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2020
    .local v1, "cursor_count":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2022
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iput v6, v5, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    .line 2023
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2026
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2028
    .end local v1    # "cursor_count":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2034
    .end local v5    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2035
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2037
    return-object v4
.end method

.method public getwhiteSmsByNumbers(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 2041
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2043
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v6}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    .line 2044
    .local v6, "utils":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2045
    .local v4, "number":Ljava/lang/String;
    const-string v7, "select *  from smslist where phonenumber=? order by addtime desc "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2049
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2050
    new-instance v5, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v5}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 2051
    .local v5, "sms":Lcom/lenovo/safecenter/support/Contract;
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 2052
    const-string v7, "phonenumber"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 2054
    const-string v7, "smscontent"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 2056
    const-string v7, "name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 2057
    const-string v7, "smstype"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 2058
    const-string v7, "addtime"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 2059
    const-string v7, "isread"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 2060
    invoke-virtual {v5, v9}, Lcom/lenovo/safecenter/support/Contract;->setFromtype(I)V

    .line 2061
    iget-object v7, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-virtual {v6, v5, v7}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->backToSms(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)V

    .line 2062
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2064
    .end local v5    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2067
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2068
    return-object v3
.end method

.method public getwhiteSmsInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2073
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2075
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select *  from smslist where phonenumber=? order by addtime asc "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2079
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2080
    new-instance v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v3}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 2081
    .local v3, "sms":Lcom/lenovo/safecenter/support/Contract;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 2082
    const-string v4, "phonenumber"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 2084
    const-string v4, "smscontent"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 2086
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 2087
    const-string v4, "smstype"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 2088
    const-string v4, "addtime"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 2089
    const-string v4, "isread"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 2090
    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/support/Contract;->setFromtype(I)V

    .line 2091
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2093
    .end local v3    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2094
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2095
    return-object v2
.end method

.method public healthCheckPermission(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2811
    .local p2, "applist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v1, 0x0

    .line 2812
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2813
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2814
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2816
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 2817
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2848
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v7, 0x0

    .line 2853
    :goto_0
    return v7

    .line 2819
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 2820
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/database/AppUtil;->getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 2821
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_2

    .line 2822
    iget v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_1

    .line 2823
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2826
    :cond_2
    iget v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v7, :cond_1

    .line 2827
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2843
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2847
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2848
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2851
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    const/16 v7, 0x64

    if-le v1, v7, :cond_4

    .line 2852
    const/16 v1, 0x64

    :cond_4
    move v7, v1

    .line 2853
    goto :goto_0

    .line 2844
    :catch_0
    move-exception v3

    .line 2845
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2847
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2848
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 2847
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2848
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7
.end method

.method public insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I
    .locals 8
    .param p1, "app"    # Lcom/lenovo/safecenter/support/AppInfo;
    .param p2, "hideType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1535
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1536
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select * from hide_apps where packagename=? and hidetype=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-object v6, p1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1539
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1540
    const-string v4, "insert into hide_apps(packagename, appname, hidetype) values(?,?,?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v3, p1, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1545
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1550
    :goto_0
    return v2

    .line 1548
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1549
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v3

    .line 1550
    goto :goto_0
.end method

.method public insertApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/lenovo/safecenter/support/AppInfo;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "app"    # Lcom/lenovo/safecenter/support/AppInfo;

    .prologue
    .line 658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 659
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "uid"

    iget v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v1, "name"

    iget-object v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v1, "selected"

    iget v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    const-string v1, "packagename"

    iget-object v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v1, "apptype"

    iget-object v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "pername"

    iget-object v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v1, "trusted"

    iget v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 666
    const-string v1, "isupload"

    iget v2, p2, Lcom/lenovo/safecenter/support/AppInfo;->isupload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    const-string v1, "appname"

    const-string v2, "name"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 668
    return-void
.end method

.method public insertAppUpload(Lcom/lenovo/safecenter/support/AppUploadInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/lenovo/safecenter/support/AppUploadInfo;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1323
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1324
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppUploadinfo(Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppUploadInfo;

    move-result-object v0

    .line 1325
    .local v0, "AppInfo":Lcom/lenovo/safecenter/support/AppUploadInfo;
    const-string v2, "db"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "insertAppUpload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    if-nez v0, :cond_0

    .line 1327
    const-string v2, "insert into appuploadinfo(appname,version,packagesha1,pkgname,path,certmd5) values(?,?,?,?,?,?)"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPackagesha1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getCertmd5()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1340
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1341
    return-void

    .line 1334
    :cond_0
    const-string v2, "update appuploadinfo set appname=?,version=?,certmd5=?,path=?,packagesha1=? where pkgname=?"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getCertmd5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPackagesha1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public insertCall(Lcom/lenovo/safecenter/support/Contract;)V
    .locals 5
    .param p1, "call"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1961
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "insert into calllist(name ,phonenumber ,calltype ,addtime,isread) values(?,?,?,?,?)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getIsRead()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1965
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1966
    return-void
.end method

.method public insertCall(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1970
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1971
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 1972
    .local v0, "call":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "insert into calllist(name ,phonenumber ,calltype,addtime,isread) values(?,?,?,?,?)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getIsRead()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1978
    .end local v0    # "call":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1979
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1980
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1981
    return-void
.end method

.method public insertContract(Lcom/lenovo/safecenter/support/Contract;)V
    .locals 6
    .param p1, "con"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1749
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "insert into whiteperson(phonenumber,name,addtime,realnumber) values(?,?,?,?)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1754
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1755
    return-void
.end method

.method public insertContract(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1758
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1761
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1762
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1763
    new-instance v2, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    .line 1764
    .local v2, "help":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 1765
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1766
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 1768
    :cond_1
    const-string v4, "insert into whiteperson(phonenumber,name,addtime,realnumber)  values(?,?,?,?)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1774
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1775
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1776
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public insertHarassLog(Lcom/lenovo/safecenter/support/SafeLog;)V
    .locals 4
    .param p1, "safeLog"    # Lcom/lenovo/safecenter/support/SafeLog;

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1130
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1131
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "type"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v2, "time"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v2, "log_selected"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v2, "number"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v2, "content"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v2, "isupload"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    const-string v2, "mms_type"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->mms_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v2, "hassee"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->hassee:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    const-string v2, "fromtype"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1140
    const-string v2, "safe_log_harass"

    const-string v3, "name"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1142
    return-void
.end method

.method public insertHarassPhone(Ljava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 270
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from harassphone where phonenumber=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 273
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    const-string v3, "harasscount"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 277
    .local v0, "count":I
    const-string v3, "update harassphone set harasscount=?,addtime=? where phonenumber=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .end local v0    # "count":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 291
    return-void

    .line 282
    :cond_1
    const-string v3, "insert into harassphone(phonenumber,harasscount,addtime) values(?,?,?)"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public insertLog(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V
    .locals 4
    .param p1, "safeLog"    # Lcom/lenovo/safecenter/support/SafeLog;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1104
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1105
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "name"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v2, "pername"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v2, "time"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v2, "packagename"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v2, "action"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    const-string v2, "log_selected"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    const-string v2, "number"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v2, "content"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v2, "isupload"

    iget v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    const-string v2, "type"

    iget-object v3, p1, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string v2, "name"

    invoke-virtual {v0, p2, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1117
    return-void
.end method

.method public insertPwdQuestionAndAnswer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "question"    # Ljava/lang/String;
    .param p3, "answer"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 604
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 605
    const-string v1, "insert into passwordNew(pwd,pwdQuestion,pwdAnswer) values(?,?,?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 609
    return-void
.end method

.method public insertPwdQuestionAndAnswer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "question"    # Ljava/lang/String;
    .param p3, "answer"    # Ljava/lang/String;
    .param p4, "appCheck"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 615
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 616
    const-string v1, "insert into passwordNew(pwd,pwdQuestion,pwdAnswer) values(?,?,?,?)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 620
    return-void
.end method

.method public insertSms(Lcom/lenovo/safecenter/support/Contract;)V
    .locals 5
    .param p1, "sms"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2114
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "insert into smslist(name ,phonenumber ,smstype ,smscontent,addtime,isread) values(?,?,?,?,?,?)"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getIsRead()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2119
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2120
    return-void
.end method

.method public insertSms(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2123
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2124
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    .line 2126
    .local v2, "sms":Lcom/lenovo/safecenter/support/Contract;
    const-string v3, "insert into smslist(name ,phonenumber ,smstype ,smscontent,addtime,isread) values(?,?,?,?,?,?)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getIsRead()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2132
    .end local v2    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2135
    return-void
.end method

.method public insertUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 533
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "insert into uids(uid) values(?)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 535
    return-void
.end method

.method public isAppTrusted(ILjava/lang/String;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1449
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1450
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select trusted from appname where uid=?"

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1462
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1463
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1464
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1465
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1472
    :goto_0
    return v2

    .line 1470
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1471
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v3

    .line 1472
    goto :goto_0
.end method

.method public isAppTrusted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1422
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1423
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select trusted from appname where packagename=?"

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1435
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1436
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1437
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1438
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1445
    :goto_0
    return v2

    .line 1443
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1444
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v3

    .line 1445
    goto :goto_0
.end method

.method public isLogFull(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1380
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 1381
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1382
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1383
    .local v8, "count":I
    sget v1, Lcom/lenovo/safecenter/database/AppDatabase;->MAX_LOG_COUNT:I

    if-lt v8, v1, :cond_0

    .line 1384
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1386
    .local v11, "id":I
    move v10, v11

    .local v10, "i":I
    :goto_0
    div-int/lit8 v1, v8, 0x2

    add-int/2addr v1, v11

    if-ge v10, v1, :cond_0

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1386
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1392
    .end local v10    # "i":I
    .end local v11    # "id":I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1394
    return-void
.end method

.method public declared-synchronized loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeName"    # Ljava/lang/String;
    .param p3, "root"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 878
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 879
    .local v9, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 880
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v1, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    if-eqz p3, :cond_1

    .line 883
    const-string v10, "select * from appname where apptype=? and trusted=0 order by selected desc, uid"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 893
    .local v2, "cApps":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 894
    const/4 v10, 0x3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 896
    .local v7, "pkgname":Ljava/lang/String;
    const/16 v10, 0x2000

    :try_start_1
    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 899
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 900
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 901
    invoke-static {v1, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isNotExist(Ljava/util/ArrayList;Lcom/lenovo/safecenter/support/AppInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 902
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 903
    if-eqz p3, :cond_2

    .line 904
    const/4 v10, 0x2

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 907
    :goto_1
    const/4 v10, 0x3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 908
    iput-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 909
    const/4 v10, 0x4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 910
    const/4 v10, 0x5

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 911
    iget-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {p0, p1, v10, v11}, Lcom/lenovo/safecenter/database/AppDatabase;->getAllPermDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->permDes:Ljava/lang/String;

    .line 914
    iget-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/database/AppUtil;->getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 915
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    .line 924
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 927
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 928
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 877
    .end local v1    # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .end local v2    # "cApps":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "pkgname":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 888
    .restart local v1    # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :try_start_3
    const-string v10, "select * from appname where apptype=? order by selected desc, uid"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .restart local v2    # "cApps":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 906
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgname":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    :try_start_4
    iput v10, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 932
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgname":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 933
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 934
    monitor-exit p0

    return-object v1
.end method

.method public loadHarassLog(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1242
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1243
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v3, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    const-string v4, "select * from safe_log_harass where type=? order by _id desc"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1248
    .local v0, "cLogs":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1249
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 1250
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 1251
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 1253
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 1254
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 1255
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 1256
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->mms_type:Ljava/lang/String;

    .line 1257
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 1258
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 1259
    const-string v4, "fromtype"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    .line 1260
    iput v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->hassee:I

    .line 1261
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1264
    .end local v2    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1265
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1266
    return-object v3
.end method

.method public loadLogs(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1041
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v3, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order by _id desc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1045
    .local v0, "cLogs":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1046
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1047
    .local v4, "pername":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1048
    new-instance v2, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/SafeLog;-><init>()V

    .line 1049
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    .line 1050
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    .line 1051
    iput-object v4, v2, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    .line 1052
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 1053
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    .line 1054
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 1055
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    .line 1056
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    .line 1057
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    .line 1058
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 1059
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 1060
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1064
    .end local v2    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v4    # "pername":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1065
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1066
    return-object v3
.end method

.method public loadUnexistApps(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2857
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2858
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2859
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select packagename from appname where suggest<0 group by uid"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2860
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2861
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2865
    :cond_0
    return-object v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 143
    const-string v0, "CREATE TABLE IF NOT EXISTS appname (_id INTEGER PRIMARY KEY,uid INTEGER,selected INTEGER,packagename VARCHAR,apptype VARCHAR,pername VARCHAR,name VARCHAR,isupload INTEGER,trusted INTEGER,suggest INTEGER default -1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "CREATE TABLE IF NOT EXISTS safe_log_tariff (_id INTEGER PRIMARY KEY,name VARCHAR,pername VARCHAR,packagename VARCHAR,action INTEGER,log_selected INTEGER,time VARCHAR,number VARCHAR,content VARCHAR,isupload INTEGER,type VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "CREATE TABLE IF NOT EXISTS safe_log_privacy (_id INTEGER PRIMARY KEY,name VARCHAR,pername VARCHAR,packagename VARCHAR,action INTEGER,log_selected INTEGER,time VARCHAR,number VARCHAR,content VARCHAR,isupload INTEGER,type VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v0, "CREATE TABLE IF NOT EXISTS safe_log_harass (_id INTEGER PRIMARY KEY,type VARCHAR,log_selected INTEGER,time VARCHAR,number VARCHAR,mms_type VARCHAR,content VARCHAR,isupload INTEGER, fromtype INTEGER,hassee INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v0, "CREATE TABLE IF NOT EXISTS password(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "CREATE TABLE IF NOT EXISTS passwordNew(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Lcom/lenovo/safecenter/database/AppDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    const-string v0, "CREATE TABLE IF NOT EXISTS appuploadinfo(_id integer primary key autoincrement,appname varchar,version varchar,path varchar,packagesha1 varchar,pkgname varchar,certmd5 varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string v0, "CREATE TABLE IF NOT EXISTS hide_apps(_id integer primary key autoincrement,packagename varchar,appname varchar,hidetype integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "CREATE TABLE IF NOT EXISTS whiteperson(_id integer primary key autoincrement,phonenumber varchar,name varchar,addtime varchar,realnumber varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "CREATE TABLE IF NOT EXISTS smslist(_id integer primary key autoincrement,name varchar,phonenumber varchar,smstype Integer,smscontent varchar,addtime varchar,isread Integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v0, "CREATE TABLE IF NOT EXISTS calllist(_id integer primary key autoincrement,name varchar,phonenumber varchar,calltype Integer,addtime varchar,isread Integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v0, "CREATE TABLE IF NOT EXISTS trafficCheck(_id integer primary key autoincrement,checktime varchar,sim_subscriber_id varchar,inaccuracy varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v0, "CREATE TABLE IF NOT EXISTS signcall(_id integer primary key autoincrement,phonenumber varchar,bigtype integer,smalltype integer,isupload integer,calltotal integer,addtime varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v0, "CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string v0, "CREATE TABLE IF NOT EXISTS harassphone(_id integer primary key autoincrement,phonenumber varchar,harasscount integer,addtime varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intercall_mode_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 205
    const-string v1, "test"

    const-string v2, "AppDatabase onUpgrade start..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "CREATE TABLE IF NOT EXISTS trafficCheck(_id integer primary key autoincrement,checktime varchar,sim_subscriber_id varchar,inaccuracy varchar)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v1, "CREATE TABLE IF NOT EXISTS signcall(_id integer primary key autoincrement,phonenumber varchar,bigtype integer,smalltype integer,isupload integer,calltotal integer,addtime varchar)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string v1, "CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string v1, "CREATE TABLE IF NOT EXISTS harassphone(_id integer primary key autoincrement,phonenumber varchar,harasscount integer,addtime varchar)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    const/16 v1, 0x9

    move/from16 v0, p2

    if-gt v0, v1, :cond_5

    const-string v12, ""

    const-string v2, "password"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade() oldVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    move/from16 v0, p2

    if-lt v0, v2, :cond_3

    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/String;

    const-string v2, "password"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x1

    aget-object v1, v13, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v13, v2

    sget-object v3, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    :cond_2
    move-object v1, v13

    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_4
    const-string v2, "DROP TABLE password"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE IF NOT EXISTS password(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lenovo/safecenter/database/AppDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {p1}, Lcom/lenovo/safecenter/database/AppDatabase;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "insert into passwordNew(pwd,pwdQuestion,pwdAnswer) values(?,?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_5
    invoke-virtual/range {p0 .. p2}, Lcom/lenovo/safecenter/database/AppDatabase;->changeAppnameTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 215
    const/16 v1, 0xb

    move/from16 v0, p2

    if-ge v0, v1, :cond_7

    .line 216
    const-string v1, "select packagename from appname where trusted=1"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 217
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 218
    const-string v1, "update appname set trusted=1, selected=0 where packagename=? and trusted=0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v1, 0xc

    move/from16 v0, p2

    if-ge v0, v1, :cond_9

    .line 225
    iget-object v1, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 226
    .local v11, "resolver":Landroid/content/ContentResolver;
    const-string v1, "select packagename from appname group by uid"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 227
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 228
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "pkg":Ljava/lang/String;
    invoke-static {v11, v10}, Lcom/lenovo/safecenter/database/AppUtil;->checkPkgExit(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 230
    const-string v1, "update appname set suggest=0 where packagename=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    :cond_8
    const-string v1, "update appname set suggest=-1 where packagename=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    :cond_9
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade end... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public queryAllHideApps(I)Ljava/util/List;
    .locals 10
    .param p1, "hideType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1562
    iget-object v6, p0, Lcom/lenovo/safecenter/database/AppDatabase;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1563
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1564
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v1, "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    const-string v6, "select * from hide_apps where hidetype=?"

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1569
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1570
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 1571
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 1572
    iput p1, v0, Lcom/lenovo/safecenter/support/AppInfo;->hidetype:I

    .line 1573
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2200

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1576
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 1577
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1578
    const/4 v6, 0x1

    iput v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 1581
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1586
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :catch_0
    move-exception v4

    .line 1587
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1590
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 1584
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1585
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public queryAllPermName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v2, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 826
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select pername from appname where packagename=? and apptype=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 830
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 831
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, "pername":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    .end local v3    # "pername":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 835
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 836
    return-object v2
.end method

.method public queryAllPermType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 756
    const-string v3, ""

    .line 758
    .local v3, "types":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 759
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select apptype from appname where packagename=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 771
    .local v1, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "apptype":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 780
    .end local v0    # "apptype":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 781
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 784
    return-object v3
.end method

.method public queryAllPermType(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 741
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v3, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "select apptype from appname where uid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 744
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 745
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "pername":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 747
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    .end local v2    # "pername":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 751
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 752
    return-object v3
.end method

.method public queryAllUids()[I
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 545
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "uids"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 546
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v10, v1, [I

    .line 547
    .local v10, "selectedUids":[I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 548
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 549
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v10, v9

    .line 550
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 548
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 552
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 553
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 554
    return-object v10
.end method

.method public queryAppPerm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "perName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 855
    const/4 v2, 0x0

    .line 856
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 857
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select selected from appname where packagename=? and pername=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 861
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 864
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 865
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 866
    return-object v2
.end method

.method public queryCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 964
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 965
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select count(distinct uid) from appname where apptype=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 968
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 969
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 970
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 971
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 972
    return v0
.end method

.method public queryCountCanUse(Ljava/lang/String;)I
    .locals 6
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 976
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 977
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select count(distinct uid) from appname where apptype=? and selected=0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 981
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 982
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 983
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 984
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 985
    return v0
.end method

.method public queryPerEnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 840
    const/4 v2, 0x0

    .line 841
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 842
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select selected from appname where packagename=? and apptype=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 846
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 847
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 849
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 850
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 851
    return-object v2
.end method

.method public queryPwd()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 575
    const-string v9, ""

    .line 576
    .local v9, "password":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 577
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v10, v9

    .line 586
    .end local v9    # "password":Ljava/lang/String;
    .local v10, "password":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 580
    .end local v10    # "password":Ljava/lang/String;
    .restart local v9    # "password":Ljava/lang/String;
    :cond_1
    const-string v1, "passwordNew"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 582
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 584
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 585
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v10, v9

    .line 586
    .end local v9    # "password":Ljava/lang/String;
    .restart local v10    # "password":Ljava/lang/String;
    goto :goto_0
.end method

.method public queryPwdQuestionAndAnswer()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 629
    new-array v9, v10, [Ljava/lang/String;

    .line 630
    .local v9, "pwdAnswer":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 631
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "passwordNew"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 633
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const/4 v1, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 635
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 638
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 639
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 640
    return-object v9
.end method

.method public removeSameString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 808
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 809
    .local v1, "mLinkedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "strArray":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 812
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 813
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 814
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateApp(IILjava/lang/String;)V
    .locals 5
    .param p1, "selected"    # I
    .param p2, "uid"    # I
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 701
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update appname set selected=? where uid=? and apptype=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 704
    return-void
.end method

.method public updateApp(Lcom/lenovo/safecenter/support/AppInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "app"    # Lcom/lenovo/safecenter/support/AppInfo;
    .param p2, "typeName"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 694
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update appname set selected=? where uid=? and apptype=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 697
    return-void
.end method

.method public updateApp(Ljava/util/ArrayList;I)V
    .locals 8
    .param p2, "selected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "applist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 708
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 710
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 725
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 726
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 728
    :goto_0
    return-void

    .line 713
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 714
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-eq v4, p2, :cond_1

    .line 715
    const-string v4, "update appname set selected=? where uid=? and apptype=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iput p2, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 722
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 726
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 721
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 725
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 726
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 725
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 726
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method public updateAppByPername(IIILjava/lang/String;)V
    .locals 5
    .param p1, "selected"    # I
    .param p2, "trusted"    # I
    .param p3, "uid"    # I
    .param p4, "perName"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 733
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update appname set selected=?, trusted=? where uid=? and pername=?"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 737
    return-void
.end method

.method public updateAppTrust(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "trusted"    # I

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1494
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update appname set trusted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where packagename=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1497
    return-void
.end method

.method public updateAppTrust(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "trusted"    # I

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1477
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update appname set trusted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where packagename=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1490
    return-void
.end method

.method public updateApp_isupload(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "isupload"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 672
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update appname set isupload=? where packagename=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 675
    return-void
.end method

.method public updateCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1937
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1938
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update calllist set isread=? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1940
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1941
    return-void
.end method

.method public updateCall(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1944
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1946
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1947
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update calllist set isread=? "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1949
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1958
    :goto_0
    return-void

    .line 1952
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1953
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update calllist set isread=? where _id=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1955
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public updateContract(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "realnumber"    # Ljava/lang/String;

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1800
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update whiteperson set phonenumber=?,name=? ,realnumber=?  where _id =?"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1804
    return-void
.end method

.method public updateLogForTable(Ljava/lang/String;)V
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1200
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1201
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set log_selected=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1204
    return-void
.end method

.method public updateNUmber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "newNumber"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1823
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1824
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1826
    const-string v1, " update  calllist set phonenumber=? where phonenumber=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1828
    const-string v1, " update  smslist set phonenumber=? where phonenumber=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1832
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1833
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1834
    return-void
.end method

.method public updateName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1809
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1810
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1812
    const-string v1, " update  calllist set name=? where phonenumber=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1814
    const-string v1, " update  smslist set name=? where phonenumber=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1817
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1818
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1819
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1820
    return-void
.end method

.method public updateSafeLogForTable(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V
    .locals 5
    .param p1, "safeLog"    # Lcom/lenovo/safecenter/support/SafeLog;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1152
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set log_selected=? where _id=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1155
    return-void
.end method

.method public updateSafeLogUpload(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V
    .locals 5
    .param p1, "safeLog"    # Lcom/lenovo/safecenter/support/SafeLog;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1159
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set isupload=? where _id=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1162
    return-void
.end method

.method public updateSafeLogUpload(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1166
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/SafeLog;

    .line 1167
    .local v2, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set isupload=? where _id=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1170
    .end local v2    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1171
    return-void
.end method

.method public updateSmsStatus(I)V
    .locals 5
    .param p1, "isread"    # I

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2187
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update  smslist set isread=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2189
    return-void
.end method

.method public updateSmsStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isread"    # I

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2193
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update  smslist set isread=? where phonenumber=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2196
    return-void
.end method

.method public updatehasSee(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/lenovo/safecenter/database/AppDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1301
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update safe_log_harass set hassee=0 where type=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1304
    return-void
.end method
