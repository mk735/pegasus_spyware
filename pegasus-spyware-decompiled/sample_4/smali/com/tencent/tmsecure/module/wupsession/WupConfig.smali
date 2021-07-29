.class public final Lcom/tencent/tmsecure/module/wupsession/WupConfig;
.super Ljava/lang/Object;


# static fields
.field public static final HOST_URL:Ljava/lang/String;

.field public static final KEY_GUID:Ljava/lang/String; = "guid"

.field public static REDIRECT_URL:Ljava/lang/String; = null

.field public static final RQ_BROWER_CHECK:I = 0x26

.field public static final RQ_CHECK_LICENCE:I = 0x27

.field public static final RQ_CHECK_URL:I = 0x24

.field public static final RQ_CHECK_URL_EX:I = 0x25

.field public static final RQ_GET_ADS:I = 0x11

.field public static final RQ_GET_ANALYSE_INFO:I = 0xb

.field public static final RQ_GET_CATEGORY_LIST:I = 0x8

.field public static final RQ_GET_CHANGE_URL:I = 0x16

.field public static final RQ_GET_CONFIG:I = 0x17

.field public static final RQ_GET_CONFIG_V3:I = 0x18

.field public static final RQ_GET_CONFIG_V3_CPT:I = 0x19

.field public static final RQ_GET_GUID:I = 0x12

.field public static final RQ_GET_HOT_WORD:I = 0x13

.field public static final RQ_GET_MARK:I = 0x28

.field public static final RQ_GET_MY_SOFT_LIST:I = 0xa

.field public static final RQ_GET_QUERY_INFO:I = 0x21

.field public static final RQ_GET_SOFT_INFO:I = 0x0

.field public static final RQ_GET_SOFT_LIST:I = 0x9

.field public static final RQ_GET_TIME:I = 0x10

.field public static final RQ_GET_TRAFFIC_CMD:I = 0x22

.field public static final RQ_GET_TRAFFIC_TEMPLATE:I = 0x20

.field public static final RQ_GET_UPDATES_V2:I = 0xc

.field public static final RQ_GET_VIRUS_INFOS:I = 0x7

.field public static final RQ_REPORT_CHANNEL_INFO:I = 0x5

.field public static final RQ_REPORT_DOWN_SOFT:I = 0xe

.field public static final RQ_REPORT_ERROR_MSG:I = 0x23

.field public static final RQ_REPORT_FBILLEGA_REASON:I = 0x4

.field public static final RQ_REPORT_MOBILE:I = 0x1a

.field public static final RQ_REPORT_NOTIFY_INFO:I = 0x15

.field public static final RQ_REPORT_SMS:I = 0x1c

.field public static final RQ_REPORT_SOFT_ACTION:I = 0x14

.field public static final RQ_REPORT_SOFT_DESC:I = 0xf

.field public static final RQ_REPORT_SOFT_FEATURE:I = 0x1e

.field public static final RQ_REPORT_SOFT_TYPE:I = 0x1

.field public static final RQ_REPORT_SOFT_USAGE_INFO:I = 0x1f

.field public static final RQ_REPORT_TEL:I = 0x1d

.field public static final RQ_REPORT_TIPS_RES:I = 0xd

.field public static final RQ_REPORT_UNKNOW_SOFT_INFO:I = 0x3

.field public static final RQ_REPORT_USER_COMMENT:I = 0x2

.field public static final RQ_REPORT_VIRUS_LIB_UPDATE:I = 0x6

.field public static final RQ_REPORT_WBLIST:I = 0x1b

.field private static a:Ljava/lang/String;

.field public static final gQua:Ljava/lang/String;

.field public static mWupParam:[Ltms/hb;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ltms/af;

.field private h:LQQPIM/PhoneType;

.field private i:LQQPIM/SPhoneType;

.field private j:LQQPIM/UserInfo;

.field private k:LQQPIM/SUserInfo;

.field private l:LQQPIM/DeviceInfo;

.field private m:LQQPIM/MachineInfo;

.field private n:LQQPIM/SUIKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x25

    const-string v0, "host_url"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->HOST_URL:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->REDIRECT_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AQQSecure_GA_2_0/011201&ADR&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&V2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->gQua:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    const/16 v0, 0x29

    new-array v0, v0, [Ltms/hb;

    new-instance v1, Ltms/hb;

    const-string v2, "info"

    const-string v3, "getSoftInfo"

    invoke-direct {v1, v4, v2, v3}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ltms/hb;

    const-string v2, "info"

    const-string v3, "reportSoftType"

    invoke-direct {v1, v5, v2, v3}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ltms/hb;

    const-string v2, "info"

    const-string v3, "reportUserComment"

    invoke-direct {v1, v7, v2, v3}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Ltms/hb;

    const-string v2, "info"

    const-string v3, "reportUnknowSoftInfo"

    invoke-direct {v1, v8, v2, v3}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-instance v2, Ltms/hb;

    const/4 v3, 0x4

    const-string v4, "info"

    const-string v5, "reportFBIllegaReason"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ltms/hb;

    const/4 v3, 0x5

    const-string v4, "info"

    const-string v5, "reportChannelInfo"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ltms/hb;

    const/4 v3, 0x6

    const-string v4, "info"

    const-string v5, "reportVirusLibUpdate"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ltms/hb;

    const/4 v3, 0x7

    const-string v4, "info"

    const-string v5, "getVirusInfos"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ltms/hb;

    const/16 v3, 0x8

    const-string v4, "info"

    const-string v5, "getCategoryList"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ltms/hb;

    const/16 v3, 0x9

    const-string v4, "info"

    const-string v5, "getSoftList"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ltms/hb;

    const/16 v3, 0xa

    const-string v4, "info"

    const-string v5, "getMySoftList"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ltms/hb;

    const/16 v3, 0xb

    const-string v4, "info"

    const-string v5, "getAnalyseInfo"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ltms/hb;

    const/16 v3, 0xc

    const-string v4, "info"

    const-string v5, "getUpdatesV2"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ltms/hb;

    const/16 v3, 0xd

    const-string v4, "info"

    const-string v5, "reportTipsRes"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ltms/hb;

    const/16 v3, 0xe

    const-string v4, "info"

    const-string v5, "reportDownSoft"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ltms/hb;

    const/16 v3, 0xf

    const-string v4, "info"

    const-string v5, "reportSoftDesc"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ltms/hb;

    const/16 v3, 0x10

    const-string v4, "info"

    const-string v5, "getTime"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ltms/hb;

    const/16 v3, 0x11

    const-string v4, "info"

    const-string v5, "getADs"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Ltms/hb;

    const/16 v3, 0x12

    const-string v4, "info"

    const-string v5, "getGuid"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Ltms/hb;

    const/16 v3, 0x13

    const-string v4, "info"

    const-string v5, "getHotWord"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ltms/hb;

    const/16 v3, 0x14

    const-string v4, "info"

    const-string v5, "reportSoftAction"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Ltms/hb;

    const/16 v3, 0x15

    const-string v4, "info"

    const-string v5, "reportNotifyInfo"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Ltms/hb;

    const/16 v3, 0x16

    const-string v4, "info"

    const-string v5, "getChangeUrl"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Ltms/hb;

    const/16 v3, 0x17

    const-string v4, "conf"

    const-string v5, "getConfig"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Ltms/hb;

    const/16 v3, 0x18

    const-string v4, "conf"

    const-string v5, "getConfigV3"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Ltms/hb;

    const/16 v3, 0x19

    const-string v4, "conf"

    const-string v5, "getConfigV3CPT"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Ltms/hb;

    const/16 v3, 0x1a

    const-string v4, "conf"

    const-string v5, "reportMobile"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Ltms/hb;

    const/16 v3, 0x1b

    const-string v4, "conf"

    const-string v5, "reportWBList"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Ltms/hb;

    const/16 v3, 0x1c

    const-string v4, "sms"

    const-string v5, "reportSms"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Ltms/hb;

    const/16 v3, 0x1d

    const-string v4, "sms"

    const-string v5, "reportTel"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Ltms/hb;

    const/16 v3, 0x1e

    const-string v4, "sms"

    const-string v5, "reportSoftFeature"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Ltms/hb;

    const/16 v3, 0x1f

    const-string v4, "report"

    const-string v5, "reportSoftUsageInfo"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Ltms/hb;

    const/16 v3, 0x20

    const-string v4, "traffic"

    const-string v5, "getTrafficTemplate"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Ltms/hb;

    const/16 v3, 0x21

    const-string v4, "traffic"

    const-string v5, "getQueryInfo"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Ltms/hb;

    const/16 v3, 0x22

    const-string v4, "traffic"

    const-string v5, "getCloudOrder"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Ltms/hb;

    const/16 v3, 0x23

    const-string v4, "traffic"

    const-string v5, "reportErrorMsg"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Ltms/hb;

    const/16 v3, 0x24

    const-string v4, "check"

    const-string v5, "checkUrl"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Ltms/hb;

    const-string v2, "check"

    const-string v3, "checkUrlExt"

    invoke-direct {v1, v6, v2, v3}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/16 v1, 0x26

    new-instance v2, Ltms/hb;

    const-string v3, "info"

    const-string v4, "browerCheck"

    invoke-direct {v2, v6, v3, v4}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Ltms/hb;

    const/16 v3, 0x27

    const-string v4, "check"

    const-string v5, "getlicencedate"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Ltms/hb;

    const/16 v3, 0x28

    const-string v4, "benchmark"

    const-string v5, "getMark"

    invoke-direct {v2, v3, v4, v5}, Ltms/hb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->mWupParam:[Ltms/hb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imei"

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    const-string v0, "mac"

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    new-instance v0, Ltms/af;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Ltms/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    const-string v1, "guid"

    invoke-virtual {v0, v1, v2}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    return-void
.end method

.method private a()LQQPIM/DeviceInfo;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/DeviceInfo;

    invoke-direct {v0}, LQQPIM/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setIccid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getAndoidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setAndroidid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setSdkversion(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setModel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setProduct(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/EnvUtil;->getDeviceInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setNetfile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()I
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a()LQQPIM/DeviceInfo;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getGuidFromServer(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/GUIDInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LQQPIM/GUIDInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, -0x7d1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    const-string v3, "imei"

    invoke-virtual {v0, v3, v1}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    const-string v3, "mac"

    invoke-virtual {v0, v3, v2}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getFuncName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->mWupParam:[Ltms/hb;

    aget-object v0, v0, p0

    iget-object v0, v0, Ltms/hb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getServantName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->mWupParam:[Ltms/hb;

    aget-object v0, v0, p0

    iget-object v0, v0, Ltms/hb;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final checkGuid()I
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    const-string v2, "imei"

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    const-string v2, "mac"

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    const-string v2, "guid"

    sget-object v3, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:Ltms/af;

    invoke-virtual {v0}, Ltms/af;->a()V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getMachineInfo()LQQPIM/MachineInfo;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    if-nez v0, :cond_2

    new-instance v0, LQQPIM/MachineInfo;

    invoke-direct {v0}, LQQPIM/MachineInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    sget-object v3, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    const-string v3, "lc"

    invoke-static {v3}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getNetworkOperatorCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setSp(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    const-string v3, "product"

    invoke-static {v3}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setProduct(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    const-string v3, "channel"

    invoke-static {v3}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setChannelid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setPhonetype(LQQPIM/PhoneType;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setMachine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LQQPIM/MachineInfo;->setImsi(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, LQQPIM/MachineInfo;->setIsbuildin(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/EnvUtil;->hadsufile()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setIsroot(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->m:LQQPIM/MachineInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setImei(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final getPhoneType()LQQPIM/PhoneType;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/PhoneType;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/PhoneType;

    invoke-direct {v0}, LQQPIM/PhoneType;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/PhoneType;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/PhoneType;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/PhoneType;->setPhonetype(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/PhoneType;

    const-string v1, "sub_platform"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/PhoneType;->setSubplatform(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/PhoneType;

    return-object v0
.end method

.method public final getSPhoneType()LQQPIM/SPhoneType;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SPhoneType;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SPhoneType;

    invoke-direct {v0}, LQQPIM/SPhoneType;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SPhoneType;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SPhoneType;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/SPhoneType;->setPhonetype(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SPhoneType;

    return-object v0
.end method

.method public final getSUIKey()LQQPIM/SUIKey;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/SUIKey;

    invoke-direct {v0}, LQQPIM/SUIKey;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    const-string v1, "lc"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    const-string v1, "SECURE"

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    const-string v1, "softversion"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setType(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setOsversion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setMachineuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LQQPIM/SUIKey;->setMachineconf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    const-string v1, "sub_platform"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setSubplatform(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    const-string v1, "channel"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setChannelid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setIsbuildin(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->n:LQQPIM/SUIKey;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final getSUserInfo()LQQPIM/SUserInfo;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SUserInfo;

    invoke-direct {v0}, LQQPIM/SUserInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUserInfo;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    const-string v1, "lc"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUserInfo;->setLc(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/SUserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUserInfo;->setImei(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getUserInfo()LQQPIM/UserInfo;
    .locals 9

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    if-nez v0, :cond_4

    new-instance v0, LQQPIM/UserInfo;

    invoke-direct {v0}, LQQPIM/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    const-string v1, "lc"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    const-string v1, "channel"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setChannelid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setUa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    const-string v1, "product"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setProduct(I)V

    const-string v0, "pversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    const-string v0, "cversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    const-string v0, "hotfix"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_0

    const-string v6, "softversion"

    invoke-static {v6}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[\\.]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    aget-object v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v6, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    new-instance v7, LQQPIM/ProductVersion;

    invoke-direct {v7, v2, v1, v0}, LQQPIM/ProductVersion;-><init>(III)V

    invoke-virtual {v6, v7}, LQQPIM/UserInfo;->setVersion(LQQPIM/ProductVersion;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v0

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v0, v2, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setCt(I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setIsbuildin(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/EnvUtil;->hadsufile()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, LQQPIM/UserInfo;->setIsroot(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setSdkversion(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    const-string v1, "build"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setBuildno(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    return-object v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v1, v2, :cond_5

    :goto_4
    invoke-virtual {v0, v3}, LQQPIM/UserInfo;->setCt(I)V

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4
.end method
