.class public interface abstract Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService;
.super Ljava/lang/Object;
.source "IRemoteScanVirusService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;
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

.method public abstract registerCallback(Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
