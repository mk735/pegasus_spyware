.class public Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;
.super Ljava/lang/Object;
.source "MultiSIMDeviceInfo.java"


# static fields
.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field private static a:Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a:Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "android.provider.MultiSIMUtils"

    const-string v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/sdac/ReflectUtils;->invokeClass(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->b:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, p1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/sdac/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v1, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a:Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a:Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    .line 28
    :cond_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a:Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCellId(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 32
    const/4 v1, -0x1

    .line 34
    .local v1, "cid":I
    :try_start_0
    const-string v2, "getCellLocation"

    invoke-direct {p0, v2, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    .line 36
    .local v0, "cell":Landroid/telephony/CellLocation;
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_0

    .line 37
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .end local v0    # "cell":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 39
    .restart local v0    # "cell":Landroid/telephony/CellLocation;
    :cond_0
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v0    # "cell":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 48
    :try_start_0
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 59
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 72
    const-string v0, "getNetworkOperator"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 85
    :try_start_0
    const-string v0, "getPhoneType"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 76
    const-string v0, "getSimOperator"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 80
    const-string v0, "getSimSerialNumber"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 93
    :try_start_0
    const-string v0, "getSimState"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSmsCenter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    const-string v1, "getScAddress"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "sms":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    const-string v1, "getScAddress"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sms":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 68
    .restart local v0    # "sms":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 55
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
