.class final Lcom/network/android/android/monitor/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/network/android/android/monitor/AndroidMonitorApplication;


# direct methods
.method constructor <init>(Lcom/network/android/android/monitor/AndroidMonitorApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/android/monitor/a;->a:Lcom/network/android/android/monitor/AndroidMonitorApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/network/e/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/network/e/a/a;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/network/android/android/monitor/a;->a:Lcom/network/android/android/monitor/AndroidMonitorApplication;

    invoke-static {v1}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a(Lcom/network/android/android/monitor/AndroidMonitorApplication;)Lcom/network/e/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/network/e/a/b;->b(Lcom/network/android/monitor/a/a;)V

    return-void
.end method
