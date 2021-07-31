.class public Lcom/lenovo/safecenter/adapter/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/DbAdapter$a;
    }
.end annotation


# static fields
.field public static final APP_FILE_SIZE:Ljava/lang/String; = "app_file_size"

.field public static final APP_MD5:Ljava/lang/String; = "app_md5"

.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final APP_PACKAGENAME:Ljava/lang/String; = "app_packagename"

.field public static final APP_PROTECTION:Ljava/lang/String; = "app_protection"

.field public static final APP_SHA1:Ljava/lang/String; = "app_sha1"

.field public static final APP_STATE:Ljava/lang/String; = "app_state"

.field public static final DB_NAME:Ljava/lang/String; = "safepayment.db"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final TABLE_NAME_SAFEAPP:Ljava/lang/String; = "safeAppTbl"

.field public static final TABLE_NAME_USERAPP:Ljava/lang/String; = "userAppTbl"

.field public static final VERSION:I = 0x2


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Lcom/lenovo/safecenter/adapter/DbAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->c:Lcom/lenovo/safecenter/adapter/DbAdapter$a;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->c:Lcom/lenovo/safecenter/adapter/DbAdapter$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter$a;->close()V

    .line 145
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 148
    :cond_0
    return-void
.end method

.method public open()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/lenovo/safecenter/adapter/DbAdapter$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/adapter/DbAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->c:Lcom/lenovo/safecenter/adapter/DbAdapter$a;

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->c:Lcom/lenovo/safecenter/adapter/DbAdapter$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter$a;->close()V

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->c:Lcom/lenovo/safecenter/adapter/DbAdapter$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 139
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DbAdapter;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
