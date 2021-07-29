.class public interface abstract Lledroid/services/ILedroidPackageMoveObserver;
.super Ljava/lang/Object;
.source "ILedroidPackageMoveObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/services/ILedroidPackageMoveObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageMoved(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
