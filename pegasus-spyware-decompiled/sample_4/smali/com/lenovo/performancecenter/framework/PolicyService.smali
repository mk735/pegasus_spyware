.class public Lcom/lenovo/performancecenter/framework/PolicyService;
.super Landroid/app/Service;
.source "PolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

.field private final b:Landroid/os/IBinder;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;-><init>(Lcom/lenovo/performancecenter/framework/PolicyService;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->b:Landroid/os/IBinder;

    .line 114
    new-instance v0, Lcom/lenovo/performancecenter/framework/PolicyService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/PolicyService$1;-><init>(Lcom/lenovo/performancecenter/framework/PolicyService;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/framework/PolicyService;II)V
    .locals 9
    .param p0, "x0"    # Lcom/lenovo/performancecenter/framework/PolicyService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/4 v8, 0x0

    .line 20
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03011c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0904b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0877

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    int-to-long v6, p2

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/performancecenter/framework/PolicyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string v0, "PolicyService"

    const-string v1, "PolicyService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->c:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getSingleton(Landroid/content/Context;Landroid/os/Handler;)Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    const-string v0, "PolicyService"

    const-string v1, "PolicyService : onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    invoke-virtual {v1, p0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->stopPolicyTask(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->releaseInstance()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    .line 87
    const-string v1, "PolicyService"

    const-string v2, "PolicyService : onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/performancecenter/framework/PolicyService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/framework/PolicyService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 75
    const-string v0, "PolicyService"

    const-string v1, "PolicyService : onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    const-string v0, "PolicyService"

    const-string v1, "PolicyService : onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 46
    const-string v0, "PolicyService"

    const-string v1, "PolicyService : onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->c:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getSingleton(Landroid/content/Context;Landroid/os/Handler;)Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const-string v0, "PolicyService"

    const-string v1, "PolicyService : onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public updateConfiguration(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService;->a:Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->updateConfiguration(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    .line 80
    return-void
.end method
