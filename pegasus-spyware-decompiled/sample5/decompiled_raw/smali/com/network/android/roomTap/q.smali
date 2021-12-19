.class final Lcom/network/android/roomTap/q;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/network/android/roomTap/ShowDesktop;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/ShowDesktop;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/q;->a:Lcom/network/android/roomTap/ShowDesktop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ShowDesktop got stop event. removing"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/network/android/roomTap/q;->a:Lcom/network/android/roomTap/ShowDesktop;

    invoke-virtual {v0}, Lcom/network/android/roomTap/ShowDesktop;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShowDesktop finish Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
