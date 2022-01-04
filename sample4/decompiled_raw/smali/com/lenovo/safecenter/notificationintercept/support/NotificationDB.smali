.class public Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;
.super Ljava/lang/Object;
.source "NotificationDB.java"


# instance fields
.field private a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public closeDatabase()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->close()V

    .line 154
    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    .line 156
    :cond_1
    return-void
.end method

.method public delete(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification_ad"

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

    .line 90
    return-void
.end method

.method public findAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification_ad"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v10, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    invoke-direct {v10}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;-><init>()V

    .line 138
    .local v10, "record":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setId(I)V

    .line 139
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setPkgName(Ljava/lang/String;)V

    .line 140
    const-string v0, "adname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setAdname(Ljava/lang/String;)V

    .line 141
    const-string v0, "description"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setDescription(Ljava/lang/String;)V

    .line 142
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v10    # "record":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 145
    return-object v9
.end method

.method public findById(I)Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification_ad"

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

    .line 103
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    invoke-direct {v9}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;-><init>()V

    .line 104
    .local v9, "record":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setId(I)V

    .line 106
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setPkgName(Ljava/lang/String;)V

    .line 107
    const-string v0, "adname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setAdname(Ljava/lang/String;)V

    .line 108
    const-string v0, "description"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    return-object v9
.end method

.method public findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .locals 10
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification_ad"

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

    .line 118
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 119
    .local v9, "record":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v9, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .end local v9    # "record":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    invoke-direct {v9}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;-><init>()V

    .line 121
    .restart local v9    # "record":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setId(I)V

    .line 122
    const-string v0, "pkgname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setPkgName(Ljava/lang/String;)V

    .line 123
    const-string v0, "adname"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setAdname(Ljava/lang/String;)V

    .line 124
    const-string v0, "description"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 127
    return-object v9
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notification_ad"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationDB"

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
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_2

    .line 38
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v11}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->findAll()Ljava/util/List;

    move-result-object v4

    .line 41
    .local v4, "findAll":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v8, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v9, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 44
    .local v7, "lbean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    const/4 v2, 0x0

    .line 45
    .local v2, "contain":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 46
    .local v1, "bean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    invoke-virtual {v7}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getId()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->setId(I)V

    .line 52
    .end local v1    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :cond_4
    if-eqz v2, :cond_5

    .line 53
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_5
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    .end local v2    # "contain":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "lbean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 59
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 61
    .restart local v1    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "pkgname"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v11, "adname"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getAdname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v11, "description"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "notification_ad"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "NotificationDB"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insert Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 70
    .end local v1    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 72
    .restart local v1    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .restart local v10    # "values":Landroid/content/ContentValues;
    const-string v11, "_id"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v11, "pkgname"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v11, "adname"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getAdname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v11, "description"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "notification_ad"

    const-string v13, " pkgname =? "

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v1}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 78
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 79
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v11, "NotificationDB"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insert Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 82
    .end local v1    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 83
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method public update(ILandroid/content/ContentValues;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->a:Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/InterceptDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notification_ad"

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

    .line 96
    return-void
.end method
