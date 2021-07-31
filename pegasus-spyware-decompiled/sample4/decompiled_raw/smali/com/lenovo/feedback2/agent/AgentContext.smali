.class public Lcom/lenovo/feedback2/agent/AgentContext;
.super Ljava/lang/Object;
.source "AgentContext.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/feedback2/service/IFeedBackService;

.field private c:Lcom/lenovo/feedback2/agent/ApplicationInfo;

.field private d:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/AgentContext;->c:Lcom/lenovo/feedback2/agent/ApplicationInfo;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/AgentContext;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getFeedBackService()Lcom/lenovo/feedback2/service/IFeedBackService;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/AgentContext;->b:Lcom/lenovo/feedback2/service/IFeedBackService;

    return-object v0
.end method

.method public getHandler()Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/AgentContext;->d:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    return-object v0
.end method

.method public setApplicationInfo(Lcom/lenovo/feedback2/agent/ApplicationInfo;)V
    .locals 0
    .param p1, "applicationInfo"    # Lcom/lenovo/feedback2/agent/ApplicationInfo;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/AgentContext;->c:Lcom/lenovo/feedback2/agent/ApplicationInfo;

    .line 31
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/AgentContext;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public setFeedBackService(Lcom/lenovo/feedback2/service/IFeedBackService;)V
    .locals 0
    .param p1, "feedBackService"    # Lcom/lenovo/feedback2/service/IFeedBackService;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/AgentContext;->b:Lcom/lenovo/feedback2/service/IFeedBackService;

    .line 25
    return-void
.end method

.method public setHandler(Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/AgentContext;->d:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    .line 37
    return-void
.end method
