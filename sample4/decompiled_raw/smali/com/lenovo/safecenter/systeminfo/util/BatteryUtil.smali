.class public Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;
.super Ljava/lang/Object;
.source "BatteryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 114
    .local v3, "fReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 115
    .local v0, "bReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 117
    .local v6, "resultString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
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

    .line 121
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

    .line 130
    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    :cond_0
    if-eqz v3, :cond_1

    .line 132
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 139
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 141
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 149
    :cond_2
    :goto_1
    return-object v6

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    if-eqz v3, :cond_3

    .line 132
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 139
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 141
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_8
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 130
    if-eqz v3, :cond_4

    .line 132
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 139
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_6
    if-eqz v0, :cond_2

    .line 141
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    .line 143
    :catch_3
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 128
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 130
    if-eqz v3, :cond_5

    .line 132
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 139
    :cond_5
    :goto_8
    if-eqz v0, :cond_2

    .line 141
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_1

    .line 143
    :catch_5
    move-exception v2

    .line 144
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_9
    if-eqz v3, :cond_6

    .line 132
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 139
    :cond_6
    :goto_a
    if-eqz v0, :cond_7

    .line 141
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 130
    :cond_7
    :goto_b
    throw v7

    .line 134
    :catch_6
    move-exception v2

    .line 135
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 134
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 134
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 134
    :catch_a
    move-exception v2

    .line 135
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v2

    .line 135
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "BatteryUtil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto :goto_9

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
    goto :goto_9

    .line 127
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto :goto_7

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
    goto/16 :goto_7

    .line 125
    .end local v3    # "fReader":Ljava/io/FileReader;
    .restart local v4    # "fReader":Ljava/io/FileReader;
    :catch_f
    move-exception v2

    move-object v3, v4

    .end local v4    # "fReader":Ljava/io/FileReader;
    .restart local v3    # "fReader":Ljava/io/FileReader;
    goto/16 :goto_5

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
    goto/16 :goto_5

    .line 123
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

.method public static getBatteryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "/sys/class/power_supply/battery/technology"

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapacity()I
    .locals 2

    .prologue
    .line 48
    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "capacity":I
    return v0
.end method

.method public static getCurrent()I
    .locals 2

    .prologue
    .line 84
    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTemperature()I
    .locals 2

    .prologue
    .line 98
    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 102
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getVoltage()I
    .locals 2

    .prologue
    .line 70
    const-string v1, "/sys/class/power_supply/battery/voltage_now"

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/util/BatteryUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "resultString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
