.class public Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;
.super Landroid/content/ContentProvider;
.source "QueryPermissionsProvider.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final e:Landroid/content/UriMatcher;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "result"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->b:[Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    .line 38
    sget-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.providers.querypermissions"

    const-string v2, "pkgname/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.providers.querypermissions"

    const-string v2, "pkgname/*/permission/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.providers.querypermissions"

    const-string v2, "pkgname/*/type/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.providers.querypermissions"

    const-string v2, "pkgname/*/startup"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 25
    const-string v0, "QueryPermissionsProvider"

    iput-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 194
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PermissionsTable"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "num":I
    return v0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 67
    sget-object v2, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PermissionsTable"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 77
    .local v0, "rowid":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 78
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 80
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 11

    .prologue
    .line 86
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/data/com.lenovo.safecenter/databases"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "dbPath":Ljava/io/File;
    const/4 v4, 0x0

    .line 89
    .local v4, "isDB":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 90
    .local v6, "osDB":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 93
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/data/com.lenovo.safecenter/databases/permissions.db"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 96
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/data/com.lenovo.safecenter/databases/permissions_1.db"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "oldDb":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 100
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 101
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v6    # "osDB":Ljava/io/FileOutputStream;
    .local v7, "osDB":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 103
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 104
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    if-eqz v4, :cond_3

    .line 112
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 123
    .end local v0    # "buffer":[B
    .end local v7    # "osDB":Ljava/io/FileOutputStream;
    .restart local v6    # "osDB":Ljava/io/FileOutputStream;
    :cond_4
    :goto_0
    :try_start_3
    const-string v8, "/data/data/com.lenovo.safecenter/databases/permissions.db"

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6

    .line 127
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->d:Landroid/content/ContentResolver;

    .line 128
    const/4 v8, 0x1

    return v8

    .line 117
    .end local v6    # "osDB":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "osDB":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 120
    .end local v7    # "osDB":Ljava/io/FileOutputStream;
    .restart local v6    # "osDB":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 105
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 106
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    if-eqz v4, :cond_5

    .line 112
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_5
    if-eqz v6, :cond_4

    .line 115
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 117
    :catch_2
    move-exception v3

    .line 118
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 108
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    if-eqz v4, :cond_6

    .line 112
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_6
    if-eqz v6, :cond_4

    .line 115
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 117
    :catch_4
    move-exception v3

    .line 118
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 111
    :goto_4
    if-eqz v4, :cond_7

    .line 112
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_7
    if-eqz v6, :cond_8

    .line 115
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 119
    :cond_8
    :goto_5
    throw v8

    .line 117
    :catch_5
    move-exception v3

    .line 118
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 125
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v6    # "osDB":Ljava/io/FileOutputStream;
    .restart local v7    # "osDB":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "osDB":Ljava/io/FileOutputStream;
    .restart local v6    # "osDB":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 107
    .end local v6    # "osDB":Ljava/io/FileOutputStream;
    .restart local v7    # "osDB":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "osDB":Ljava/io/FileOutputStream;
    .restart local v6    # "osDB":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 105
    .end local v6    # "osDB":Ljava/io/FileOutputStream;
    .restart local v7    # "osDB":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "osDB":Ljava/io/FileOutputStream;
    .restart local v6    # "osDB":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-object v0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    const/4 v8, 0x0

    .line 173
    :goto_0
    return-object v8

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 144
    .local v9, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PermissionsTable"

    const/4 v2, 0x0

    const-string v3, "pkgname = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 172
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->d:Landroid/content/ContentResolver;

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 147
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 151
    .restart local v9    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PermissionsTable"

    const/4 v2, 0x0

    const-string v3, "pkgname = ? AND permission = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v6, 0x1

    const/4 v5, 0x3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 152
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 154
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 158
    .restart local v9    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PermissionsTable"

    const/4 v2, 0x0

    const-string v3, "pkgname = ? AND type = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v6, 0x1

    const/4 v5, 0x3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 159
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 161
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 164
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 166
    .restart local v9    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PermissionsTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "boot_auto_start"

    aput-object v4, v2, v3

    const-string v3, "pkgname = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 167
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 179
    sget-object v1, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/providers/querypermissions/QueryPermissionsProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PermissionsTable"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "num":I
    return v0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
