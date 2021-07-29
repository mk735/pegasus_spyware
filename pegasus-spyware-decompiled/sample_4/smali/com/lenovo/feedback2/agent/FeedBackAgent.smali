.class public Lcom/lenovo/feedback2/agent/FeedBackAgent;
.super Ljava/lang/Object;
.source "FeedBackAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/feedback2/agent/FeedBackAgent$a;,
        Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;,
        Lcom/lenovo/feedback2/agent/FeedBackAgent$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/lenovo/feedback2/agent/FeedBackAgent;

.field private static c:Ljava/lang/Object;


# instance fields
.field private final d:Lcom/lenovo/feedback2/agent/FeedBackAgent$a;

.field private e:Landroid/content/Context;

.field private final f:Lcom/lenovo/feedback2/agent/AgentContext;

.field private g:Landroid/content/ServiceConnection;

.field private h:Lcom/lenovo/feedback2/agent/CommandReceiver;

.field private i:Lcom/lenovo/feedback2/agent/IMessageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "FeedBackAgent"

    sput-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->c:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Lcom/lenovo/feedback2/agent/FeedBackAgent$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/feedback2/agent/FeedBackAgent$a;-><init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;B)V

    iput-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->d:Lcom/lenovo/feedback2/agent/FeedBackAgent$a;

    .line 28
    new-instance v2, Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-direct {v2}, Lcom/lenovo/feedback2/agent/AgentContext;-><init>()V

    iput-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->f:Lcom/lenovo/feedback2/agent/AgentContext;

    .line 60
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->e:Landroid/content/Context;

    .line 61
    sget-object v2, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    const-string v3, "FeedBackAgent create new instance"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p1}, Lcom/lenovo/feedback2/agent/ApplicationInfoCollector;->collectAppInfo(Landroid/content/Context;)Lcom/lenovo/feedback2/agent/ApplicationInfo;

    move-result-object v1

    .line 64
    .local v1, "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->f:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v2, p1}, Lcom/lenovo/feedback2/agent/AgentContext;->setContext(Landroid/content/Context;)V

    .line 65
    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->f:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v2, v1}, Lcom/lenovo/feedback2/agent/AgentContext;->setApplicationInfo(Lcom/lenovo/feedback2/agent/ApplicationInfo;)V

    .line 66
    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->f:Lcom/lenovo/feedback2/agent/AgentContext;

    new-instance v3, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    invoke-direct {v3, p0}, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;-><init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/feedback2/agent/AgentContext;->setHandler(Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;)V

    .line 69
    new-instance v2, Lcom/lenovo/feedback2/agent/CommandReceiver;

    invoke-direct {v2}, Lcom/lenovo/feedback2/agent/CommandReceiver;-><init>()V

    iput-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->h:Lcom/lenovo/feedback2/agent/CommandReceiver;

    .line 71
    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->h:Lcom/lenovo/feedback2/agent/CommandReceiver;

    iget-object v3, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->f:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v2, v3}, Lcom/lenovo/feedback2/agent/CommandReceiver;->setAgentContext(Lcom/lenovo/feedback2/agent/AgentContext;)V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.lenovo.feedback2.ServerStart"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "com.lenovo.feedback2.ServerRestart"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "com.lenovo.feedback2.ServerStop"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v2, "com.lenovo.feedback2.GetScreenShot"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v2, "com.lenovo.feedback2.Rebind"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->h:Lcom/lenovo/feedback2/agent/CommandReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b()V

    .line 82
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->g:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 86
    sget-object v1, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    const-string v2, "FeedBackAgent::bind create new connection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;-><init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;B)V

    iput-object v1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->g:Landroid/content/ServiceConnection;

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.feedback2"

    const-string v2, "com.lenovo.feedback2.service.FeedBackService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v1, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    const-string v2, "FeedBackAgent::bind has bound to service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    const-string v1, "FeedBackAgent::unbind "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic c(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/AgentContext;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->f:Lcom/lenovo/feedback2/agent/AgentContext;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/FeedBackAgent$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->d:Lcom/lenovo/feedback2/agent/FeedBackAgent$a;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/IMessageListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->i:Lcom/lenovo/feedback2/agent/IMessageListener;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    sget-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a:Ljava/lang/String;

    const-string v1, "FeedBackAgent::init null context!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/lenovo/feedback2/agent/FeedBackAgent;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-direct {v0, p0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    .line 48
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setMessageListener(Lcom/lenovo/feedback2/agent/IMessageListener;)V
    .locals 1
    .param p0, "messageListener"    # Lcom/lenovo/feedback2/agent/IMessageListener;

    .prologue
    .line 106
    sget-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    iput-object p0, v0, Lcom/lenovo/feedback2/agent/FeedBackAgent;->i:Lcom/lenovo/feedback2/agent/IMessageListener;

    .line 109
    :cond_0
    return-void
.end method
