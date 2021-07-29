.class final Lcom/lenovo/feedback2/agent/FeedBackAgent$a;
.super Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub;
.source "FeedBackAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/agent/FeedBackAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/feedback2/agent/FeedBackAgent;


# direct methods
.method private constructor <init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$a;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-direct {p0}, Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;B)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/lenovo/feedback2/agent/FeedBackAgent$a;-><init>(Lcom/lenovo/feedback2/agent/FeedBackAgent;)V

    return-void
.end method


# virtual methods
.method public final received(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .locals 3
    .param p1, "message"    # Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AgentCallBack::received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/feedback2/message/Message;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$a;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->e(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/IMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/FeedBackAgent$a;->a:Lcom/lenovo/feedback2/agent/FeedBackAgent;

    invoke-static {v0}, Lcom/lenovo/feedback2/agent/FeedBackAgent;->e(Lcom/lenovo/feedback2/agent/FeedBackAgent;)Lcom/lenovo/feedback2/agent/IMessageListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/feedback2/agent/IMessageListener;->onReceivedMessage(Lcom/lenovo/feedback2/message/Message;)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
