.class public Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;
.super Ljava/lang/Object;
.source "PhoneInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    .line 45
    .local v0, "context":Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 48
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v2, 0x7f0d06a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v2, 0x7f0d06aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->getSystemSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v2, 0x7f0d06ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSystemSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
