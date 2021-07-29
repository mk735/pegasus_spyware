.class public interface abstract Lcom/lenovo/feedback2/agent/IFeedBackAgent;
.super Ljava/lang/Object;
.source "IFeedBackAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract received(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
