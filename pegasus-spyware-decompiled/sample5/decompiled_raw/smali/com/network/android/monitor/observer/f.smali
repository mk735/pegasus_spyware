.class final Lcom/network/android/monitor/observer/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/network/android/monitor/observer/e;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/monitor/observer/f;->a:Lcom/network/android/monitor/observer/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Bluetooth: BluetoothDevice.ACTION_ACL_CONNECTED"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/monitor/observer/e;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth: ACTION_ACL_DISCONNECTED"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/monitor/observer/e;->a:Z

    goto :goto_0
.end method
