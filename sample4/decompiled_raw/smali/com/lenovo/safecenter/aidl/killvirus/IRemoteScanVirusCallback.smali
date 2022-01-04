.class public interface abstract Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;
.super Ljava/lang/Object;
.source "IRemoteScanVirusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
