.class final Lcom/network/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/network/android/t;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/network/android/t;->b:I

    iput-object p2, p0, Lcom/network/android/t;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/network/android/t;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    :try_start_0
    invoke-static {}, Lcom/network/b/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GetContentMail getAttachmentFileCommandGmail version too low. returning"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GetContentMail getAttachmentFileCommandGmail get attachment start"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->a:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v6, v1, v2

    const/4 v2, 0x1

    aget-object v2, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/network/android/t;->b:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const-string v1, "/data/data/com.google.android.gm/databases"

    move-object/from16 v18, v1

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/network/android/t;->b:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail appPathDatabases:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail appPath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v8, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-static/range {v18 .. v18}, Lcom/network/android/m;->d(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v14

    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/network/android/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v15

    :try_start_3
    const-string v2, "0777"

    move-object/from16 v0, v18

    invoke-static {v2, v0, v14}, Lcom/network/android/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail DB not exists -> exit!: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    move-object/from16 v0, v18

    invoke-static {v15, v0, v14}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_6
    const-string v1, "/data/data/com.android.email/databases"

    move-object/from16 v18, v1

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    const/16 v3, 0x10

    :try_start_7
    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_14
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result-object v16

    :try_start_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/network/android/t;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from messages where _id = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-object v17

    if-nez v17, :cond_b

    :try_start_9
    const-string v1, "GetContentMail getAttachmentFileCommandGmail Provider == null return"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v16, :cond_7

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    move-object/from16 v0, v18

    invoke-static {v15, v0, v14}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :cond_a
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from Message where _id = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-result-object v1

    goto :goto_3

    :cond_b
    :try_start_d
    const-string v5, ""

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/network/android/t;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "dateSentMs"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_c
    :goto_4
    const-string v1, "GetContentMail getAttachmentFileCommandGmail getAttachments"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v2, 0x0

    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select * from attachments where originExtras = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/network/android/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' and status = \'200\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommandGmail query: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_16
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-result-object v13

    if-eqz v13, :cond_2b

    :try_start_f
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetContentMail getAttachmentFileCommandGmail cursor size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_d
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/network/android/t;->b:I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    :try_start_11
    const-string v3, "mimeType"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v2

    :goto_6
    :try_start_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/network/android/t;->c:Ljava/lang/String;

    const-string v3, "joinedAttachmentInfos"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "GetContentMail getAttachmentFileCommandGmail joinedAttachmentInfos: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v6, :cond_2d

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v1

    move-object v1, v9

    :goto_7
    :try_start_13
    array-length v8, v6

    if-ge v4, v8, :cond_15

    aget-object v8, v6, v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GetContentMail addGMailAttachments joinedAttachmentInfo: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    const/4 v9, 0x6

    aget-object v9, v8, v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x6

    aget-object v1, v8, v9

    const/4 v9, 0x1

    aget-object v3, v8, v9

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    :cond_e
    const/4 v9, 0x2

    aget-object v2, v8, v9
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_10
    :try_start_14
    const-string v1, "timeStamp"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-result-object v5

    goto/16 :goto_4

    :catch_3
    move-exception v3

    :try_start_15
    const-string v3, "GetContentMail getAttachmentFileCommandGmail mimeType row does not exist in theis Gmail DB messages table"

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_6

    :catch_4
    move-exception v1

    :goto_8
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get GetContentMail getAttachmentFileCommandGmail - "

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

    const/4 v1, 0x0

    const/16 v2, 0x78

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_5

    :catch_5
    move-exception v1

    move-object v2, v13

    :goto_9
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommandGmail - "

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

    const/4 v1, 0x0

    const/16 v3, 0x78

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v3, -0x3cae

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    const-string v3, "httpPing"

    invoke-static {v1, v3}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    if-eqz v2, :cond_11

    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :cond_11
    :goto_a
    :try_start_19
    const-string v1, "getAttachmentFileCommand end"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-eqz v16, :cond_12

    :try_start_1a
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12
    if-eqz v17, :cond_13

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v15, :cond_14

    if-eqz v14, :cond_14

    move-object/from16 v0, v18

    invoke-static {v15, v0, v14}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_14
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_0

    :cond_15
    move-object v9, v1

    move-object v8, v2

    move-object v1, v3

    :goto_b
    :try_start_1c
    const-string v2, "filename"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail addGMailAttachments get by contentUri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_17

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    :cond_17
    move-object v6, v1

    move-object v1, v2

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail attachmentFileName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommandGmail URI: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_18
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result-object v2

    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail copy local: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_19
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-object v11, v2

    :goto_d
    :try_start_1f
    invoke-static {v11}, Lcom/network/android/m;->b(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result-object v12

    :try_start_20
    const-string v1, "0777"

    invoke-static {v1, v11}, Lcom/network/android/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommandGmail  attachmentLength: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v2, :cond_1e

    const-string v1, "GetContentMail getAttachmentFileCommandGmail  0 chankData fileSize"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-eqz v13, :cond_18

    :try_start_21
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :cond_18
    :goto_e
    if-eqz v16, :cond_19

    :try_start_22
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_19
    if-eqz v17, :cond_1a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1a
    if-eqz v15, :cond_1b

    if-eqz v14, :cond_1b

    move-object/from16 v0, v18

    invoke-static {v15, v0, v14}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1b
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1

    goto/16 :goto_0

    :catch_8
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, v22

    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "GetContentMail getAttachmentFileCommandGmail get attchment name - "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v3

    move-object v8, v2

    move-object v1, v4

    goto/16 :goto_b

    :cond_1c
    const-string v1, "fileName"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "size"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-result-object v1

    goto/16 :goto_c

    :cond_1d
    :try_start_25
    const-string v4, "content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v10, 0x2

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "/data/data/com.android.email/cache/"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".db_att/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_18
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-result-object v2

    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  cashed content path: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_19
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    move-object v11, v2

    goto/16 :goto_d

    :cond_1e
    :try_start_27
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v20, 0x19000

    cmp-long v3, v3, v20

    if-gez v3, :cond_23

    new-array v10, v2, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v10}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->a:Ljava/lang/String;

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

    iget-object v3, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/network/android/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/network/android/j;->a(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_b
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :goto_f
    move-object v7, v12

    :goto_10
    if-eqz v11, :cond_d

    if-eqz v7, :cond_d

    :try_start_28
    invoke-static {v7, v11}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    :goto_11
    if-eqz v13, :cond_1f

    :try_start_29
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_9
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :cond_1f
    :goto_12
    :try_start_2a
    throw v1
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_9
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    :catch_9
    move-exception v1

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    :goto_13
    :try_start_2b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get mail Throwable- "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    const/16 v6, 0xbe3

    const-string v7, "LOG_ERR_WHATSAPP"

    invoke-static {v1, v6, v7}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    if-eqz v4, :cond_20

    :try_start_2c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_20
    if-eqz v5, :cond_21

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_21
    if-eqz v3, :cond_22

    if-eqz v2, :cond_22

    move-object/from16 v0, v18

    invoke-static {v3, v0, v2}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_22
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v1

    :try_start_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finally- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1

    goto/16 :goto_0

    :cond_23
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/network/android/t;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Lcom/network/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_b
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    goto :goto_f

    :catch_b
    move-exception v1

    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  chank error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    move-object v7, v12

    goto/16 :goto_10

    :catchall_1
    move-exception v1

    :try_start_30
    throw v1
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_c
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :catch_c
    move-exception v1

    move-object v2, v11

    move-object v3, v12

    :goto_14
    :try_start_31
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getAttachmentFileCommand- "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    move-object v11, v2

    move-object v7, v3

    goto/16 :goto_10

    :cond_24
    :try_start_32
    const-string v1, "GetContentMail getAttachmentFileCommandGmail - file does not exist "

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x79

    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_c
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    move-object v7, v12

    goto/16 :goto_10

    :cond_25
    :try_start_33
    const-string v1, "GetContentMail getAttachmentFileCommandGmail - no URI "

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x79

    const-string v4, "GET_ATTACHMENT_NOT_AVAILABLE"

    invoke-static {v1, v2, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x78

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v4, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v4, v6}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    move-object v11, v3

    goto/16 :goto_10

    :cond_26
    const/4 v1, 0x1

    const/16 v2, 0x79

    :try_start_34
    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const-string v1, "GetContentMail getAttachmentFileCommandGmail no attachment available (query size 0) "

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x79

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_5
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    :cond_27
    :goto_15
    if-eqz v13, :cond_11

    :try_start_35
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_9
    .catchall {:try_start_35 .. :try_end_35} :catchall_2

    goto/16 :goto_a

    :catch_d
    move-exception v1

    :try_start_36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finaly- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_9
    .catchall {:try_start_36 .. :try_end_36} :catchall_2

    goto/16 :goto_a

    :catchall_2
    move-exception v1

    :goto_16
    if-eqz v16, :cond_28

    :try_start_37
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_28
    if-eqz v17, :cond_29

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_29
    if-eqz v15, :cond_2a

    if-eqz v14, :cond_2a

    move-object/from16 v0, v18

    invoke-static {v15, v0, v14}, Lcom/network/android/m;->a(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2a
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_e

    :goto_17
    :try_start_38
    throw v1
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1

    :cond_2b
    const/4 v1, 0x1

    const/16 v2, 0x79

    :try_start_39
    const-string v3, "GET_ATTACHMENT_NOT_AVAILABLE"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    const-string v1, "GetContentMail getAttachmentFileCommandGmail no attachment available (query size null) "

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x79

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/network/android/t;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/network/android/t;->d:Landroid/content/Context;

    const-string v2, "httpPing"

    invoke-static {v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_5
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    goto :goto_15

    :catch_e
    move-exception v2

    :try_start_3a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommandGmail  finally- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1

    goto :goto_17

    :catch_f
    move-exception v2

    :try_start_3b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetContentMail getAttachmentFileCommandGmail  finaly- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_10
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finaly- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_11
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetContentMail getAttachmentFileCommandGmail  finaly- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_9
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2

    goto/16 :goto_e

    :catchall_3
    move-exception v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_16

    :catchall_4
    move-exception v1

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_16

    :catchall_5
    move-exception v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_16

    :catchall_6
    move-exception v1

    move-object/from16 v17, v5

    goto/16 :goto_16

    :catchall_7
    move-exception v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_16

    :catch_12
    move-exception v1

    goto/16 :goto_13

    :catch_13
    move-exception v1

    move-object v2, v14

    goto/16 :goto_13

    :catch_14
    move-exception v1

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_13

    :catch_15
    move-exception v1

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    goto/16 :goto_13

    :catchall_8
    move-exception v1

    move-object v13, v2

    goto/16 :goto_11

    :catchall_9
    move-exception v1

    move-object v13, v2

    goto/16 :goto_11

    :catch_16
    move-exception v1

    goto/16 :goto_9

    :catch_17
    move-exception v1

    move-object v7, v3

    goto/16 :goto_8

    :catch_18
    move-exception v1

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_14

    :catch_19
    move-exception v1

    move-object v3, v7

    goto/16 :goto_14

    :catch_1a
    move-exception v1

    move-object v2, v11

    move-object v3, v7

    goto/16 :goto_14

    :cond_2c
    move-object v11, v3

    goto/16 :goto_d

    :cond_2d
    move-object v8, v2

    goto/16 :goto_b
.end method
