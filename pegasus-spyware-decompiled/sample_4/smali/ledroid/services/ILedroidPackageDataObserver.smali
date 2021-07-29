.class public interface abstract Lledroid/services/ILedroidPackageDataObserver;
.super Ljava/lang/Object;
.source "ILedroidPackageDataObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/services/ILedroidPackageDataObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRemoveCompleted(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
