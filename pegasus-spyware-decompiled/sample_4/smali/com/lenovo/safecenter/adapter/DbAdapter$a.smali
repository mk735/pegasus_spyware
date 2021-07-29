.class final Lcom/lenovo/safecenter/adapter/DbAdapter$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/adapter/DbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/adapter/DbAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V
    .locals 4

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/DbAdapter$a;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    .line 40
    iget-object v0, p1, Lcom/lenovo/safecenter/adapter/DbAdapter;->a:Landroid/content/Context;

    const-string v1, "safepayment.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 45
    const-string v0, "drop table if exists safeAppTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "drop table if exists userAppTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "create table safeAppTbl (_id integer primary key autoincrement,app_name text,app_packagename text,app_md5 text,app_file_size text,app_sha1 text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "create table userAppTbl (_id integer primary key autoincrement,app_name text,app_packagename text,app_md5 text,app_file_size text,app_state text,app_protection text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 56
    return-void
.end method
