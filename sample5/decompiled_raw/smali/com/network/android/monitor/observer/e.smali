.class public final Lcom/network/android/monitor/observer/e;
.super Lcom/network/android/monitor/observer/r;


# static fields
.field public static a:Z

.field private static final b:[Ljava/lang/String;


# instance fields
.field private e:Lcom/network/android/monitor/observer/t;

.field private f:Landroid/content/BroadcastReceiver;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/network/android/monitor/observer/e;->b:[Ljava/lang/String;

    sput-boolean v1, Lcom/network/android/monitor/observer/e;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/network/android/monitor/observer/r;-><init>()V

    new-instance v0, Lcom/network/android/monitor/observer/BatteryReceiver;

    invoke-direct {v0}, Lcom/network/android/monitor/observer/BatteryReceiver;-><init>()V

    iput-object v0, p0, Lcom/network/android/monitor/observer/e;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/network/android/monitor/observer/f;

    invoke-direct {v0, p0}, Lcom/network/android/monitor/observer/f;-><init>(Lcom/network/android/monitor/observer/e;)V

    iput-object v0, p0, Lcom/network/android/monitor/observer/e;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a(Lcom/network/android/monitor/a/a;)V
    .locals 5

    const-string v0, "AndroidCellInfoWatcher start started"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/android/monitor/a/a;)V

    move-object v0, p1

    check-cast v0, Lcom/network/e/a/a;

    invoke-virtual {v0}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/network/e/a/a;

    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/network/android/monitor/observer/e;->f:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/network/android/monitor/observer/e;->g:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/network/android/monitor/observer/e;->g:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/network/android/monitor/observer/t;

    invoke-direct {v1}, Lcom/network/android/monitor/observer/t;-><init>()V

    iput-object v1, p0, Lcom/network/android/monitor/observer/e;->e:Lcom/network/android/monitor/observer/t;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/network/android/monitor/observer/e;->e:Lcom/network/android/monitor/observer/t;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "AndroidCellInfoWatcher start ended"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/android/monitor/observer/e;->b:[Ljava/lang/String;

    return-object v0
.end method
