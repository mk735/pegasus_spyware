.class public Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SIMReader;
.super Ljava/lang/Object;
.source "SIMReader.java"


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "SimUtil.java"

.field public static final NO_SIM:I = -0x1

.field public static final SIM_CMCC:I = 0x1

.field public static final SIM_CTCC:I = 0x3

.field public static final SIM_CUCC:I = 0x2

.field public static final SIM_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimOperator(Landroid/content/Context;)I
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 18
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move v1, v2

    .line 33
    :goto_0
    return v1

    .line 24
    :cond_0
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x2

    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 28
    :cond_3
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    const/4 v1, 0x3

    goto :goto_0

    .line 31
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v1, v2

    .line 33
    goto :goto_0
.end method
