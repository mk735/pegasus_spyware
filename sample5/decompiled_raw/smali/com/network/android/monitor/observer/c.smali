.class final Lcom/network/android/monitor/observer/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/e/a/a;

.field final synthetic b:Lcom/network/android/monitor/observer/a;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/a;Lcom/network/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/monitor/observer/c;->b:Lcom/network/android/monitor/observer/a;

    iput-object p2, p0, Lcom/network/android/monitor/observer/c;->a:Lcom/network/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/network/android/monitor/observer/c;->b:Lcom/network/android/monitor/observer/a;

    iget-object v1, p0, Lcom/network/android/monitor/observer/c;->a:Lcom/network/e/a/a;

    invoke-virtual {v1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/network/android/monitor/observer/a;->a(Landroid/content/Context;)Lcom/network/android/monitor/b/a;

    return-void
.end method
