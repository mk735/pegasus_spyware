.class public Lcom/lenovo/lps/reaper/sdk/config/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/util/Locale;

.field private static j:Ljava/lang/String;

.field protected static reaperServerPort:I

.field protected static reaperServerhost:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field protected applicationToken:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected channel:Ljava/lang/String;

.field protected customReaperServer:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field protected isSupportMultiRequest:Z

.field private k:Z

.field protected userAgent:Ljava/lang/String;

.field protected versionCode:I

.field protected versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    .line 91
    const-string v0, "com.lenovo.lps.reaper.sdk.AnalyticsTrackerBuilder"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->isSupportMultiRequest:Z

    .line 104
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    .line 105
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->b:Ljava/lang/String;

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "buffReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 272
    .local v3, "fileReader":Ljava/io/FileReader;
    new-instance v7, Ljava/io/File;

    const-string v8, "/etc/version.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 273
    const-string v7, "Configuration"

    const-string v8, "leos version file not exists!"

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-object v6

    .line 277
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v7, "/etc/version.conf"

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v1, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .local v1, "buffReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 280
    .local v5, "str":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 282
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 288
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 295
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .line 300
    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 288
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 295
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .line 298
    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 300
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 285
    .end local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v7, "Configuration"

    const-string v8, "IO Exception when getting kernel version of %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 288
    if-eqz v3, :cond_4

    .line 290
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 295
    :cond_4
    :goto_5
    if-eqz v0, :cond_0

    .line 297
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 300
    :catch_2
    move-exception v7

    goto :goto_0

    .line 288
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_5

    .line 290
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 295
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 297
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 300
    :cond_6
    :goto_8
    throw v6

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_3

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_6
    move-exception v7

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    goto :goto_7

    :catch_8
    move-exception v7

    goto :goto_8

    .line 288
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "str":Ljava/lang/String;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 285
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "REAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 190
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->initialDeviceIdentify(Landroid/content/Context;)V

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 193
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->e:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 196
    const-string v2, "0"

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->d:Ljava/lang/String;

    .line 204
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "androidId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :goto_1
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->c:Ljava/lang/String;

    .line 200
    const-string v2, "Configuration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->d:Ljava/lang/String;

    .line 207
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when get android id. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    .line 215
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 216
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionName:Ljava/lang/String;

    .line 218
    :cond_0
    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionCode:I

    if-nez v1, :cond_1

    .line 219
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getVersionCode()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionCode:I

    .line 221
    :cond_1
    const-string v1, "operating"

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "leOSVersion":Ljava/lang/String;
    const-string v2, "%s/%s (Linux; U; Android %s; %s-%s; %s; Build/%s; %s; %s)"

    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "en"

    :goto_0
    aput-object v1, v3, v4

    const/4 v4, 0x4

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    const/4 v1, 0x5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x7

    if-nez v0, :cond_4

    const-string v1, ""

    :goto_2
    aput-object v1, v3, v4

    const/16 v1, 0x8

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->userAgent:Ljava/lang/String;

    .line 231
    const-string v1, "Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 222
    :cond_2
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static getAnalyticsTrackerBuilderClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "analyticsTrackerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v1

    const-string v1, "Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class define for class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "com.lenovo.lps.reaper.sdk.AnalyticsTrackerBuilder"

    sput-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    .line 319
    :try_start_1
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 321
    :catch_1
    move-exception v1

    const-string v1, "Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class define for class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAnalyticsTrackerBuilderClass(Ljava/lang/String;)V
    .locals 0
    .param p0, "clazz"    # Ljava/lang/String;

    .prologue
    .line 410
    sput-object p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->j:Ljava/lang/String;

    .line 411
    return-void
.end method


# virtual methods
.method public checkTimestamp()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x3c

    const/4 v4, 0x1

    .line 640
    iget-boolean v5, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->k:Z

    if-eqz v5, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v4

    .line 643
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->getTimestampMills()J

    move-result-wide v2

    .line 644
    .local v2, "timestampMills":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    div-long/2addr v5, v9

    div-long v0, v5, v9

    .line 645
    .local v0, "interval":J
    const-wide/16 v5, 0x0

    cmp-long v5, v5, v0

    if-gtz v5, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->getUpdateIntervalHour()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 646
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public clearExistPreference()V
    .locals 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v2, "reaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->clear()V

    .line 356
    return-void
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomReaperServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->customReaperServer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 504
    const-string v0, "&sv=%s&ds=%s&aid=%s&dit=%s&di=%s&net=%d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1.9.2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCacheSize()I
    .locals 1

    .prologue
    .line 569
    const/16 v0, 0x32

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->i:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCacheInterval()J
    .locals 2

    .prologue
    .line 621
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public getMaxConnectionsPerTask()I
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x5

    return v0
.end method

.method public getMaxEventsPerRequest()I
    .locals 1

    .prologue
    .line 560
    const/16 v0, 0x1e

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getReaperServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->reaperServerhost:Ljava/lang/String;

    return-object v0
.end method

.method public getReaperServerPort()I
    .locals 1

    .prologue
    .line 551
    sget v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->reaperServerPort:I

    return v0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getReportWithCompressUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getServerConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrlFromFile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 664
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v2, "ServerUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 666
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public initReportAndConfigurationUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "reaperServerUrl"    # Ljava/lang/String;

    .prologue
    .line 241
    move-object v1, p1

    .line 242
    .local v1, "mReaperServerUrl":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "serverUrl":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/post"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->f:Ljava/lang/String;

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/report"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->g:Ljava/lang/String;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->h:Ljava/lang/String;

    .line 250
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->reaperServerhost:Ljava/lang/String;

    .line 251
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/16 v3, 0x50

    :goto_0
    sput v3, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->reaperServerPort:I

    .line 252
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    const-string v3, "Configuration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "Configuration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "Configuration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v2    # "serverUrl":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 251
    .restart local v2    # "serverUrl":Ljava/net/URL;
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 257
    .end local v2    # "serverUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v3, "Configuration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initReportAndConfigurationUrl. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionCode:I

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "lenovo:applicationToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "lenovo:customReaperServer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->customReaperServer:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "lenovo:channel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "lenovo:forceUpdateConfig"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->k:Z

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "lenovo:isTestMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->setTestMode(Z)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    const-string v2, "^[A-Za-z0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Configuration"

    const-string v2, "ApplicationToken should be Number and Character, another char will be Delete."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    const-string v2, "[^A-Za-z0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    const-string v1, "Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Token is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->customReaperServer:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->customReaperServer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->customReaperServer:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_3

    const-string v0, "All"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->channel:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applicationToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customReaperServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->customReaperServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a()V

    .line 126
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->b()V

    .line 127
    return-void

    .line 124
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->channel:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseApplicationInfo. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public initialize(Ljava/lang/String;I)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;
    .param p2, "reportIntervalInSeconds"    # I

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a()V

    .line 140
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->b()V

    .line 141
    return-void
.end method

.method public isCollectData()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 392
    const-string v2, "MUNTOAINGVJ8"

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->applicationToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_collection"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "dataCollection":Ljava/lang/String;
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataCollection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 337
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 338
    :cond_0
    const-string v1, "Configuration"

    const-string v2, "wrong parameter."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    .line 341
    :cond_1
    move-object v0, p2

    .line 342
    .local v0, "actionTmp":Ljava/lang/String;
    const-string v1, "__PAGEVIEW__"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_2
    invoke-static {p1, v0}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->get(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public saveServerUrlToFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v3, "ServerUrl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Server"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 655
    .local v1, "succ":Z
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerUrl Has Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v2, "Configuration"

    const-string v3, "ServerUrl Save Failed."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveUpdateTimestamp()V
    .locals 7

    .prologue
    .line 626
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v3, "ConfigUpdate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 628
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ConfigUpdateTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 630
    .local v1, "succ":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->setTimestampMills(J)V

    .line 631
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration Timestamp Has Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    const-string v2, "Configuration"

    const-string v3, "Configuration Timestamp Save Failed."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMultiRequestSupport(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->isSupportMultiRequest:Z

    .line 589
    return-void
.end method

.method public supportMultiRequest()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->isSupportMultiRequest:Z

    return v0
.end method

.method public updatePrefrence(Ljava/lang/String;[Ljava/lang/String;[Z)Z
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "actions"    # [Ljava/lang/String;
    .param p3, "values"    # [Z

    .prologue
    const/4 v5, 0x0

    .line 370
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v6, p2

    array-length v7, p3

    if-eq v6, v7, :cond_1

    .line 371
    :cond_0
    const-string v6, "Configuration"

    const-string v7, "wrong parameter."

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return v5

    .line 374
    :cond_1
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a:Landroid/content/Context;

    const-string v7, "reaper"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 376
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    array-length v3, p3

    .line 378
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 379
    aget-object v5, p2, v1

    invoke-static {p1, v5}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "key":Ljava/lang/String;
    aget-boolean v5, p3, v1

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    aget-boolean v5, p3, v1

    invoke-static {v2, v5}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->put(Ljava/lang/String;Z)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    goto :goto_0
.end method
