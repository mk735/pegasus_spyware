.class public Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;
.super Ljava/lang/Object;
.source "AntiVirusDBService.java"


# static fields
.field public static final MD5_MODE:I = 0x0

.field public static final SHA1_MODE:I = 0x1


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->a:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public getVirus(Ljava/lang/String;J)Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .locals 8
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "filesize"    # J

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT * FROM virus where pkgname=? and filesize=?"

    .line 116
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    move-object v3, v2

    .line 119
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .local v3, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    new-instance v2, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :try_start_1
    const-string v5, "pname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setName(Ljava/lang/String;)V

    .line 122
    const-string v5, "pkgname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgName(Ljava/lang/String;)V

    .line 123
    const-string v5, "md5"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setCertmd5(Ljava/lang/String;)V

    .line 124
    const-string v5, "sha1"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgSha1(Ljava/lang/String;)V

    .line 125
    const-string v5, "source"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setSource(Ljava/lang/String;)V

    .line 126
    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setType(Ljava/lang/String;)V

    .line 127
    const-string v5, "desc"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setVirusDesc(Ljava/lang/String;)V

    .line 128
    const-string v5, "filesize"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setFilesize(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 132
    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_1
    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 137
    return-object v2

    .line 132
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_1
    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 132
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public getVirus(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .locals 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 64
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT * FROM virus where pkgname=? and sha1=?"

    .line 65
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    move-object v3, v2

    .line 68
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .local v3, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    new-instance v2, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :try_start_1
    const-string v5, "pname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setName(Ljava/lang/String;)V

    .line 71
    const-string v5, "pkgname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgName(Ljava/lang/String;)V

    .line 72
    const-string v5, "md5"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setCertmd5(Ljava/lang/String;)V

    .line 73
    const-string v5, "sha1"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgSha1(Ljava/lang/String;)V

    .line 74
    const-string v5, "source"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setSource(Ljava/lang/String;)V

    .line 75
    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setType(Ljava/lang/String;)V

    .line 76
    const-string v5, "desc"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setVirusDesc(Ljava/lang/String;)V

    .line 77
    const-string v5, "filesize"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setFilesize(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 81
    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_1
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    return-object v2

    .line 81
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_1
    if-eqz v0, :cond_3

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 81
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public getVirus(I)Ljava/util/List;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v3, "virusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 27
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT md5,sha1 FROM virus"

    .line 28
    .local v2, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 30
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 31
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    const-string v4, "md5"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 37
    :pswitch_1
    :try_start_1
    const-string v4, "sha1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 48
    return-object v3

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVirus_MD5()Ljava/util/List;
    .locals 1
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
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->getVirus(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVirus_SHA1()Ljava/util/List;
    .locals 1
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
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->getVirus(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVirus_md5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBService;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 94
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT * FROM virus where pkgname=? and md5=?"

    .line 95
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 97
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 100
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    if-lez v0, :cond_1

    :goto_1
    return v5

    .line 102
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 106
    goto :goto_1
.end method
