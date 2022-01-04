.class public Lcom/lenovo/safecenter/net/support/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BOOLEAN_SET_LOCATION:Ljava/lang/String; = "BOOLEAN_SET_LOCATION"

.field public static final BRAND:Ljava/lang/String; = "SIM_CARD_BRAND"

.field public static final BRAND_DESC:Ljava/lang/String; = "SIM_CARD_BRAND_DESC"

.field public static final BRAND_POSTION:Ljava/lang/String; = "SIM_CARD_BRAND_POSTION"

.field public static final CARRY:Ljava/lang/String; = "SIM_CARD_CARRY"

.field public static final CARRY_DESC:Ljava/lang/String; = "SIM_CARD_CARRY_DESC"

.field public static final CARRY_POSTION:Ljava/lang/String; = "SIM_CARD_CARRY_POSTION"

.field public static final CITY:Ljava/lang/String; = "SIM_CARD_CITY"

.field public static final CITY_DESC:Ljava/lang/String; = "SIM_CARD_CITY_DESC"

.field public static final CITY_POSTION:Ljava/lang/String; = "SIM_CARD_CITY_POSTION"

.field public static final CONFIG_CHANGED:Ljava/lang/String; = "config_changed"

.field public static final CONFIG_HAS_SETTED:Ljava/lang/String; = "config_has_setted"

.field public static final CORRECT_TIME:Ljava/lang/String; = "CORRECT_TIME"

.field public static final HAS_CORRECT_SUCESSED:Ljava/lang/String; = "has_correct_sucessed"

.field public static final PROVINCE:Ljava/lang/String; = "SIM_CARD_PROVINCE"

.field public static final PROVINCE_DESC:Ljava/lang/String; = "SIM_CARD_PROVINCE_DESC"

.field public static final PROVINCE_POSTION:Ljava/lang/String; = "SIM_CARD_PROVINCE_POSTION"

.field public static final SIM1_PROPERTIES:Ljava/lang/String; = "SIM1_properties_safecenter"

.field public static final SIM2_PROPERTIES:Ljava/lang/String; = "SIM2_properties_safecenter"

.field public static final SMS_ADDRESS:Ljava/lang/String; = "sms_address"

.field public static final SMS_MESSAGE:Ljava/lang/String; = "sms_message"

.field public static flag:Ljava/lang/String;

.field public static isMultiSimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/net/support/Utils;->isMultiSimEnabled:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/net/support/Utils;->flag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSIMState(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cardPostion"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "state":Z
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/Utils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v1

    .line 215
    .local v1, "states":[I
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    aget v2, v1, v3

    if-eq v2, v7, :cond_0

    aget v2, v1, v3

    if-eq v2, v5, :cond_0

    aget v2, v1, v3

    if-eq v2, v6, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    if-nez p1, :cond_2

    aget v2, v1, v3

    if-eq v2, v7, :cond_2

    aget v2, v1, v3

    if-eq v2, v5, :cond_2

    aget v2, v1, v3

    if-eq v2, v6, :cond_2

    .line 227
    const/4 v0, 0x0

    .line 229
    :cond_2
    if-ne p1, v4, :cond_0

    aget v2, v1, v4

    if-eq v2, v7, :cond_0

    aget v2, v1, v4

    if-eq v2, v5, :cond_0

    aget v2, v1, v4

    if-eq v2, v6, :cond_0

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllSimState(Landroid/content/Context;)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/provider/MultiSIMUtils;->getSimState(I)I

    move-result v2

    aput v2, v1, v3

    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/provider/MultiSIMUtils;->getSimState(I)I

    move-result v2

    aput v2, v1, v4

    .line 207
    :goto_0
    return-object v1

    .line 206
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 207
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    new-array v1, v4, [I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0
.end method

.method public static getCanCorrectFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 322
    const-string v1, "SIM1_properties_safecenter"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "can_correct"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCorrectPostion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    const-string v1, "SIM1_properties_safecenter"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 345
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "correct_postion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getIsSet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    const-string v1, "SIM1_properties_safecenter"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "is_set"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLastCorrectTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string v1, "SIM1_properties_safecenter"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "LAST_CORRECT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getOperatorMode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "card"    # I

    .prologue
    .line 359
    const-string v2, ""

    .line 360
    .local v2, "operator":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 362
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "imsi":Ljava/lang/String;
    const-string v4, "pluginutils"

    const-string v5, "touch double card"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    if-nez v0, :cond_0

    .line 371
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 372
    .local v1, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    if-nez p1, :cond_4

    .line 373
    iget-object v0, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    .line 378
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :cond_0
    :goto_1
    const-string v4, "46000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "46002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "46007"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 379
    :cond_1
    const-string v2, "Mobile"

    .line 385
    :cond_2
    :goto_2
    const-string v4, "pluginutils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",card = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object v2

    .line 366
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_3
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 368
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "imsi":Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    .restart local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :cond_4
    iget-object v0, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    goto :goto_1

    .line 380
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :cond_5
    const-string v4, "46001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 381
    const-string v2, "Unicom"

    goto :goto_2

    .line 382
    :cond_6
    const-string v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    const-string v2, "Telecom"

    goto :goto_2
.end method

.method public static hasSetConfiged(ILandroid/content/Context;)Z
    .locals 6
    .param p0, "card"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    if-nez p0, :cond_1

    .line 120
    const-string v3, "SIM1_properties_safecenter"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "sp":Landroid/content/SharedPreferences;
    :goto_0
    const-string v3, "config_has_setted"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    :cond_0
    :goto_1
    return v1

    .line 122
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "SIM2_properties_safecenter"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 126
    :cond_2
    const-string v3, ""

    const-string v4, "SIM_CARD_PROVINCE"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const-string v3, ""

    const-string v4, "SIM_CARD_CITY"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const-string v3, ""

    const-string v4, "SIM_CARD_CARRY"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const-string v3, ""

    const-string v4, "SIM_CARD_BRAND"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 133
    goto :goto_1
.end method

.method public static initPostion(ILandroid/content/Context;)[I
    .locals 9
    .param p0, "card"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 140
    .local v0, "array":[I
    const/4 v2, 0x1

    .line 141
    .local v2, "pos":I
    invoke-static {p1, p0}, Lcom/lenovo/safecenter/net/support/Utils;->getOperatorMode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "op":Ljava/lang/String;
    const-string v4, "Mobile"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    const/4 v2, 0x0

    .line 149
    :cond_0
    :goto_0
    if-nez p0, :cond_3

    .line 150
    const-string v4, "SIM1_properties_safecenter"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 151
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "SIM_CARD_PROVINCE_POSTION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v5

    .line 152
    const-string v4, "SIM_CARD_CITY_POSTION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v6

    .line 153
    const-string v4, "SIM_CARD_CARRY_POSTION"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v7

    .line 154
    const-string v4, "SIM_CARD_BRAND_POSTION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v8

    .line 162
    :goto_1
    return-object v0

    .line 144
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "Unicom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    const/4 v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    const-string v4, "Telecom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/4 v2, 0x2

    goto :goto_0

    .line 156
    :cond_3
    const-string v4, "SIM2_properties_safecenter"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 157
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    const-string v4, "SIM_CARD_PROVINCE_POSTION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v5

    .line 158
    const-string v4, "SIM_CARD_CITY_POSTION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v6

    .line 159
    const-string v4, "SIM_CARD_CARRY_POSTION"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v7

    .line 160
    const-string v4, "SIM_CARD_BRAND_POSTION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v8

    goto :goto_1
.end method

.method public static initTrafficCorrectConfig(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    new-instance v0, Lcom/lenovo/safecenter/net/support/Utils$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/support/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/Utils$1;->start()V

    .line 426
    return-void
.end method

.method public static isConnectInternet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, "conManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 253
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 258
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNonMarketAppsAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static sendCanCorrectMessage(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canCorrect"    # Z

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "can_correct"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    const-string v1, "com.lenovo.safecenter.plugin.cancorrect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public static setCanCorrectFlag(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canCorrect"    # Z

    .prologue
    .line 316
    const-string v2, "SIM1_properties_safecenter"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 318
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "can_correct"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    return-void
.end method

.method public static setConfig(ILandroid/content/Context;)V
    .locals 7
    .param p0, "card"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 165
    if-nez p0, :cond_0

    .line 166
    const-string v1, "SIM1_properties_safecenter"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    const-string v2, "SIM_CARD_PROVINCE"

    const-string v3, "10"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM_CARD_CITY"

    const-string v4, "10"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM_CARD_CARRY"

    const-string v5, "UNICOM"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM_CARD_BRAND"

    const-string v6, "70000"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/safecenter/support/SecurityService;->config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    .line 174
    :goto_0
    return-void

    .line 170
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "SIM2_properties_safecenter"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    const-string v2, "SIM_CARD_PROVINCE"

    const-string v3, "10"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM_CARD_CITY"

    const-string v4, "10"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM_CARD_CARRY"

    const-string v5, "UNICOM"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM_CARD_BRAND"

    const-string v6, "70000"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/safecenter/support/SecurityService;->config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    goto :goto_0
.end method

.method public static setConfig2Preference(Lcom/lenovo/safecenter/net/support/SIMDetailInfo;ILandroid/content/Context;)V
    .locals 7
    .param p0, "info"    # Lcom/lenovo/safecenter/net/support/SIMDetailInfo;
    .param p1, "card"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 65
    const-string v3, "SIM1_properties_safecenter"

    invoke-virtual {p2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "SIM_CARD_PROVINCE"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SIM_CARD_CITY"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SIM_CARD_CARRY"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SIM_CARD_BRAND"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "TrafficCorrectPlugin"

    const-string v4, " sim1 config not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 71
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SIM_CARD_PROVINCE"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    const-string v3, "SIM_CARD_CITY"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    const-string v3, "SIM_CARD_CARRY"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const-string v3, "SIM_CARD_BRAND"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    const-string v3, "SIM_CARD_PROVINCE_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceSelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    const-string v3, "SIM_CARD_CITY_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->citySelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    const-string v3, "SIM_CARD_CARRY_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsSelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    const-string v3, "SIM_CARD_BRAND_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandSelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    const-string v3, "SIM_CARD_PROVINCE_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    const-string v3, "SIM_CARD_CITY_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->cityDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    const-string v3, "SIM_CARD_CARRY_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    const-string v3, "SIM_CARD_BRAND_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    const-string v3, "BOOLEAN_SET_LOCATION"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    const-string v3, "new_version_initpostion_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    const-string v3, "config_has_setted"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    const-string v3, "TrafficCorrectPlugin"

    const-string v4, " sim1 config is changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "SIM2_properties_safecenter"

    invoke-virtual {p2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, "sp2":Landroid/content/SharedPreferences;
    const-string v3, "SIM_CARD_PROVINCE"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SIM_CARD_CITY"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SIM_CARD_CARRY"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SIM_CARD_BRAND"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const-string v3, "TrafficCorrectPlugin"

    const-string v4, " sim2 config not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SIM_CARD_PROVINCE"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    const-string v3, "SIM_CARD_CITY"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    const-string v3, "SIM_CARD_CARRY"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    const-string v3, "SIM_CARD_BRAND"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    const-string v3, "SIM_CARD_PROVINCE_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceSelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    const-string v3, "SIM_CARD_CITY_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->citySelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    const-string v3, "SIM_CARD_CARRY_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsSelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    const-string v3, "SIM_CARD_BRAND_POSTION"

    iget v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandSelected:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const-string v3, "SIM_CARD_PROVINCE_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    const-string v3, "SIM_CARD_CITY_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->cityDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    const-string v3, "SIM_CARD_CARRY_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    const-string v3, "SIM_CARD_BRAND_DESC"

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandDesc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    const-string v3, "BOOLEAN_SET_LOCATION"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    const-string v3, "new_version_initpostion_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    const-string v3, "config_has_setted"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    const-string v3, "TrafficCorrectPlugin"

    const-string v4, " sim2 config is changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setCorrectPostion(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pos"    # I

    .prologue
    .line 338
    const-string v2, "SIM1_properties_safecenter"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "correct_postion"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method

.method public static setCorrectTime(ILandroid/content/Context;)V
    .locals 5
    .param p0, "card"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 176
    if-nez p0, :cond_0

    .line 177
    const-string v1, "SIM1_properties_safecenter"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CORRECT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 183
    :goto_0
    return-void

    .line 180
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "SIM2_properties_safecenter"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CORRECT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setIsSet(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Z

    .prologue
    const/4 v3, 0x1

    .line 349
    const-string v2, "SIM1_properties_safecenter"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 350
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_set"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    return-void
.end method

.method public static setLastCorrectTime(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const-string v1, "SIM1_properties_safecenter"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LAST_CORRECT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public static showCorrectFailNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 264
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 266
    .local v1, "manager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 267
    .local v2, "notification":Landroid/app/Notification;
    const/16 v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 269
    const/4 v4, 0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.safecenter.net.setting"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const v4, 0x7f0201fa

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 273
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 275
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 276
    invoke-virtual {v1, p3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    return-void
.end method

.method public static showCorrectSuccessNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 282
    const v6, 0x7f0d07d1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "format":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 285
    sget v6, Lcom/lenovo/safecenter/net/cache/NetCache;->lastCorrectCard:I

    if-nez v6, :cond_0

    .line 286
    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f0d07a5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "notiInfo":Ljava/lang/String;
    :goto_0
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 295
    .local v2, "manager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 296
    .local v4, "notification":Landroid/app/Notification;
    const/16 v6, 0x10

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 298
    iput v9, v4, Landroid/app/Notification;->defaults:I

    .line 299
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 302
    const-string v6, "key"

    const-string v7, "key"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-class v6, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    :goto_1
    const v6, 0x7f02025a

    iput v6, v4, Landroid/app/Notification;->icon:I

    .line 309
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 311
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, p0, v3, p1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 312
    const v6, 0x7f090433

    invoke-virtual {v2, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    return-void

    .line 288
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "manager":Landroid/app/NotificationManager;
    .end local v3    # "notiInfo":Ljava/lang/String;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f0d07a6

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "notiInfo":Ljava/lang/String;
    goto :goto_0

    .line 291
    .end local v3    # "notiInfo":Ljava/lang/String;
    :cond_1
    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "notiInfo":Ljava/lang/String;
    goto :goto_0

    .line 305
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "manager":Landroid/app/NotificationManager;
    .restart local v4    # "notification":Landroid/app/Notification;
    :cond_2
    const-class v6, Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    const-string v6, "key"

    const-string v7, "key"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
