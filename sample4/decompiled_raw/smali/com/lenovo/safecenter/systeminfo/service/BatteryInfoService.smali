.class public Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;
.super Ljava/lang/Object;
.source "BatteryInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v5, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 140
    .local v3, "fReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 141
    .local v0, "bReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 143
    .local v6, "resultString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v3    # "fReader":Ljava/io/FileReader;
    .local v4, "fReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .local v1, "bReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 156
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    :cond_0
    if-eqz v0, :cond_1

    .line 158
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 165
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 167
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 176
    :cond_2
    :goto_1
    return-object v6

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 170
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    if-eqz v0, :cond_3

    .line 158
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 165
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    if-eqz v3, :cond_2

    .line 167
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 169
    :catch_3
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_8
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 156
    if-eqz v0, :cond_4

    .line 158
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 165
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_5
    if-eqz v3, :cond_2

    .line 167
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    .line 169
    :catch_6
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 156
    if-eqz v0, :cond_5

    .line 158
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 165
    :cond_5
    :goto_7
    if-eqz v3, :cond_2

    .line 167
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_1

    .line 169
    :catch_9
    move-exception v2

    .line 170
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 160
    :catch_a
    move-exception v2

    .line 161
    sget-object v7, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v0, :cond_6

    .line 158
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 165
    :cond_6
    :goto_9
    if-eqz v3, :cond_7

    .line 167
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 171
    :cond_7
    :goto_a
    throw v7

    .line 160
    :catch_b
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 170
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto :goto_8

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto :goto_8

    .line 153
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_e
    move-exception v2

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto :goto_6

    .line 151
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_f
    move-exception v2

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_10
    move-exception v2

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .line 149
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_11
    move-exception v2

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_12
    move-exception v2

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    if-nez v0, :cond_0

    .line 59
    const-class v1, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    monitor-enter v1

    .line 61
    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBatteryInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v0, "strInfo":Ljava/lang/StringBuffer;
    const v1, 0x7f0d06a0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->getCapacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const v1, 0x7f0d06a1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->getVoltage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const v1, 0x7f0d06a2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->getTemperature()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u2103\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const v1, 0x7f0d06a4

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->getBatteryType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBatteryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "/sys/class/power_supply/battery/technology"

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .locals 2

    .prologue
    .line 74
    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "capacity":I
    return v0
.end method

.method public getCurrent()I
    .locals 2

    .prologue
    .line 110
    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getTemperature()I
    .locals 2

    .prologue
    .line 124
    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    const/4 v1, 0x0

    .line 128
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getVoltage()I
    .locals 2

    .prologue
    .line 96
    const-string v1, "/sys/class/power_supply/battery/voltage_now"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/service/BatteryInfoService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
