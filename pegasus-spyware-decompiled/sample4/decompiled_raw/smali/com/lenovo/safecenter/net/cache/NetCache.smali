.class public Lcom/lenovo/safecenter/net/cache/NetCache;
.super Ljava/lang/Object;
.source "NetCache.java"


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field public static canCorrect:Z

.field private static d:J

.field public static data_id_postion:I

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:J

.field private static h:Landroid/os/Handler;

.field private static i:J

.field public static imsi:Ljava/lang/String;

.field public static imsi2:Ljava/lang/String;

.field public static isProvideMuti:Z

.field public static is_net_flush_cast:Z

.field public static lastCorrectCard:I

.field public static traffic_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    sput v1, Lcom/lenovo/safecenter/net/cache/NetCache;->lastCorrectCard:I

    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/net/cache/NetCache;->canCorrect:Z

    .line 14
    sput-boolean v1, Lcom/lenovo/safecenter/net/cache/NetCache;->is_net_flush_cast:Z

    .line 15
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoot_time()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lcom/lenovo/safecenter/net/cache/NetCache;->g:J

    return-wide v0
.end method

.method public static getCached_imsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/safecenter/net/cache/NetCache;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getCached_imsi2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/safecenter/net/cache/NetCache;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetSettingHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/lenovo/safecenter/net/cache/NetCache;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static getTraffic_used_progress()J
    .locals 2

    .prologue
    .line 45
    sget-wide v0, Lcom/lenovo/safecenter/net/cache/NetCache;->d:J

    return-wide v0
.end method

.method public static getTraffic_used_progress2()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lcom/lenovo/safecenter/net/cache/NetCache;->i:J

    return-wide v0
.end method

.method public static getTraffic_view_height()F
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/lenovo/safecenter/net/cache/NetCache;->b:F

    return v0
.end method

.method public static getTraffic_view_text_size()F
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/lenovo/safecenter/net/cache/NetCache;->c:F

    return v0
.end method

.method public static getTraffic_view_width()F
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/lenovo/safecenter/net/cache/NetCache;->a:F

    return v0
.end method

.method public static setBoot_time(J)V
    .locals 0
    .param p0, "boot_time"    # J

    .prologue
    .line 29
    sput-wide p0, Lcom/lenovo/safecenter/net/cache/NetCache;->g:J

    .line 30
    return-void
.end method

.method public static setCached_imsi(Ljava/lang/String;)V
    .locals 0
    .param p0, "cached_imsi"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lcom/lenovo/safecenter/net/cache/NetCache;->e:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static setCached_imsi2(Ljava/lang/String;)V
    .locals 0
    .param p0, "cached_imsi2"    # Ljava/lang/String;

    .prologue
    .line 41
    sput-object p0, Lcom/lenovo/safecenter/net/cache/NetCache;->f:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static setNetSettingHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "netSettingHandler"    # Landroid/os/Handler;

    .prologue
    .line 83
    sput-object p0, Lcom/lenovo/safecenter/net/cache/NetCache;->h:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public static setTraffic_used_progress(J)V
    .locals 0
    .param p0, "traffic_used_progress"    # J

    .prologue
    .line 48
    sput-wide p0, Lcom/lenovo/safecenter/net/cache/NetCache;->d:J

    .line 49
    return-void
.end method

.method public static setTraffic_used_progress2(J)V
    .locals 0
    .param p0, "traffic_used_progress2"    # J

    .prologue
    .line 54
    sput-wide p0, Lcom/lenovo/safecenter/net/cache/NetCache;->i:J

    .line 55
    return-void
.end method

.method public static setTraffic_view_height(F)V
    .locals 0
    .param p0, "traffic_view_height"    # F

    .prologue
    .line 75
    sput p0, Lcom/lenovo/safecenter/net/cache/NetCache;->b:F

    .line 76
    return-void
.end method

.method public static setTraffic_view_text_size(F)V
    .locals 0
    .param p0, "traffic_view_text_size"    # F

    .prologue
    .line 63
    sput p0, Lcom/lenovo/safecenter/net/cache/NetCache;->c:F

    .line 64
    return-void
.end method

.method public static setTraffic_view_width(F)V
    .locals 0
    .param p0, "traffic_view_width"    # F

    .prologue
    .line 69
    sput p0, Lcom/lenovo/safecenter/net/cache/NetCache;->a:F

    .line 70
    return-void
.end method
