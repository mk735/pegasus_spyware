.class public Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "InterceptDatabaseHelper.java"


# static fields
.field public static final DB_CREATE_CASE:Ljava/lang/String; = "create table if not exists "

.field public static final DB_DROP_CASE:Ljava/lang/String; = "drop table if exists "

.field public static final INTERCEPT_PERMISSION_TABLE:Ljava/lang/String; = "intercept_permissions"

.field public static final INTERCEPT_RECORD_TABLE:Ljava/lang/String; = "intercept_records"

.field public static final NOTIFICATION_AD_TABLE:Ljava/lang/String; = "notification_ad"

.field public static final URL_BLACK_TABLE:Ljava/lang/String; = "url_black"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string v0, "notification_intercept.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 49
    :try_start_0
    const-string v1, "create table if not exists intercept_records ( _id integer primary key autoincrement, notification_id integer, applabel varchar, pkgname varchar, notification_content varchar, timestamp long, record_permission int);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v1, "create table if not exists intercept_permissions ( _id integer primary key autoincrement, pkgname varchar unique, permission integer);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v1, "create table if not exists url_black( _id integer primary key autoincrement,  urlname varchar unique);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v1, "create table if not exists notification_ad( _id integer primary key autoincrement,  pkgname varchar unique, adname varchar, description varchar);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 67
    :try_start_0
    const-string v1, "create table if not exists notification_ad( _id integer primary key autoincrement,  pkgname varchar unique, adname varchar, description varchar);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
