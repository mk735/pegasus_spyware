.class public Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AntiVirusDBHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string v0, "antivirus.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.M.dd.HH.mm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "datatime":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 299
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

    .line 300
    .local v1, "formatTime":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public add(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .local p2, "expireList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 119
    .local v1, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v3, "insert into virus(sha1,type,pkgname,filesize) values(?,?,?,?,?,?,?,?)"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getCertmd5()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgSha1()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getSource()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getFilesize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 123
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 125
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v3, "delete from virus where sha1=? "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgSha1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    return-void
.end method

.method public add2(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .local p2, "expireList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .local p3, "memolist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 73
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 76
    .local v2, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v4, "insert into virus(sha1,type,pkgname,filesize) values(?,?,?,?)"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgSha1()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getFilesize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 84
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v4, "demo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VirusDemo=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v4, "select * from virusinfo where type=?"

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 88
    const-string v4, "update  virusinfo set desc=?,pname=?,md5=? where type=?"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getCertmd5()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_2
    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 92
    :cond_2
    const-string v4, "insert into virusinfo(desc,pname,md5,type) values(?,?,?,?)"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getCertmd5()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 101
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 105
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v4, "delete from virus where sha1=? "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgSha1()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 108
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    return-void
.end method

.method public addApp(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    const-string v3, "delete from appinfo"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .line 140
    .local v2, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    const-string v3, "addApp"

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v3, "insert into appinfo(pkgname,md5,sha1,filesize,appname) values(?,?,?,?,?)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getAppname()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 144
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    return-void
.end method

.method public delLog()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 288
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from viruslog"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 290
    return-void
.end method

.method public delVirus()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 64
    const-string v1, "delete from virus"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v1, "delete from virusinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 153
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select * from appinfo where pkgname=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .end local v0    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    const-string v1, "md5"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "sha1"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "filesize"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "appname"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local v0    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    return-object v0
.end method

.method public getAppsInfo()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getInstalledThirdApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 167
    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v7, :cond_2

    .line 169
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    const/4 v0, 0x0

    .line 171
    .local v0, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 172
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 174
    .local v6, "ainfo":Landroid/content/pm/ApplicationInfo;
    const-string v1, "select * from appinfo where pkgname in(?)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .end local v0    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    const-string v1, "pkgname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sha1"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filesize"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appname"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .restart local v0    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 184
    .end local v6    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 187
    .end local v0    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    :goto_1
    return-object v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public getLatestLog()Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 253
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from viruslog order by eventtime desc"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 254
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 255
    .local v2, "info":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    new-instance v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    .end local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    invoke-direct {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;-><init>()V

    .line 258
    .restart local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    const-string v3, "eventtime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventtime:Ljava/lang/String;

    .line 259
    const-string v3, "eventcontent"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventcontent:Ljava/lang/String;

    .line 260
    const-string v3, "eventicon"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventicon:Ljava/lang/String;

    .line 262
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 264
    return-object v2
.end method

.method public getLog()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusLog;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 211
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, ""

    .line 212
    .local v5, "time":Ljava/lang/String;
    const-string v6, "select * from viruslog order by _id desc,eventtime desc"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    new-instance v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    invoke-direct {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;-><init>()V

    .line 217
    .local v2, "info":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    const-string v6, "eventtime"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventtime:Ljava/lang/String;

    .line 218
    const-string v6, "eventcontent"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventcontent:Ljava/lang/String;

    .line 219
    const-string v6, "eventicon"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventicon:Ljava/lang/String;

    .line 221
    iget-object v6, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventtime:Ljava/lang/String;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_0
    new-instance v4, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    invoke-direct {v4}, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;-><init>()V

    .line 225
    .local v4, "logDate":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    iget-object v6, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventtime:Ljava/lang/String;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    iput-object v5, v4, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->logdate:Ljava/lang/String;

    .line 227
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v2    # "info":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    .end local v4    # "logDate":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 233
    return-object v3
.end method

.method public getLogCount()I
    .locals 5

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 241
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select * from viruslog order by eventtime desc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 243
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 244
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 246
    return v0
.end method

.method public getVirus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .locals 9
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "sha1"    # Ljava/lang/String;
    .param p4, "filesize"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 311
    .local v2, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 312
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT v.pkgname,vi.pname,vi.desc,vi.type,vi.md5 FROM virus v,virusinfo vi where v.sha1=? and vi.type=v.type"

    .line 314
    .local v6, "sql":Ljava/lang/String;
    const-string v7, "preload"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 316
    const-string v6, "SELECT v.pkgname,vi.pname,vi.desc,vi.type,vi.md5 FROM virus v,virusinfo vi where v.filesize=? and v.pkgname=? and vi.type=v.type"

    .line 317
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p4, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 326
    new-instance v3, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v3}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .local v3, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const/4 v7, 0x4

    :try_start_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setCertmd5(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3, p1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgName(Ljava/lang/String;)V

    .line 329
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setName(Ljava/lang/String;)V

    .line 330
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "desc":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 333
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0321

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    :cond_0
    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setVirusDesc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 336
    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .end local v4    # "desc":Ljava/lang/String;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_1
    if-eqz v0, :cond_2

    .line 342
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 346
    if-eqz v2, :cond_4

    .line 348
    const-string v7, "preload"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 350
    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getCertmd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 352
    const/4 v7, 0x0

    .line 360
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "sql":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 320
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "sql":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 356
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 358
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v7, v2

    .line 360
    goto :goto_1

    .line 356
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v6    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_2
.end method

.method public insertAppinfo(Lcom/lenovo/safecenter/antivirus/domain/Appinfo;)V
    .locals 10
    .param p1, "info"    # Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getAppInfo(Ljava/lang/String;)Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    move-result-object v1

    .line 193
    .local v1, "isExist":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 196
    const-string v2, "update  appinfo set md5=?,sha1=?,filesize=?,appname=? where pkgname=?"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getAppname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 204
    return-void

    .line 200
    :cond_0
    const-string v2, "insert into appinfo(pkgname,md5,sha1,filesize,appname) values(?,?,?,?,?)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getAppname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "eventicon"    # Ljava/lang/String;

    .prologue
    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "insert into  viruslog(eventcontent,eventtime,eventicon) values(?,?,?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    const-string v0, "CREATE TABLE virus (_id INTEGER PRIMARY KEY, pkgname varchar,sha1 VARCHAR(40),filesize varchar,type varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string v0, "CREATE TABLE virusinfo (_id INTEGER PRIMARY KEY, desc varchar,pname TEXT,md5 TEXT,type varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "CREATE TABLE appinfo (_id INTEGER PRIMARY KEY, pkgname varchar ,md5 VARCHAR(32),sha1 VARCHAR(40),filesize varchar,appname varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "CREATE TABLE viruslog (_id INTEGER PRIMARY KEY, eventcontent varchar,eventtime varchar,eventicon varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 44
    const-string v0, "onUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldVersion=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "....newVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
