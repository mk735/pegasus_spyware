.class public Lcom/lenovo/performancecenter/coreui/util/MemoryTools;
.super Ljava/lang/Object;
.source "MemoryTools.java"


# instance fields
.field private a:[B

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a:[B

    return-void
.end method

.method private static a()J
    .locals 15

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "availMemory":J
    const/4 v2, 0x0

    .line 77
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    const-string v14, "/proc/meminfo"

    invoke-direct {v13, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v3, "buf":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 82
    .local v12, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 85
    .local v11, "i":I
    const-wide/16 v9, 0x0

    .line 86
    .local v9, "freeMem":J
    const-wide/16 v6, 0x0

    .line 87
    .local v6, "buffers":J
    const-wide/16 v4, 0x0

    .line 90
    .local v4, "buffermem":J
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 92
    if-nez v11, :cond_0

    .line 106
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v13, 0x1

    if-ne v11, v13, :cond_1

    .line 97
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_1

    .line 98
    :cond_1
    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    .line 100
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 109
    :cond_3
    add-long v13, v9, v4

    add-long v0, v13, v6

    .line 118
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 127
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "buffermem":J
    .end local v6    # "buffers":J
    .end local v9    # "freeMem":J
    .end local v11    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    return-wide v0

    .line 122
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "buffermem":J
    .restart local v6    # "buffers":J
    .restart local v9    # "freeMem":J
    .restart local v11    # "i":I
    .restart local v12    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 126
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 112
    .end local v4    # "buffermem":J
    .end local v6    # "buffers":J
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "freeMem":J
    .end local v11    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 118
    :goto_3
    if-eqz v2, :cond_4

    .line 119
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 122
    :catch_2
    move-exception v8

    .line 124
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 114
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    .line 118
    :goto_4
    if-eqz v2, :cond_4

    .line 119
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 122
    :catch_4
    move-exception v8

    .line 124
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 118
    :goto_5
    if-eqz v2, :cond_5

    .line 119
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 125
    :cond_5
    :goto_6
    throw v13

    .line 122
    :catch_5
    move-exception v8

    .line 124
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 117
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "buffermem":J
    .restart local v6    # "buffers":J
    .restart local v9    # "freeMem":J
    .restart local v11    # "i":I
    .restart local v12    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v13

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 114
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v13

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 112
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v13

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3
    .param p0, "readLine"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 142
    :goto_0
    return-wide v1

    :catch_0
    move-exception v1

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private static a([BI)J
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 161
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 162
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 163
    move v0, p1

    .line 164
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 166
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 167
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 170
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 174
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 172
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 174
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private static a([BILjava/lang/String;)Z
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 148
    .local v0, "LEN":I
    add-int v3, p1, v0

    array-length v4, p0

    if-lt v3, v4, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 152
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getMemInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 262
    invoke-static {p0, p1}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getMemInfoForPid(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemInfoForPid(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 269
    const/4 v7, 0x1

    new-array v3, v7, [I

    const/4 v7, 0x0

    aput p1, v3, v7

    .line 271
    .local v3, "pids":[I
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 273
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 274
    .local v2, "mem":[Landroid/os/Debug$MemoryInfo;
    const/4 v5, 0x0

    .line 275
    .local v5, "totalClear":I
    array-length v7, v2

    if-lez v7, :cond_1

    .line 276
    array-length v4, v3

    .line 277
    .local v4, "pidsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 278
    aget-object v7, v2, v1

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    .line 279
    .local v6, "totalPss":I
    if-lez v6, :cond_0

    .line 280
    mul-int/lit16 v7, v6, 0x400

    add-int/2addr v5, v7

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    .end local v4    # "pidsSize":I
    .end local v6    # "totalPss":I
    :cond_1
    return v5
.end method

.method public static getMemInfoForPid(Landroid/content/Context;[I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pids"    # [I

    .prologue
    .line 289
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 291
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 292
    .local v2, "mem":[Landroid/os/Debug$MemoryInfo;
    const/4 v4, 0x0

    .line 293
    .local v4, "totalClear":I
    array-length v6, v2

    if-lez v6, :cond_1

    .line 294
    array-length v3, p1

    .line 295
    .local v3, "pidsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 296
    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    .line 297
    .local v5, "totalPss":I
    if-lez v5, :cond_0

    .line 298
    mul-int/lit16 v6, v5, 0x400

    add-int/2addr v4, v6

    .line 295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    .end local v3    # "pidsSize":I
    .end local v5    # "totalPss":I
    :cond_1
    return v4
.end method

.method public static getMemInfos(Landroid/content/Context;[I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pids"    # [I

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getMemInfoForPid(Landroid/content/Context;[I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSystemMeminfo()I
    .locals 22

    .prologue
    .line 193
    const/4 v13, 0x0

    .line 194
    .local v13, "scale":I
    const/4 v2, 0x0

    .line 196
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    const-string v19, "/proc/meminfo"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v3, "buf":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 201
    .local v12, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 203
    .local v11, "i":I
    const-wide/16 v16, 0x0

    .line 204
    .local v16, "totalMem":J
    const-wide/16 v9, 0x0

    .line 205
    .local v9, "freeMem":J
    const-wide/16 v4, 0x0

    .line 206
    .local v4, "buffermem":J
    const-wide/16 v6, 0x0

    .line 208
    .local v6, "buffers":J
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 210
    if-nez v11, :cond_0

    .line 212
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J

    move-result-wide v16

    .line 224
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    .line 215
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_1

    .line 216
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_2

    .line 218
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 219
    :cond_2
    invoke-static {v12}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 227
    :cond_3
    sub-long v18, v16, v9

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    .line 228
    sub-long v18, v16, v9

    sub-long v18, v18, v4

    sub-long v14, v18, v6

    .line 229
    .local v14, "t":J
    const-string v18, "MemoryTools"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "used == "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-wide/16 v18, 0x64

    mul-long v18, v18, v14

    div-long v18, v18, v16
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v0, v18

    long-to-int v13, v0

    .line 242
    .end local v14    # "t":J
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 251
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "buffermem":J
    .end local v6    # "buffers":J
    .end local v9    # "freeMem":J
    .end local v11    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "totalMem":J
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return v13

    .line 246
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "buffermem":J
    .restart local v6    # "buffers":J
    .restart local v9    # "freeMem":J
    .restart local v11    # "i":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v16    # "totalMem":J
    :catch_0
    move-exception v8

    .line 248
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 250
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 236
    .end local v4    # "buffermem":J
    .end local v6    # "buffers":J
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "freeMem":J
    .end local v11    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "totalMem":J
    :catch_1
    move-exception v18

    .line 242
    :goto_3
    if-eqz v2, :cond_5

    .line 243
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 246
    :catch_2
    move-exception v8

    .line 248
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 238
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v18

    .line 242
    :goto_4
    if-eqz v2, :cond_5

    .line 243
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 246
    :catch_4
    move-exception v8

    .line 248
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 242
    :goto_5
    if-eqz v2, :cond_6

    .line 243
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 249
    :cond_6
    :goto_6
    throw v18

    .line 246
    :catch_5
    move-exception v8

    .line 248
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 241
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "buffermem":J
    .restart local v6    # "buffers":J
    .restart local v9    # "freeMem":J
    .restart local v11    # "i":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v16    # "totalMem":J
    :catchall_1
    move-exception v18

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 238
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v18

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 236
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v18

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public getSystemMeminfoFree()I
    .locals 8

    .prologue
    .line 256
    invoke-static {}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a()J

    move-result-wide v0

    .line 257
    .local v0, "freeMemory":J
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getTotalMemory()J

    move-result-wide v6

    div-long v2, v4, v6

    .line 258
    .local v2, "scale":J
    long-to-int v4, v2

    return v4
.end method

.method public getTotalMemory()J
    .locals 10

    .prologue
    const-wide/16 v5, 0x0

    .line 22
    const-wide/16 v7, 0x0

    :try_start_0
    iput-wide v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->b:J

    .line 23
    new-instance v3, Ljava/io/FileInputStream;

    const-string v7, "/proc/meminfo"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 24
    .local v3, "is":Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a:[B

    invoke-virtual {v3, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 25
    .local v4, "len":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 26
    iget-object v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a:[B

    array-length v0, v7

    .line 27
    .local v0, "BUF_LEN":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    iget-wide v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->b:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_2

    .line 28
    iget-object v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a:[B

    const-string v8, "MemTotal"

    invoke-static {v7, v2, v8}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a([BILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    add-int/lit8 v2, v2, 0x7

    .line 30
    iget-object v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a:[B

    invoke-static {v7, v2}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a([BI)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->b:J

    .line 32
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v7, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->a:[B

    aget-byte v7, v7, v2

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_2
    iget-wide v5, p0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->b:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "BUF_LEN":I
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :goto_2
    return-wide v5

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "zzj"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getTotalMemory] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 37
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    goto :goto_2
.end method
