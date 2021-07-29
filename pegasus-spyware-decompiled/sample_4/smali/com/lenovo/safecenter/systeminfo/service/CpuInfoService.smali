.class public Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;
.super Ljava/lang/Object;
.source "CpuInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 193
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "array":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 208
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 205
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCurCpuFreq()Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    const-string v3, "N/A"

    .line 174
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 177
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 180
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 187
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;

    return-object v0
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .locals 9

    .prologue
    .line 128
    const-string v6, ""

    .line 131
    .local v6, "result":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v8, v0, v7

    .line 133
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 134
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 135
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 136
    .local v3, "in":Ljava/io/InputStream;
    const/16 v7, 0x18

    new-array v5, v7, [B

    .line 137
    .local v5, "re":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    const-string v6, "N/A"

    goto :goto_1
.end method

.method public static getMinCpuFreq()Ljava/lang/String;
    .locals 9

    .prologue
    .line 150
    const-string v6, ""

    .line 153
    .local v6, "result":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v8, v0, v7

    .line 155
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 156
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 157
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 158
    .local v3, "in":Ljava/io/InputStream;
    const/16 v7, 0x18

    new-array v5, v7, [B

    .line 159
    .local v5, "re":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    const-string v6, "N/A"

    goto :goto_1
.end method


# virtual methods
.method public getCpuInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, "fReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 50
    .local v2, "bReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    const-string v11, "/proc/cpuinfo"

    invoke-direct {v8, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v7    # "fReader":Ljava/io/FileReader;
    .local v8, "fReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .local v3, "bReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v9, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 58
    sget-object v11, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v12, "cpuinfo"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v12, "cpuinfo"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "intel"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 60
    const v11, 0x7f0d0720

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 73
    const-string v11, ":\\s+"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "array":[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "cpu_max_freq":Ljava/lang/String;
    const-string v11, "N/A"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 77
    const-string v11, "##"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cpu_max_freq :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0d069b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    :goto_1
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->getMinCpuFreq()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "cpu_min_freq":Ljava/lang/String;
    const-string v11, "N/A"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 85
    const-string v11, "##"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cpu_min_freq :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0d069b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    :goto_2
    const v11, 0x7f0d0699

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const v11, 0x7f0d069a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "cpu_max_freq":Ljava/lang/String;
    .end local v5    # "cpu_min_freq":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v11

    .line 102
    if-eqz v3, :cond_2

    .line 104
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 113
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    move-object v2, v3

    .end local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 120
    .end local v8    # "fReader":Ljava/io/FileReader;
    .end local v9    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "text":Ljava/lang/String;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    :goto_5
    return-object v11

    .line 63
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    .restart local v9    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "text":Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v11, ":\\s+"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1    # "array":[Ljava/lang/String;
    const v11, 0x7f0d0698

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 97
    .end local v1    # "array":[Ljava/lang/String;
    .end local v9    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "text":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 98
    .end local v8    # "fReader":Ljava/io/FileReader;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    :goto_6
    :try_start_6
    sget-object v11, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 102
    if-eqz v2, :cond_5

    .line 104
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 111
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_7
    if-eqz v7, :cond_6

    .line 113
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 120
    :cond_6
    :goto_8
    const/4 v11, 0x0

    goto :goto_5

    .line 80
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "cpu_max_freq":Ljava/lang/String;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    .restart local v9    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "text":Ljava/lang/String;
    :cond_7
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0d069b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 88
    .restart local v5    # "cpu_min_freq":Ljava/lang/String;
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0d069b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v5

    goto/16 :goto_2

    .line 106
    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "cpu_max_freq":Ljava/lang/String;
    .end local v5    # "cpu_min_freq":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 107
    .local v6, "e":Ljava/io/IOException;
    sget-object v12, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 115
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 116
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 106
    .end local v3    # "bReader":Ljava/io/BufferedReader;
    .end local v8    # "fReader":Ljava/io/FileReader;
    .end local v9    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "text":Ljava/lang/String;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    :catch_3
    move-exception v6

    .line 107
    .local v6, "e":Ljava/io/IOException;
    sget-object v11, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 115
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 116
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 100
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_a
    sget-object v11, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 102
    if-eqz v2, :cond_9

    .line 104
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 111
    :cond_9
    :goto_a
    if-eqz v7, :cond_6

    .line 113
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_8

    .line 115
    :catch_6
    move-exception v6

    .line 116
    sget-object v11, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 106
    :catch_7
    move-exception v6

    .line 107
    sget-object v11, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 102
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_b
    if-eqz v2, :cond_a

    .line 104
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 111
    :cond_a
    :goto_c
    if-eqz v7, :cond_b

    .line 113
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 117
    :cond_b
    :goto_d
    throw v11

    .line 106
    :catch_8
    move-exception v6

    .line 107
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 115
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 116
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 102
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "fReader":Ljava/io/FileReader;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    goto :goto_b

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fReader":Ljava/io/FileReader;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    goto :goto_b

    .line 99
    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    :catch_a
    move-exception v6

    move-object v7, v8

    .end local v8    # "fReader":Ljava/io/FileReader;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    goto :goto_9

    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    :catch_b
    move-exception v6

    move-object v2, v3

    .end local v3    # "bReader":Ljava/io/BufferedReader;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "fReader":Ljava/io/FileReader;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    goto :goto_9

    .line 97
    :catch_c
    move-exception v6

    goto/16 :goto_6

    .end local v7    # "fReader":Ljava/io/FileReader;
    .restart local v8    # "fReader":Ljava/io/FileReader;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8    # "fReader":Ljava/io/FileReader;
    .restart local v7    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_6
.end method
