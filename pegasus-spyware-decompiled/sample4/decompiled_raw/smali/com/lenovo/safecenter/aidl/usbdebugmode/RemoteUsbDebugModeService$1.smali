.class final Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$1;
.super Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;
.source "RemoteUsbDebugModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$1;->a:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;

    invoke-direct {p0}, Lcom/lenovo/safecenter/aidl/usbdebugmode/IRemoteUsbDebugModeService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setUsbDebugMode(Z)Z
    .locals 1
    .param p1, "isEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$1;->a:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->a(Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;Z)Z

    move-result v0

    return v0
.end method
