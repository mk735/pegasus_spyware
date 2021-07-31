.class final Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub$a;
.super Ljava/lang/Object;
.source "IRemoteUsbDebugModeService.java"

# interfaces
.implements Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;
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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub$a;->a:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final setUsbDebugMode(Z)Z
    .locals 7
    .param p1, "isEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 76
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.lenovo.safecenter.aidl.usbdebugmode.IRemoteUsbDebugModeService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v4, v3

    .line 80
    goto :goto_0

    :cond_1
    move v2, v3

    .line 83
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
