.class public Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;
.super Ljava/lang/Object;
.source "LeSafeAPI.java"


# static fields
.field public static final ACTION_BLACK_URL_SYNC_FLAG:I = 0x3

.field public static final ACTION_GET_SAFE_BROWSER_HOMEPAGE_FLAG:I = 0x2

.field public static final ACTION_HOLIDAY_IMG_DOWNLOAD:I = 0x1

.field public static final ACTION_HOLIDAY_IMG_SYNC:I = 0x0

.field public static final ACTION_SAFEPAY_APK_SYNC:I = 0x4

.field public static final API_BASE_URL:Ljava/lang/String; = "http://sss.lenovomm.com/sss/1.0/"

.field public static final API_URLS:[Ljava/lang/String;

.field public static final DEFAULT_TAG_VERSION:J = 0x13bacea104dL


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://sss.lenovomm.com/sss/1.0/holidayimgsync"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://sss.lenovomm.com/sss/1.0/downholidayimg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://sss.lenovomm.com/sss/1.0/guideswitch?z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://sss.lenovomm.com/sss/1.0/blackurllistsync?lang=zh-cn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://sss.lenovomm.com/sss/1.0/safepayapklistsync"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->API_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadHolidayImg(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    .prologue
    .line 51
    const-string v0, "wu0wu"

    const-string v1, "<<< LeSafeAPI downloadHolidayImg >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method public static getAppSync(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x3e7

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    sget v0, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 85
    new-instance v0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    invoke-direct {v0, p0, v4, v2, v2}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    invoke-direct {v0, p0, v4, v2, v2}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getBlackUrlSyncFlag(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    .prologue
    const-wide v7, 0x13bacea104dL

    .line 64
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "dfprefs":Landroid/content/SharedPreferences;
    const-string v6, "safe_url_black_last_flag"

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 66
    .local v3, "lastTAG":J
    const-string v6, "safe_url_black_exp_flag"

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 67
    .local v1, "expTAG":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v6, "lastintag"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v6, "expiredtag"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v6, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7, p1, v5}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public static getHolidayImgSync(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    .prologue
    const/4 v4, 0x0

    .line 40
    const-string v1, "wu0wu"

    const-string v2, "<<< LeSafeAPI getHolidayImgSync >>>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHolidayImgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "version"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHolidayImgVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    invoke-direct {v1, p0, v4, p1, v0}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method public static getSafeBrowserHomepageFlag(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    .prologue
    .line 59
    const-string v0, "wu0wu"

    const-string v1, "<<< LeSafeAPI getSafeBrowserHomepageFlag >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method public static getSafePayList(Landroid/content/Context;Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    .prologue
    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "dfprefs":Landroid/content/SharedPreferences;
    const-string v4, "safe_url_safepay_last_flag"

    const-string v5, "1355815718989"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "lastTAG":Ljava/lang/String;
    const-string v4, "safe_url_safepay_exp_flag"

    const-string v5, "1355815718989"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "expTAG":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "lastintag"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v4, "expiredtag"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v4, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, p1, v3}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;-><init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method
