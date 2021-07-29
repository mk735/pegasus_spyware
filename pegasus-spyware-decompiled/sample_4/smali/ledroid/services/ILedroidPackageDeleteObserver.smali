.class public interface abstract Lledroid/services/ILedroidPackageDeleteObserver;
.super Ljava/lang/Object;
.source "ILedroidPackageDeleteObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/services/ILedroidPackageDeleteObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageDeleted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract packageDeletedCompatible(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
