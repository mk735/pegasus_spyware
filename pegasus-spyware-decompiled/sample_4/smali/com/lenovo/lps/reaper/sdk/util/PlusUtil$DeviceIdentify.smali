.class public Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;
.super Ljava/lang/Object;
.source "PlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/PlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceIdentify"
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "000000000000"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a:Ljava/lang/String;

    .line 90
    const-string v0, "mac"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "deviceIdType"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a:Ljava/lang/String;

    .line 190
    sput-object p1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->b:Ljava/lang/String;

    .line 191
    const-string v0, "PlusUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceType&Id is Set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->b()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 159
    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->c:Landroid/content/Context;

    const-string v7, "PlusUtil"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 161
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "mac"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    const-string v5, "mac"

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return v4

    .line 165
    :cond_0
    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->c:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 166
    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 167
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "macAddress":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 169
    const-string v5, "MAC: "

    invoke-static {v5, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "mac"

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    const-string v5, "mac"

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 174
    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static initialDeviceIdentify(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 101
    sput-object p0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->c:Landroid/content/Context;

    .line 103
    new-instance v3, Lcom/lenovo/lps/reaper/sdk/sdac/DeviceDataImpl;

    invoke-direct {v3}, Lcom/lenovo/lps/reaper/sdk/sdac/DeviceDataImpl;-><init>()V

    invoke-virtual {v3, p0, v2}, Lcom/lenovo/lps/reaper/sdk/sdac/DeviceDataImpl;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "00000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "lenovo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    .line 110
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_5

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 111
    .local v1, "sn":Ljava/lang/String;
    :goto_2
    const-string v2, "SN: "

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sn"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v1    # "sn":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "lenovo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 110
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 118
    :cond_6
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->b()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->d:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify$1;

    invoke-direct {v3}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify$1;-><init>()V

    sput-object v3, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->d:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->c:Landroid/content/Context;

    sget-object v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setOffWifiListener()V
    .locals 3

    .prologue
    .line 122
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->c:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlusUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
