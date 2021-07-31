.class public Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
.super Ljava/lang/Object;
.source "PermissionDB.java"


# instance fields
.field private a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public closeDatabase()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->close()V

    .line 137
    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    .line 139
    :cond_1
    return-void
.end method

.method public delete(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_permissions"

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

    .line 54
    return-void
.end method

.method public findAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_permissions"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    invoke-direct {v10}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;-><init>()V

    .line 122
    .local v10, "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    .line 123
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    .line 124
    const-string v0, "permission"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    .line 125
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v10    # "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    return-object v9
.end method

.method public findById(I)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_permissions"

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

    .line 89
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    invoke-direct {v9}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;-><init>()V

    .line 90
    .local v9, "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    .line 92
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    .line 93
    const-string v0, "permission"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 96
    return-object v9
.end method

.method public findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .locals 10
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_permissions"

    const-string v3, " pkgname=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 103
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 104
    .local v9, "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .end local v9    # "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    invoke-direct {v9}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;-><init>()V

    .line 106
    .restart local v9    # "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    .line 107
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    .line 108
    const-string v0, "permission"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    return-object v9
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "intercept_permissions"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PermissionDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_2

    .line 33
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 38
    .local v2, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "pkgname"

    iget-object v5, v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v4, "permission"

    iget v5, v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "intercept_permissions"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PermissionDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 47
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public update(ILandroid/content/ContentValues;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "intercept_permissions"

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

    .line 60
    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 70
    .local v2, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "pkgname"

    iget-object v5, v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v4, "permission"

    iget v5, v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "intercept_permissions"

    const-string v6, " _id =? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PermissionDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 79
    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method
