.class public interface abstract Lledroid/services/ILedroidPackageInstallObserver;
.super Ljava/lang/Object;
.source "ILedroidPackageInstallObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/services/ILedroidPackageInstallObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
