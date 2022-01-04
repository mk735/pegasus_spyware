.class public interface abstract Lcom/lenovo/feedback2/service/IFeedBackService;
.super Ljava/lang/Object;
.source "IFeedBackService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/feedback2/service/IFeedBackService$Stub;
    }
.end annotation


# virtual methods
.method public abstract callAgent(ILjava/lang/String;Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract send(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAgentCallBack(ILjava/lang/String;Lcom/lenovo/feedback2/agent/IFeedBackAgent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
