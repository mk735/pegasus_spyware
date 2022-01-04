.class final Lcom/network/android/monitor/observer/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/network/android/monitor/observer/BatteryReceiver;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/BatteryReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/monitor/observer/s;->c:Lcom/network/android/monitor/observer/BatteryReceiver;

    iput-object p2, p0, Lcom/network/android/monitor/observer/s;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/network/android/monitor/observer/s;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/network/android/monitor/observer/s;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/network/android/monitor/observer/s;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/network/android/monitor/observer/BatteryReceiver;->a(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
