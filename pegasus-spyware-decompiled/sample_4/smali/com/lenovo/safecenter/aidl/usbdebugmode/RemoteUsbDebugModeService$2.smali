.class final Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;
.super Ljava/lang/Object;
.source "RemoteUsbDebugModeService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;Z)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;->b:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;

    iput-boolean p2, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;->b:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;->b:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;->b:Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    iget-boolean v3, p0, Lcom/lenovo/safecenter/aidl/usbdebugmode/RemoteUsbDebugModeService$2;->a:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
