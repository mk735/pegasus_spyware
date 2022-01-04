.class public Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;
.super Ljava/lang/Object;
.source "NetworkInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    .line 256
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 258
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    if-nez v0, :cond_0

    .line 31
    const-class v1, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    monitor-enter v1

    .line 33
    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getConnectTypeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->isOnline()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    const-string v2, "OFFLINE"

    .line 246
    :goto_0
    return-object v2

    .line 240
    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 242
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 243
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 246
    :cond_1
    const-string v2, "OFFLINE"

    goto :goto_0
.end method

.method public getNetWorkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetWorkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetWorkOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0d06a6

    const v4, 0x7f0d014e

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "networkOperatorName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, "deviceIdString":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 139
    .local v2, "simState":I
    packed-switch v2, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 141
    :pswitch_1
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    goto :goto_0

    .line 145
    :pswitch_2
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 147
    if-nez v0, :cond_1

    .line 148
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v3, "Android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNetworkInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v2, 0x7f0d06a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->getNetWorkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v2, 0x7f0d06a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0d06a5

    .line 47
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 48
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 98
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "typeString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 51
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_0
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_1
    const-string v1, "GPRS"

    .line 56
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_2
    const-string v1, "EDGE"

    .line 60
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_3
    const-string v1, "UMTS"

    .line 64
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_4
    const-string v1, "HSDPA"

    .line 68
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_5
    const-string v1, "HSUPA"

    .line 72
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_6
    const-string v1, "HSPA"

    .line 76
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_7
    const-string v1, "CDMA"

    .line 80
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_8
    const-string v1, "EVDO_0"

    .line 84
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_9
    const-string v1, "EVDO_A"

    .line 88
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_a
    const-string v1, "1xRTT"

    .line 92
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v1    # "typeString":Ljava/lang/String;
    :pswitch_b
    const-string v1, "IDEN"

    .line 96
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getWifiInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 209
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "WLAN\u72b6\u6001\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 214
    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 4

    .prologue
    .line 192
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 194
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 195
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const/4 v2, 0x1

    .line 198
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
