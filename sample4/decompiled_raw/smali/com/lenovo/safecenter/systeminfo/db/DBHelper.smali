.class public Lcom/lenovo/safecenter/systeminfo/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field public static final DATABASE_FILENAME:Ljava/lang/String; = "numinfo.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static f:Lcom/lenovo/safecenter/systeminfo/db/DBHelper;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->f:Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    const-string v0, "numinfo.db"

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->d:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->e:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numinfo.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()V
    .locals 11

    .prologue
    .line 129
    const/4 v7, 0x0

    .line 130
    .local v7, "inStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 132
    .local v5, "fileOutStream":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "dbFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->b:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 141
    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 143
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    const-string v9, "Coping database file ... "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v8, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 145
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutStream":Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 147
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 149
    .local v1, "count":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    .line 150
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 155
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 156
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    if-eqz v5, :cond_1

    .line 166
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 173
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 175
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 183
    :cond_2
    :goto_3
    return-void

    .line 153
    .end local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v6

    .line 164
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v5, :cond_5

    .line 166
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 173
    :cond_5
    :goto_4
    if-eqz v7, :cond_2

    .line 175
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 177
    :catch_1
    move-exception v4

    .line 178
    .local v4, "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 168
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 169
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 168
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v4

    .line 169
    .local v4, "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 178
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 157
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 158
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_8
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 164
    if-eqz v5, :cond_6

    .line 166
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 173
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_6
    if-eqz v7, :cond_2

    .line 175
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 177
    :catch_6
    move-exception v4

    .line 178
    .local v4, "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 168
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v4

    .line 169
    .local v4, "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 159
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 160
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 164
    if-eqz v5, :cond_7

    .line 166
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 173
    :cond_7
    :goto_8
    if-eqz v7, :cond_2

    .line 175
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_3

    .line 177
    :catch_9
    move-exception v4

    .line 178
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 168
    :catch_a
    move-exception v4

    .line 169
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_9
    if-eqz v5, :cond_8

    .line 166
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 173
    :cond_8
    :goto_a
    if-eqz v7, :cond_9

    .line 175
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 179
    :cond_9
    :goto_b
    throw v8

    .line 168
    :catch_b
    move-exception v4

    .line 169
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 178
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 159
    .end local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 157
    .end local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileOutStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 155
    :catch_f
    move-exception v4

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/db/DBHelper;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->f:Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 40
    sget-object v1, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->f:Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->f:Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->b()V

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->f:Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 58
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 67
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 61
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v3, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, v0

    .line 67
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 83
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-object v0

    .line 85
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->d:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0

    .line 80
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
