.class public interface abstract Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService;
.super Ljava/lang/Object;
.source "IRemoteUsbDebugModeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setUsbDebugMode(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
