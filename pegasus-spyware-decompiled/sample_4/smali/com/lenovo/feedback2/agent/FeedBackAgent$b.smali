.class final Lcom/lenovo/feedback2/agent/FeedBackAgent$b;
.super Ljava/lang/Object;
.source "FeedBackAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/agent/FeedBackAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/feedback2/agent/FeedBackAgent;


# direct methods
.method private constructor <init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;B)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;-><init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 132
    invoke-static {p2}, Lcom/lenovo/feedback2/service/IFeedBackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/feedback2/service/IFeedBackService;

    move-result-object v0

    .line 133
    .local v0, "feedBackService":Lcom/lenovo/feedback2/service/IFeedBackService;
    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FeedBackAgent::onServiceConnected null service binder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v2}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->c(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/AgentContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/feedback2/agent/AgentContext;->getApplicationInfo()Lcom/lenovo/feedback2/agent/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v3}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->d(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/FeedBackAgent$a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/feedback2/service/IFeedBackService;->setAgentCallBack(ILjava/lang/String;Lcom/lenovo/feedback2/agent/IFeedBackAgent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    iget-object v1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v1}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->c(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/AgentContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/feedback2/agent/AgentContext;->setFeedBackService(Lcom/lenovo/feedback2/service/IFeedBackService;)V

    .line 149
    new-instance v1, Lcom/lenovo/feedback2/agent/CrashHandler;

    iget-object v2, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v2}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->c(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/AgentContext;

    move-result-object v2

    new-instance v3, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    iget-object v4, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$b;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-direct {v3, v4}, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;-><init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V

    invoke-direct {v1, v2, v3}, Lcom/lenovo/feedback2/agent/CrashHandler;-><init>(Lcom/lenovo/feedback2/agent/AgentContext;Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 156
    return-void
.end method
