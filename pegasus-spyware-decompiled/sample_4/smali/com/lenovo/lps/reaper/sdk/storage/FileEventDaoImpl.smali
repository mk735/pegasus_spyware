.class public Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;
.super Ljava/lang/Object;
.source "FileEventDaoImpl.java"

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/api/EventDao;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

.field private b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->d:Ljava/util/Random;

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 268
    .local v1, "size":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_1

    .line 269
    :cond_0
    const/4 v2, 0x0

    .line 273
    :goto_0
    return-object v2

    .line 271
    :cond_1
    new-array v0, v1, [B

    .line 272
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 273
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 255
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static a(Ljava/nio/ByteBuffer;[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;)V
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "customParameters"    # [Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 216
    array-length v4, p1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 217
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 218
    .local v3, "param":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getScope()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "param":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 226
    :cond_1
    return-void
.end method


# virtual methods
.method public activeSession()V
    .locals 8

    .prologue
    .line 52
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->initialize()V

    .line 53
    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 54
    .local v3, "metaBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v4, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->readRecord(Ljava/nio/ByteBuffer;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->load(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const-string v4, "FileEventDaoImpl"

    const-string v6, "DB load success (in activeSession())"

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v4, "FileEventDaoImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getCurrentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setPreviousView(J)V

    .line 61
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setCurrentTime(J)V

    .line 62
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionCounter()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setSessionCounter(I)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->flushMeta()V

    .line 72
    monitor-exit v5

    .line 76
    .end local v0    # "currentTime":J
    .end local v3    # "metaBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-void

    .line 64
    .restart local v0    # "currentTime":J
    .restart local v3    # "metaBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    const-string v4, "FileEventDaoImpl"

    const-string v6, "DB load false (in activeSession())"

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setCurrentTime(J)V

    .line 66
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setFirstView(J)V

    .line 67
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setPreviousView(J)V

    .line 68
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setSessionId(I)V

    .line 69
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setSessionCounter(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .end local v0    # "currentTime":J
    .end local v3    # "metaBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "FileEventDaoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when initialize file storage. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public countEvent()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->size()I

    move-result v0

    return v0
.end method

.method public deleteEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)Z
    .locals 5
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 295
    const-string v2, "deleteEvents"

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->push(Ljava/lang/String;)V

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    if-eqz p1, :cond_0

    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->pull()I

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->flushMeta()V

    .line 304
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->pop()V

    const/4 v2, 0x1

    .line 309
    :goto_1
    return v2

    .line 304
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "FileEventDaoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when delete events. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->pop()V

    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->pop()V

    throw v2
.end method

.method protected flushMeta()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->position(Ljava/lang/Long;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 237
    .local v0, "metaBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->writeRecord(Ljava/nio/ByteBuffer;)I

    .line 238
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->flush()V

    .line 239
    return-void
.end method

.method public getEvents()[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getEvents(I)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public getEvents(I)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 42
    .param p1, "eventNum"    # I

    .prologue
    .line 96
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    move/from16 v26, p1

    .line 98
    .local v26, "eveNum":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->size()I

    move-result v36

    move/from16 v0, p1

    move/from16 v1, v36

    if-le v0, v1, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->size()I

    move-result v26

    .line 101
    :cond_0
    move/from16 v0, v26

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-object/from16 v27, v0

    .line 102
    .local v27, "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail()I

    move-result v32

    .line 103
    .local v32, "index":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    move-object/from16 v36, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1000

    mul-long v38, v38, v40

    const-wide/16 v40, 0x1000

    add-long v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->position(Ljava/lang/Long;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->readRecord(Ljava/nio/ByteBuffer;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 107
    .local v3, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 108
    .local v5, "sessionId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "account":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 110
    .local v7, "randomVal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 111
    .local v8, "timestampFirst":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 112
    .local v10, "timestampPre":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 113
    .local v12, "timestampCur":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 114
    .local v14, "timestampEvent":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 115
    .local v16, "visits":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v19

    .line 118
    .local v19, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 119
    .local v20, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    .line 120
    .local v21, "networkStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v22

    .line 121
    .local v22, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v23

    .line 122
    .local v23, "userIdClass":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/Event;

    invoke-direct/range {v2 .. v23}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v2, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->readCustomParameters(Ljava/nio/ByteBuffer;Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(I)I

    move-result v32

    .line 127
    aput-object v2, v27, v29

    .line 103
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 129
    .end local v2    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v3    # "id":J
    .end local v5    # "sessionId":I
    .end local v6    # "account":Ljava/lang/String;
    .end local v7    # "randomVal":I
    .end local v8    # "timestampFirst":J
    .end local v10    # "timestampPre":J
    .end local v12    # "timestampCur":J
    .end local v14    # "timestampEvent":J
    .end local v16    # "visits":I
    .end local v17    # "category":Ljava/lang/String;
    .end local v18    # "action":Ljava/lang/String;
    .end local v19    # "label":Ljava/lang/String;
    .end local v20    # "value":I
    .end local v21    # "networkStatus":I
    .end local v22    # "userId":Ljava/lang/String;
    .end local v23    # "userIdClass":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v36

    if-eqz v36, :cond_3

    .line 130
    const-string v36, "SendingEvent"

    const-string v38, "Sending......"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object/from16 v24, v27

    .local v24, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v33, v0

    .local v33, "len$":I
    const/16 v30, 0x0

    .local v30, "i$":I
    move/from16 v31, v30

    .end local v24    # "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v30    # "i$":I
    .end local v33    # "len$":I
    .local v31, "i$":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    aget-object v2, v24, v31

    .line 132
    .restart local v2    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    const-string v36, "SendingEvent"

    const-string v38, " "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v36, "SendingEvent"

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/Event;->toStringFull()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    move-result-object v36

    if-eqz v36, :cond_2

    .line 135
    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    move-result-object v25

    .local v25, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v34, v0

    .local v34, "len$":I
    const/16 v30, 0x0

    .end local v31    # "i$":I
    .restart local v30    # "i$":I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    aget-object v35, v25, v30

    .line 136
    .local v35, "param":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    const-string v36, "SendingEvent"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "The Event Param:  [Index]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getIndex()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " [Name]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " [Value]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 131
    .end local v25    # "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .end local v30    # "i$":I
    .end local v34    # "len$":I
    .end local v35    # "param":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    :cond_2
    add-int/lit8 v30, v31, 0x1

    .restart local v30    # "i$":I
    move/from16 v31, v30

    .end local v30    # "i$":I
    .restart local v31    # "i$":I
    goto :goto_1

    .line 141
    .end local v2    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v31    # "i$":I
    :cond_3
    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v26    # "eveNum":I
    .end local v27    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v29    # "i":I
    .end local v32    # "index":I
    :goto_3
    return-object v27

    .line 142
    .restart local v26    # "eveNum":I
    :catchall_0
    move-exception v36

    :try_start_2
    monitor-exit v37

    throw v36
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .end local v26    # "eveNum":I
    :catch_0
    move-exception v28

    .line 144
    .local v28, "ex":Ljava/lang/Exception;
    const-string v36, "FileEventDaoImpl"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error when fetch Event object from storage. "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v27, 0x0

    goto :goto_3
.end method

.method protected readCustomParameters(Ljava/nio/ByteBuffer;Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 159
    .local v1, "paramNum":I
    if-lez v1, :cond_1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_1

    .line 160
    new-array v2, v1, [Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .line 161
    .local v2, "params":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 162
    new-instance v3, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p2, v2}, Lcom/lenovo/lps/reaper/sdk/api/Event;->setCustomParameters([Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;)V

    .line 166
    .end local v0    # "i":I
    .end local v2    # "params":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    :cond_1
    return-void
.end method

.method public saveEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 10
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    const-wide/16 v8, 0x1000

    .line 170
    const-string v4, "FileEventDaoImpl"

    const-string v5, "SavingEvent."

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    monitor-enter v5
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->full()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->pull()I

    move-result v3

    .line 175
    .local v3, "tailIndex":I
    const-string v4, "FileEventDaoImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has been deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v3    # "tailIndex":I
    :cond_0
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head()I

    move-result v2

    .line 178
    .local v2, "index":I
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    int-to-long v6, v2

    mul-long/2addr v6, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->position(Ljava/lang/Long;)V

    .line 179
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 180
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->nextId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 181
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->d:Ljava/util/Random;

    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getFirstView()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getPreviousView()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getCurrentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampEvent()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionCounter()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 185
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getValue()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 189
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getUserIdClass()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a(Ljava/nio/ByteBuffer;[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;)V

    .line 193
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 194
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->writeRecord(Ljava/nio/ByteBuffer;)I

    .line 195
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->offer()I

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->flushMeta()V

    .line 197
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v2    # "index":I
    :goto_0
    return-void

    .line 197
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/nio/BufferOverflowException;
    const-string v4, "FileEventDaoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event Infomation is Too Long Than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "FileEventDaoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when save Event object to storage. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFileStorage(Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;)V
    .locals 0
    .param p1, "fileStorage"    # Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    .line 323
    return-void
.end method

.method public setMeta(Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;)V
    .locals 0
    .param p1, "meta"    # Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->b:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    .line 333
    return-void
.end method

.method public truncate(J)V
    .locals 4
    .param p1, "size"    # J

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->a:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->truncate(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileEventDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when truncate storage file. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
