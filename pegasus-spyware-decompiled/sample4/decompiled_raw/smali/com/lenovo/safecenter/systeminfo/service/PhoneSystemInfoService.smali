.class public Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;
.super Ljava/lang/Object;
.source "PhoneSystemInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;->a:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    if-nez v0, :cond_0

    .line 20
    const-class v1, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    monitor-enter v1

    .line 22
    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/PhoneSystemInfoService;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
