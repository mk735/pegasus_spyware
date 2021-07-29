.class public Lcom/lenovo/feedback2/agent/CommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommandReceiver.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/lenovo/feedback2/agent/AgentContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "FeedBackAgent"

    sput-object v0, Lcom/lenovo/feedback2/agent/CommandReceiver;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/feedback2/agent/CommandReceiver;->a:Ljava/lang/String;

    const-string v1, "CommandReceiver rebind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/CommandReceiver;->b:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v0}, Lcom/lenovo/feedback2/agent/AgentContext;->getHandler()Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->unbind()V

    .line 45
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/CommandReceiver;->b:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v0}, Lcom/lenovo/feedback2/agent/AgentContext;->getHandler()Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->bind()V

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.lenovo.feedback2.ServerStart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-direct {p0}, Lcom/lenovo/feedback2/agent/CommandReceiver;->a()V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v3, "com.lenovo.feedback2.ServerRestart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    invoke-direct {p0}, Lcom/lenovo/feedback2/agent/CommandReceiver;->a()V

    goto :goto_0

    .line 28
    :cond_2
    const-string v3, "com.lenovo.feedback2.ServerStop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    sget-object v3, Lcom/lenovo/feedback2/agent/CommandReceiver;->a:Ljava/lang/String;

    const-string v4, "CommandReceiver unbind from service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v3, p0, Lcom/lenovo/feedback2/agent/CommandReceiver;->b:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/AgentContext;->getHandler()Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->unbind()V

    goto :goto_0

    .line 32
    :cond_3
    const-string v3, "com.lenovo.feedback2.Rebind"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 33
    invoke-direct {p0}, Lcom/lenovo/feedback2/agent/CommandReceiver;->a()V

    goto :goto_0

    .line 35
    :cond_4
    const-string v3, "com.lenovo.feedback2.GetScreenShot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const-string v3, "id"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 37
    .local v1, "id":J
    sget-object v3, Lcom/lenovo/feedback2/agent/CommandReceiver;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CommandReceiver::received screenshot command. id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lenovo/feedback2/agent/ScreenShotHandler;

    iget-object v5, p0, Lcom/lenovo/feedback2/agent/CommandReceiver;->b:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-direct {v4, v5, v1, v2}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;-><init>(Lcom/lenovo/feedback2/agent/AgentContext;J)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAgentContext(Lcom/lenovo/feedback2/agent/AgentContext;)V
    .locals 0
    .param p1, "agentContext"    # Lcom/lenovo/feedback2/agent/AgentContext;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/CommandReceiver;->b:Lcom/lenovo/feedback2/agent/AgentContext;

    .line 17
    return-void
.end method
