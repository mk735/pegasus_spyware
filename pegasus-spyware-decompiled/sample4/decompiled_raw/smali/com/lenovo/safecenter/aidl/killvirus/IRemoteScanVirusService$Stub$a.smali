.class final Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub$a;
.super Ljava/lang/Object;
.source "IRemoteScanVirusService.java"

# interfaces
.implements Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub$a;->a:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final receiveCommand(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public final registerCallback(Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;)V
    .locals 5
    .param p1, "cb"    # Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 112
    iget-object v2, p0, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    return-void

    .line 111
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public final unregisterCallback(Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;)V
    .locals 5
    .param p1, "cb"    # Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    iget-object v2, p0, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-void

    .line 126
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
