.class public Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;
.super Ljava/lang/Object;
.source "MemoryInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SystemVersion()F
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 113
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 118
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a([BI)J
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 203
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 204
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 205
    move v0, p1

    .line 206
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 208
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 209
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 212
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 216
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 214
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 216
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v3, "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/mounts"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buffer":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 330
    const-string v5, "uid=1000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "gid=1015"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "asec"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 332
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "arrayOfString":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method private static a([BILjava/lang/String;)Z
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    .local v0, "N":I
    add-int v3, p1, v0

    array-length v4, p0

    if-lt v3, v4, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v2

    .line 195
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 196
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;

    return-object v0
.end method


# virtual methods
.method public getFreeMem(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 54
    .local v3, "manager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 56
    .local v2, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 58
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 60
    .local v0, "free":J
    return-wide v0
.end method

.method public getMemeryInfo()Ljava/lang/String;
    .locals 19

    .prologue
    .line 220
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    .line 221
    .local v3, "c":Landroid/content/Context;
    const/4 v5, 0x0

    .line 222
    .local v5, "fReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 227
    .local v1, "bReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v9, "strBuffer":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/io/FileReader;

    const-string v15, "/proc/meminfo"

    invoke-direct {v6, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v5    # "fReader":Ljava/io/FileReader;
    .local v6, "fReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .local v2, "bReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 234
    const-string v15, "total"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->readAvailMem(Ljava/lang/String;)J

    move-result-wide v11

    .line 236
    .local v11, "totalMem":J
    const-string v15, "used"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->readAvailMem(Ljava/lang/String;)J

    move-result-wide v13

    .line 237
    .local v13, "usedMem":J
    sub-long v7, v11, v13

    .line 239
    .local v7, "freeMem":J
    const v15, 0x7f0d069c

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v3, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v3, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v15

    .line 248
    if-eqz v2, :cond_0

    .line 250
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 257
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 259
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 268
    .end local v6    # "fReader":Ljava/io/FileReader;
    .end local v7    # "freeMem":J
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "totalMem":J
    .end local v13    # "usedMem":J
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :goto_2
    return-object v15

    .line 252
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    .restart local v7    # "freeMem":J
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "text":Ljava/lang/String;
    .restart local v11    # "totalMem":J
    .restart local v13    # "usedMem":J
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/io/IOException;
    sget-object v16, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 262
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "freeMem":J
    .end local v11    # "totalMem":J
    .end local v13    # "usedMem":J
    :cond_2
    if-eqz v2, :cond_3

    .line 250
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 257
    :cond_3
    :goto_3
    if-eqz v6, :cond_9

    .line 259
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 268
    .end local v6    # "fReader":Ljava/io/FileReader;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "text":Ljava/lang/String;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :cond_4
    :goto_4
    const/4 v15, 0x0

    goto :goto_2

    .line 252
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "text":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 253
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 261
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 262
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 263
    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto :goto_4

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "text":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 244
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 248
    if-eqz v1, :cond_5

    .line 250
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 257
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_6
    if-eqz v5, :cond_4

    .line 259
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 261
    :catch_5
    move-exception v4

    .line 262
    .local v4, "e":Ljava/io/IOException;
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 252
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v4

    .line 253
    .local v4, "e":Ljava/io/IOException;
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 245
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 246
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_a
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 248
    if-eqz v1, :cond_6

    .line 250
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 257
    :cond_6
    :goto_8
    if-eqz v5, :cond_4

    .line 259
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    .line 261
    :catch_8
    move-exception v4

    .line 262
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 252
    :catch_9
    move-exception v4

    .line 253
    sget-object v15, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_9
    if-eqz v1, :cond_7

    .line 250
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 257
    :cond_7
    :goto_a
    if-eqz v5, :cond_8

    .line 259
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 263
    :cond_8
    :goto_b
    throw v15

    .line 252
    :catch_a
    move-exception v4

    .line 253
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 261
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 262
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto :goto_9

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v15

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto :goto_9

    .line 245
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    :catch_c
    move-exception v4

    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto :goto_7

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    :catch_d
    move-exception v4

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto :goto_7

    .line 243
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    :catch_f
    move-exception v4

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v6    # "fReader":Ljava/io/FileReader;
    .restart local v10    # "text":Ljava/lang/String;
    :cond_9
    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_4
.end method

.method public getRomAndSDcardSizeInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 33
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 272
    const-string v23, ""

    .line 273
    .local v23, "info":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 276
    .local v9, "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 277
    new-instance v16, Landroid/os/StatFs;

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 278
    .local v16, "extraStatFs":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v26

    move/from16 v0, v26

    int-to-long v14, v0

    .line 279
    .local v14, "extraBlockSize":J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v26

    move/from16 v0, v26

    int-to-long v12, v0

    .line 280
    .local v12, "extraBlockCount":J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v26

    move/from16 v0, v26

    int-to-long v10, v0

    .line 281
    .local v10, "extraAvailCount":J
    const v26, 0x7f0d069f

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    mul-long v29, v12, v14

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    mul-long v29, v10, v14

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 285
    new-instance v24, Landroid/os/StatFs;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 286
    .local v24, "innerStatFs":Landroid/os/StatFs;
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockSize()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .line 287
    .local v21, "inblockSize":J
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockCount()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 288
    .local v19, "inblockCount":J
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 289
    .local v17, "inavailCount":J
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const v27, 0x7f0d069e

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    mul-long v30, v19, v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    mul-long v30, v17, v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    .line 308
    .end local v10    # "extraAvailCount":J
    .end local v12    # "extraBlockCount":J
    .end local v14    # "extraBlockSize":J
    .end local v16    # "extraStatFs":Landroid/os/StatFs;
    .end local v17    # "inavailCount":J
    .end local v19    # "inblockCount":J
    .end local v21    # "inblockSize":J
    .end local v24    # "innerStatFs":Landroid/os/StatFs;
    :cond_0
    :goto_0
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 309
    const v26, 0x7f0d069d

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomTotalSize()J

    move-result-wide v29

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAvailableSize()J

    move-result-wide v29

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 319
    .end local v9    # "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v23

    .line 295
    .restart local v9    # "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 296
    new-instance v24, Landroid/os/StatFs;

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v24    # "innerStatFs":Landroid/os/StatFs;
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockSize()I

    move-result v26

    move/from16 v0, v26

    int-to-long v7, v0

    .line 298
    .local v7, "blockSize":J
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockCount()I

    move-result v26

    move/from16 v0, v26

    int-to-long v5, v0

    .line 299
    .local v5, "blockCount":J
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v26

    move/from16 v0, v26

    int-to-long v3, v0

    .line 300
    .local v3, "availCount":J
    const v26, 0x7f0d069e

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    mul-long v29, v5, v7

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    mul-long v29, v3, v7

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v23

    goto/16 :goto_0

    .line 304
    .end local v3    # "availCount":J
    .end local v5    # "blockCount":J
    .end local v7    # "blockSize":J
    .end local v9    # "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "innerStatFs":Landroid/os/StatFs;
    :catch_0
    move-exception v25

    .line 305
    .local v25, "localException":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const-string v23, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 309
    const v26, 0x7f0d069d

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomTotalSize()J

    move-result-wide v29

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAvailableSize()J

    move-result-wide v29

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1

    .line 308
    .end local v25    # "localException":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    const-string v27, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 309
    const v27, 0x7f0d069d

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomTotalSize()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAvailableSize()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 308
    :goto_2
    throw v26

    .line 313
    :cond_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0d069d

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomTotalSize()J

    move-result-wide v31

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAvailableSize()J

    move-result-wide v31

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .restart local v25    # "localException":Ljava/lang/Exception;
    :cond_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const v27, 0x7f0d069d

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomTotalSize()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAvailableSize()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v25    # "localException":Ljava/lang/Exception;
    :goto_3
    goto/16 :goto_1

    .restart local v9    # "extendStorageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const v27, 0x7f0d069d

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomTotalSize()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAvailableSize()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_3
.end method

.method public getRomAvailableSize()J
    .locals 5

    .prologue
    .line 352
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, "localStatFs":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v0, v3

    .line 354
    .local v0, "available":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    return-wide v3
.end method

.method public getRomTotalSize()J
    .locals 5

    .prologue
    .line 346
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "localStatFs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v1, v3

    .line 348
    .local v1, "total":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v1

    return-wide v3
.end method

.method public getTotalMem(Landroid/content/Context;)J
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, "fReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 74
    .local v1, "bReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v4    # "fReader":Ljava/io/FileReader;
    .local v5, "fReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .local v2, "bReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "text":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 80
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "array":[Ljava/lang/String;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    if-eqz v2, :cond_0

    .line 93
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 102
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 109
    .end local v0    # "array":[Ljava/lang/String;
    .end local v5    # "fReader":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :goto_2
    return-wide v7

    .line 95
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    sget-object v9, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 105
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v2, :cond_3

    .line 93
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 100
    :cond_3
    :goto_3
    if-eqz v5, :cond_9

    .line 102
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 109
    .end local v5    # "fReader":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :cond_4
    :goto_4
    const-wide/16 v7, -0x1

    goto :goto_2

    .line 95
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 96
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 105
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 106
    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto :goto_4

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "text":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    if-eqz v1, :cond_5

    .line 93
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 100
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_6
    if-eqz v4, :cond_4

    .line 102
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 104
    :catch_5
    move-exception v3

    .line 105
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 95
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 89
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_a
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 91
    if-eqz v1, :cond_6

    .line 93
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 100
    :cond_6
    :goto_8
    if-eqz v4, :cond_4

    .line 102
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    .line 104
    :catch_8
    move-exception v3

    .line 105
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 95
    :catch_9
    move-exception v3

    .line 96
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 91
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_9
    if-eqz v1, :cond_7

    .line 93
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 100
    :cond_7
    :goto_a
    if-eqz v4, :cond_8

    .line 102
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 106
    :cond_8
    :goto_b
    throw v7

    .line 95
    :catch_a
    move-exception v3

    .line 96
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 105
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 91
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto :goto_9

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto :goto_9

    .line 88
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto :goto_7

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :catch_d
    move-exception v3

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto :goto_7

    .line 86
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :catch_e
    move-exception v3

    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    :catch_f
    move-exception v3

    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v5    # "fReader":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :cond_9
    move-object v1, v2

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_4
.end method

.method public declared-synchronized readAvailMem(Ljava/lang/String;)J
    .locals 25
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->SystemVersion()F

    move-result v21

    .line 123
    .local v21, "version":F
    const/16 v20, 0x0

    .line 124
    .local v20, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/high16 v22, 0x40400000    # 3.0f

    cmpl-float v22, v21, v22

    if-lez v22, :cond_0

    .line 125
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v20

    .line 128
    :cond_0
    const-wide/16 v18, 0x0

    .line 129
    .local v18, "returnValue":J
    const/4 v6, 0x0

    .line 130
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v9, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v9, "mBuffer":[B
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    const-string v22, "/proc/meminfo"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    const-wide/16 v14, 0x0

    .line 134
    .local v14, "memFree":J
    const-wide/16 v12, 0x0

    .line 135
    .local v12, "memCached":J
    const-wide/16 v16, 0x0

    .line 136
    .local v16, "memTotal":J
    const-wide/16 v10, 0x0

    .line 137
    .local v10, "memBuffers":J
    :try_start_2
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 139
    .local v8, "len":I
    array-length v3, v9

    .line 141
    .local v3, "BUFLEN":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_7

    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-eqz v22, :cond_1

    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-nez v22, :cond_7

    .line 142
    :cond_1
    const-string v22, "MemTotal"

    move-object/from16 v0, v22

    invoke-static {v9, v5, v0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 143
    add-int/lit8 v5, v5, 0x8

    .line 144
    invoke-static {v9, v5}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BI)J

    move-result-wide v16

    .line 155
    :cond_2
    :goto_1
    if-ge v5, v3, :cond_6

    aget-byte v22, v9, v5

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 145
    :cond_3
    const-string v22, "MemFree"

    move-object/from16 v0, v22

    invoke-static {v9, v5, v0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 146
    add-int/lit8 v5, v5, 0x7

    .line 147
    invoke-static {v9, v5}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BI)J

    move-result-wide v14

    goto :goto_1

    .line 148
    :cond_4
    const-string v22, "Cached"

    move-object/from16 v0, v22

    invoke-static {v9, v5, v0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 149
    add-int/lit8 v5, v5, 0x6

    .line 150
    invoke-static {v9, v5}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BI)J

    move-result-wide v12

    goto :goto_1

    .line 151
    :cond_5
    const-string v22, "Buffers"

    move-object/from16 v0, v22

    invoke-static {v9, v5, v0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 152
    add-int/lit8 v5, v5, 0x6

    .line 153
    invoke-static {v9, v5}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a([BI)J

    move-result-wide v10

    goto :goto_1

    .line 141
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    :cond_7
    const-string v22, "total"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 161
    sget-object v22, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAvailMem()...total="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    move-wide/from16 v18, v16

    .line 175
    :cond_8
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :goto_3
    if-eqz v20, :cond_10

    .line 185
    :try_start_4
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v7

    .line 188
    .end local v3    # "BUFLEN":I
    .end local v5    # "i":I
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .end local v10    # "memBuffers":J
    .end local v12    # "memCached":J
    .end local v14    # "memFree":J
    .end local v16    # "memTotal":J
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_9
    :goto_4
    monitor-exit p0

    return-wide v18

    .line 163
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "BUFLEN":I
    .restart local v5    # "i":I
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "len":I
    .restart local v10    # "memBuffers":J
    .restart local v12    # "memCached":J
    .restart local v14    # "memFree":J
    .restart local v16    # "memTotal":J
    :cond_a
    :try_start_5
    const-string v22, "used"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 164
    sub-long v22, v16, v14

    sub-long v22, v22, v12

    sub-long v18, v22, v10

    .line 165
    sget-object v22, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAvailMem()...used="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 170
    .end local v3    # "BUFLEN":I
    .end local v5    # "i":I
    .end local v8    # "len":I
    :catch_0
    move-exception v22

    move-object v6, v7

    .line 175
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v10    # "memBuffers":J
    .end local v12    # "memCached":J
    .end local v14    # "memFree":J
    .end local v16    # "memTotal":J
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v6, :cond_b

    .line 177
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    :cond_b
    :goto_6
    if-eqz v20, :cond_9

    .line 185
    :try_start_7
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 122
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v9    # "mBuffer":[B
    .end local v18    # "returnValue":J
    .end local v20    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v21    # "version":F
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 166
    .restart local v3    # "BUFLEN":I
    .restart local v5    # "i":I
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "len":I
    .restart local v9    # "mBuffer":[B
    .restart local v10    # "memBuffers":J
    .restart local v12    # "memCached":J
    .restart local v14    # "memFree":J
    .restart local v16    # "memTotal":J
    .restart local v18    # "returnValue":J
    .restart local v20    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v21    # "version":F
    :cond_c
    :try_start_8
    const-string v22, "cache"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 167
    sget-object v22, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->a:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAvailMem()...cache="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 168
    move-wide/from16 v18, v12

    goto :goto_2

    .line 180
    :catch_1
    move-exception v4

    .line 182
    .local v4, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 180
    .end local v3    # "BUFLEN":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .end local v10    # "memBuffers":J
    .end local v12    # "memCached":J
    .end local v14    # "memFree":J
    .end local v16    # "memTotal":J
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 182
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 171
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 172
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 175
    if-eqz v6, :cond_d

    .line 177
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 184
    :cond_d
    :goto_8
    if-eqz v20, :cond_9

    .line 185
    :try_start_c
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_4

    .line 180
    :catch_4
    move-exception v4

    .line 182
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 174
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    .line 175
    :goto_9
    if-eqz v6, :cond_e

    .line 177
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 184
    :cond_e
    :goto_a
    if-eqz v20, :cond_f

    .line 185
    :try_start_e
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_f
    throw v22

    .line 180
    :catch_5
    move-exception v4

    .line 182
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_a

    .line 174
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "memBuffers":J
    .restart local v12    # "memCached":J
    .restart local v14    # "memFree":J
    .restart local v16    # "memTotal":J
    :catchall_2
    move-exception v22

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_9

    .line 171
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .line 170
    .end local v10    # "memBuffers":J
    .end local v12    # "memCached":J
    .end local v14    # "memFree":J
    .end local v16    # "memTotal":J
    :catch_7
    move-exception v22

    goto :goto_5

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "BUFLEN":I
    .restart local v5    # "i":I
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "len":I
    .restart local v10    # "memBuffers":J
    .restart local v12    # "memCached":J
    .restart local v14    # "memFree":J
    .restart local v16    # "memTotal":J
    :cond_10
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method
