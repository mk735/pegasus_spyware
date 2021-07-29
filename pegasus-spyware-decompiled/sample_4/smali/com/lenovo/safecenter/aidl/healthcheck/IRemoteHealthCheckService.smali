.class public interface abstract Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService;
.super Ljava/lang/Object;
.source "IRemoteHealthCheckService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService$Stub;
    }
.end annotation


# virtual methods
.method public abstract receiveCommand(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
