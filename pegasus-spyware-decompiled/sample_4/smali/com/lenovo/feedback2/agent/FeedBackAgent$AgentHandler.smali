.class public Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;
.super Ljava/lang/Object;
.source "FeedBackAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/agent/FeedBackAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgentHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/feedback2/agent/FeedBackAgent;


# direct methods
.method public constructor <init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V

    .line 118
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->b(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V

    .line 122
    return-void
.end method
