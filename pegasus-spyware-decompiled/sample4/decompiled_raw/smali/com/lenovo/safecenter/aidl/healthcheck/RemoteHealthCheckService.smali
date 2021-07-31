.class public Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;
.super Landroid/app/Service;
.source "RemoteHealthCheckService.java"


# static fields
.field public static final COMMAND_ACTION_HEALTH_CANCEL_OPTIMIZE:Ljava/lang/String; = "health_canceloptimize"

.field public static final COMMAND_ACTION_HEALTH_CANCEL_SCAN:Ljava/lang/String; = "health_cancelscan"

.field public static final COMMAND_ACTION_HEALTH_OPTIMIZE:Ljava/lang/String; = "health_optimize"

.field public static final COMMAND_ACTION_HEALTH_SCAN:Ljava/lang/String; = "health_scan"


# instance fields
.field final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

.field private final c:Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService$Stub;

.field private d:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    .line 72
    new-instance v0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;-><init>(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c:Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService$Stub;

    .line 136
    new-instance v0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;-><init>(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->e:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->e:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    .prologue
    .line 34
    const-string v0, "wu0wu"

    const-string v1, "RemoteScanvirusService doCancelScan...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->exit()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->f:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportHealthcheckWithAIDL()V

    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->scan(Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, p2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->optimize(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    .prologue
    .line 34
    const-string v0, "wu0wu"

    const-string v1, "RemoteScanvirusService doCancelOptimize...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->exit()V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->e:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteService onBind action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c:Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "wu0wu"

    const-string v1, "RemoteService onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method
