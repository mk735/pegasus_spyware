.class public Lcom/lenovo/safecenter/adapter/DaoImpl;
.super Ljava/lang/Object;
.source "DaoImpl.java"

# interfaces
.implements Lcom/lenovo/safecenter/adapter/Dao;


# instance fields
.field a:Lcom/lenovo/safecenter/adapter/DbAdapter;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/lenovo/safecenter/support/SafePaymentApp;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/lenovo/safecenter/adapter/DbAdapter;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public deleByPackageNameForSafeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "app_packagename"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "safeAppTbl"

    const-string v3, "app_packagename=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 130
    :goto_1
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db error:-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public deleByPackageNameForUserApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "app_packagename"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 305
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "userAppTbl"

    const-string v3, "app_packagename=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 312
    :goto_1
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db error:-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public insterForNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "app_packagename"    # Ljava/lang/String;
    .param p3, "app_md5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    if-nez v2, :cond_2

    .line 31
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "app_packagename"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "app_md5"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "app_file_size"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "app_sha1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "safeAppTbl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 42
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 60
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_4

    .line 46
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    :cond_3
    :goto_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "app_md5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_md5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "safeAppTbl"

    const-string v4, "app_packagename=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    goto :goto_1

    .line 47
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public insterForSafeApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "app_packagename"    # Ljava/lang/String;
    .param p3, "app_md5"    # Ljava/lang/String;
    .param p4, "app_file_size"    # Ljava/lang/String;
    .param p5, "app_sha1"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "app_packagename"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "app_md5"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "app_file_size"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "app_sha1"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "safeAppTbl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 84
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 93
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-void

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public insterForUserApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "app_packagename"    # Ljava/lang/String;
    .param p3, "app_md5"    # Ljava/lang/String;
    .param p4, "app_file_size"    # Ljava/lang/String;
    .param p5, "app_state"    # Ljava/lang/String;
    .param p6, "app_protection"    # Ljava/lang/String;

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 265
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 267
    const-string v1, "ydp"

    const-string v2, "lock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_1
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v10

    .line 292
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db error:-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1

    .line 270
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "app_name"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "app_packagename"

    invoke-virtual {v11, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "app_md5"

    invoke-virtual {v11, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "app_file_size"

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "app_state"

    move-object/from16 v0, p5

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "app_protection"

    move-object/from16 v0, p6

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "userAppTbl"

    const/4 v3, 0x0

    const-string v4, "app_packagename=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 280
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "userAppTbl"

    const-string v3, "app_packagename=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 290
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 283
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "userAppTbl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 285
    :catch_1
    move-exception v10

    .line 286
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method public queryAllForSafeApp()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "safeAppTbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 140
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;

    .line 142
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 144
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 145
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_sha1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_sha1(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 136
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v9

    .line 163
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 159
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public queryAllForUserApp()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userAppTbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 381
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;

    .line 383
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 384
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 385
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 386
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_state(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_protection"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_protection(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 377
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 405
    :catch_0
    move-exception v9

    .line 406
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 402
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 403
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 404
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public queryByAppNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
    .locals 11
    .param p1, "app_name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "safeAppTbl"

    const/4 v2, 0x0

    const-string v3, " app_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 225
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_sha1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_sha1(Ljava/lang/String;)V

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 244
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 247
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v9

    .line 246
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-object v0, v10

    .line 247
    goto :goto_1

    .line 238
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 239
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v10

    .line 240
    goto :goto_1
.end method

.method public queryByAppNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
    .locals 11
    .param p1, "app_name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 475
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userAppTbl"

    const/4 v2, 0x0

    const-string v3, " app_name LIKE ? OR ? LIKE \'%\'+app_name+\'%\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 479
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 481
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 483
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_state(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_protection"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_protection(Ljava/lang/String;)V

    .line 500
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 501
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 502
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 505
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 503
    :catch_0
    move-exception v9

    .line 504
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 505
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    goto :goto_1

    .line 496
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 497
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v10

    .line 498
    goto :goto_1
.end method

.method public queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
    .locals 11
    .param p1, "app_packagename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "safeAppTbl"

    const/4 v2, 0x0

    const-string v3, "app_packagename=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 181
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_sha1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_sha1(Ljava/lang/String;)V

    .line 198
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 200
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 203
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception v9

    .line 202
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-object v0, v10

    .line 203
    goto :goto_1

    .line 194
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v10

    .line 196
    goto :goto_1
.end method

.method public queryByPackageNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
    .locals 11
    .param p1, "app_packagename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 422
    const-string v0, "ydp"

    const-string v1, "lock!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    .line 463
    :goto_1
    return-object v0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v9

    .line 461
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 463
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    goto :goto_1

    .line 425
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userAppTbl"

    const/4 v2, 0x0

    const-string v3, "app_packagename=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 430
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 432
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 434
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_state(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_protection"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_protection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 457
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 458
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 459
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 447
    :cond_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 448
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v10

    .line 449
    goto/16 :goto_1

    .line 451
    :catch_1
    move-exception v9

    .line 452
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 453
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 454
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v10

    .line 455
    goto/16 :goto_1
.end method

.method public queryByStateForUserApp(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "app_state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 515
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userAppTbl"

    const/4 v2, 0x0

    const-string v3, "app_state=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 517
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;

    .line 519
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 520
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 521
    new-instance v0, Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 522
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setId(I)V

    .line 524
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_name(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_md5(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_packagename"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_packagename(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_file_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_file_size(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_state(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    const-string v1, "app_protection"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->setApp_protection(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->d:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 513
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 541
    :catch_0
    move-exception v9

    .line 542
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 538
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 539
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 540
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->c:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public queryCount()I
    .locals 11

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 554
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "safeAppTbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 556
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 557
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 558
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 562
    .end local v8    # "count":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v8

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v10

    .line 561
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db error:-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 562
    const/16 v8, 0x63

    goto :goto_1
.end method

.method public updataMD5ByPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "app_packagename"    # Ljava/lang/String;
    .param p2, "MD5"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_md5"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "safeAppTbl"

    const-string v4, "app_packagename=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 112
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-void

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public updataProtectionByPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "app_packagename"    # Ljava/lang/String;
    .param p2, "app_protection"    # Ljava/lang/String;

    .prologue
    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 322
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_protection"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "userAppTbl"

    const-string v4, "app_packagename=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 332
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public updataStateAll(Ljava/lang/String;)V
    .locals 6
    .param p1, "app_state"    # Ljava/lang/String;

    .prologue
    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 361
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_state"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "userAppTbl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 371
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public updataStateByPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "app_packagename"    # Ljava/lang/String;
    .param p2, "app_state"    # Ljava/lang/String;

    .prologue
    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 342
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "userAppTbl"

    const-string v4, "app_packagename=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 352
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->a:Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/adapter/DaoImpl;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db error:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method
