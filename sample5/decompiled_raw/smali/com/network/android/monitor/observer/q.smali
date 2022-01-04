.class final Lcom/network/android/monitor/observer/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/android/monitor/observer/o;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/o;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/monitor/observer/q;->a:Lcom/network/android/monitor/observer/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/network/android/monitor/observer/q;->a:Lcom/network/android/monitor/observer/o;

    iget-object v0, v0, Lcom/network/android/monitor/observer/o;->b:Lcom/network/android/monitor/observer/n;

    iget-object v1, p0, Lcom/network/android/monitor/observer/q;->a:Lcom/network/android/monitor/observer/o;

    iget-object v1, v1, Lcom/network/android/monitor/observer/o;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/network/android/monitor/observer/n;->a(Lcom/network/android/monitor/observer/n;Landroid/content/Context;)V

    return-void
.end method
