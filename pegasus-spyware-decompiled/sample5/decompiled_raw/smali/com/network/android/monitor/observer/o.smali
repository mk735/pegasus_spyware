.class final Lcom/network/android/monitor/observer/o;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/network/android/monitor/observer/n;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/n;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/network/android/monitor/observer/o;->b:Lcom/network/android/monitor/observer/n;

    iput-object p2, p0, Lcom/network/android/monitor/observer/o;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sms ContentObserver onChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/monitor/observer/o;->b:Lcom/network/android/monitor/observer/n;

    invoke-static {v0}, Lcom/network/android/monitor/observer/n;->a(Lcom/network/android/monitor/observer/n;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/network/android/monitor/observer/p;

    invoke-direct {v1, p0}, Lcom/network/android/monitor/observer/p;-><init>(Lcom/network/android/monitor/observer/o;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/network/android/monitor/observer/o;->b:Lcom/network/android/monitor/observer/n;

    invoke-static {v0}, Lcom/network/android/monitor/observer/n;->a(Lcom/network/android/monitor/observer/n;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/network/android/monitor/observer/q;

    invoke-direct {v1, p0}, Lcom/network/android/monitor/observer/q;-><init>(Lcom/network/android/monitor/observer/o;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
