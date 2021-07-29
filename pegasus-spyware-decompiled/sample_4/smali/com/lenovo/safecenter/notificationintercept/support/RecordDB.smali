.class public Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
.super Ljava/lang/Object;
.source "RecordDB.java"


# instance fields
.field private a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    .line 18
    return-void
.end method


# virtual methods
.method public closeDatabase()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 126
    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->close()V

    .line 130
    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    .line 132
    :cond_1
    return-void
.end method

.method public delete(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const-string v2, " _id =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public deleteAll()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const-string v7, "_id desc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 48
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    new-instance v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;

    invoke-direct {v10}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;-><init>()V

    .line 51
    .local v10, "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->_id:I

    .line 52
    const-string v0, "notification_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->notificationId:I

    .line 53
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->pkgname:Ljava/lang/String;

    .line 54
    const-string v0, "applabel"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->applabel:Ljava/lang/String;

    .line 55
    const-string v0, "notification_content"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->notificationContent:Ljava/lang/String;

    .line 56
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->timestamp:J

    .line 57
    const-string v0, "record_permission"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->recordPermission:I

    .line 58
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v10    # "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    return-object v9
.end method

.method public findById(I)Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const-string v3, " _id=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 95
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;

    invoke-direct {v9}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;-><init>()V

    .line 96
    .local v9, "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->_id:I

    .line 98
    const-string v0, "notification_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->notificationId:I

    .line 99
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->pkgname:Ljava/lang/String;

    .line 100
    const-string v0, "applabel"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->applabel:Ljava/lang/String;

    .line 101
    const-string v0, "notification_content"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->notificationContent:Ljava/lang/String;

    .line 102
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->timestamp:J

    .line 103
    const-string v0, "record_permission"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->recordPermission:I

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 106
    return-object v9
.end method

.method public findByPackage(Ljava/lang/String;)[I
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const-string v3, " pkgname=? "

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    const-string v7, "_id desc"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 114
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 115
    .local v8, "count":I
    const/4 v10, 0x0

    .line 116
    .local v10, "permission":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "record_permission"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 119
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v8, v0, v11

    aput v10, v0, v12

    return-object v0
.end method

.method public getCount()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 68
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 69
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 70
    return v8
.end method

.method public getLast()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const-string v7, "_id desc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;>;"
    const/4 v9, 0x0

    .line 79
    .local v9, "count":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ge v9, v0, :cond_1

    .line 80
    add-int/lit8 v9, v9, 0x1

    .line 81
    new-instance v8, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;

    invoke-direct {v8}, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;-><init>()V

    .line 82
    .local v8, "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    const-string v0, "notification_content"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->recordContent:Ljava/lang/String;

    .line 83
    const-string v0, "record_permission"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->recordPermission:I

    .line 84
    const-string v0, "timestamp"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->currentTimeMillis:J

    .line 85
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v8    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 88
    return-object v11
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 24
    return-void
.end method

.method public update(ILandroid/content/ContentValues;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_records"

    const-string v2, " _id =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    return-void
.end method
