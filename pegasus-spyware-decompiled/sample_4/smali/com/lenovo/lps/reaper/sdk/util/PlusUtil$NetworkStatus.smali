.class public Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;
.super Ljava/lang/Object;
.source "PlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/PlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatus"
.end annotation


# static fields
.field private static a:I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkStatus()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->a:I

    return v0
.end method

.method public static isRoaming()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->b:Z

    return v0
.end method

.method public static setNetworkStatus(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 44
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 45
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    sput-boolean v5, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->b:Z

    .line 46
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 49
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    :cond_0
    sput v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->a:I

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 55
    .local v2, "netType":I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 57
    .local v1, "netSubtype":I
    if-ne v2, v6, :cond_3

    .line 58
    sput v7, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->a:I

    goto :goto_0

    .line 62
    :cond_3
    if-nez v2, :cond_5

    .line 63
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    if-eq v1, v6, :cond_4

    if-eq v1, v7, :cond_4

    if-eq v1, v8, :cond_4

    .line 67
    const/4 v5, 0x3

    sput v5, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->a:I

    goto :goto_0

    .line 70
    :cond_4
    sput v8, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->a:I

    goto :goto_0

    .line 77
    :cond_5
    const/4 v5, 0x0

    sput v5, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->a:I

    goto :goto_0
.end method
