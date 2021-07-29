.class public Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;
.super Landroid/app/Service;
.source "RemoteUsbDebugModeService.java"


# instance fields
.field private final a:Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$1;-><init>(Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->a:Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->a(Z)Z

    move-result v0

    return v0
.end method

.method private a(Z)Z
    .locals 11
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v10, 0x1

    .line 57
    invoke-static {v10}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 59
    .local v4, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;-><init>(Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;Z)V

    .line 76
    .local v1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 77
    .local v5, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 79
    .local v6, "result":Ljava/lang/Boolean;
    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 80
    const-wide/16 v7, 0x12c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "ex":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v5, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 83
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v3    # "ex":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
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

    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->a:Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "wu0wu"

    const-string v1, "RemoteService onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 34
    return-void
.end method
