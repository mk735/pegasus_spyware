.class public Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver$1;-><init>(Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    const-string v2, "tt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.forcestop.antivirus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.antivirus.init"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "antivirus"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "hasInitialized"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 52
    .end local v1    # "service":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
