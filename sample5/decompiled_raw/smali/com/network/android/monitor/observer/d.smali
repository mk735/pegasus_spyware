.class final Lcom/network/android/monitor/observer/d;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/network/e/a/a;

.field final synthetic b:Lcom/network/android/monitor/observer/a;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/a;Lcom/network/e/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/network/android/monitor/observer/d;->b:Lcom/network/android/monitor/observer/a;

    iput-object p2, p0, Lcom/network/android/monitor/observer/d;->a:Lcom/network/e/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/network/android/monitor/observer/d;->b:Lcom/network/android/monitor/observer/a;

    iget-object v1, p0, Lcom/network/android/monitor/observer/d;->a:Lcom/network/e/a/a;

    invoke-virtual {v0, v1}, Lcom/network/android/monitor/observer/a;->a(Lcom/network/e/a/a;)V

    return-void
.end method
