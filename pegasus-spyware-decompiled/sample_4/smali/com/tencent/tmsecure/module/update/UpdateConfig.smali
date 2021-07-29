.class public final Lcom/tencent/tmsecure/module/update/UpdateConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BLACKLIST_ROM_NAME:Ljava/lang/String;

.field public static final BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

.field public static final FILE_NAMES:[Ljava/lang/String;

.field public static final LOCATION_NAME:Ljava/lang/String; = "nldb.sdb"

.field public static final PATCH_SUFIX:Ljava/lang/String; = ".patch"

.field public static final ROM_THIRDPART_NAME:Ljava/lang/String;

.field public static final SMS_CHECKER_NAME:Ljava/lang/String; = "rule_store.sys"

.field public static final TRAFFIC_MONITOR_CONFIG_NAME:Ljava/lang/String; = "net_interface_type_traffic_stat.dat"

.field public static final TRUST_URLS_NAME:Ljava/lang/String; = "trusturls.dat"

.field public static final UPDATE_FLAGS:[I

.field public static final UPDATE_FLAG_ALL:I = 0x200000

.field public static final UPDATE_FLAG_APP_LIST:I = 0x400000

.field public static final UPDATE_FLAG_BLACKLIST_ROM:I = 0x80

.field public static final UPDATE_FLAG_BLACKLIST_WITHPLUGIN:I = 0x800

.field public static final UPDATE_FLAG_LOCATION:I = 0x2

.field public static final UPDATE_FLAG_ROM_THIRDPART:I = 0x40

.field public static final UPDATE_FLAG_SMS_CHECKER:I = 0x4

.field public static final UPDATE_FLAG_TRAFFIC_MONITOR_CONFIG:I = 0x20

.field public static final UPDATE_FLAG_TRUST_URLS:I = 0x10

.field public static final UPDATE_FLAG_VIRUS_BASE:I = 0x8

.field public static final UPDATE_FLAG_WHITELIST_COMMON:I = 0x200

.field public static final UPDATE_FLAG_WHITELIST_ROM:I = 0x100

.field public static final UPDATE_FLAG_WHITELIST_UNUSUAL:I = 0x400

.field public static final UPDATE_TYPE_ENGINE_UPDATE:I = 0x1

.field public static final UPDATE_TYPE_NORMAL_UPDATE:I = 0x0

.field public static final VIRUS_BASE_NAME:Ljava/lang/String; = "qv_base.amf"

.field public static final WHITELIST_COMMON_NAME:Ljava/lang/String;

.field public static final WHITELIST_ROM_NAME:Ljava/lang/String;

.field public static final WHITELIST_UNUSUAL_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_ROM_THIRDPART:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_ROM_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_UNUSUAL:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nldb.sdb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rule_store.sys"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "qv_base.amf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trusturls.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net_interface_type_traffic_stat.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_ROM_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileNameByFlag(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getFlagByFileName(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    aget v0, v1, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static prepareCheckFlag(I)I
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    array-length v2, v1

    move p0, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    or-int/2addr p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    or-int/lit8 v0, p0, 0x40

    or-int/lit16 v0, v0, 0x80

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 p0, v0, 0x800

    :cond_1
    return p0
.end method
