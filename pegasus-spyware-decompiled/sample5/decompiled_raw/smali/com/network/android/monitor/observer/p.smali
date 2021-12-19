.class final Lcom/network/android/monitor/observer/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/android/monitor/observer/o;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/o;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/monitor/observer/p;->a:Lcom/network/android/monitor/observer/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/network/android/monitor/observer/p;->a:Lcom/network/android/monitor/observer/o;

    iget-object v0, v0, Lcom/network/android/monitor/observer/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->g(Landroid/content/Context;)V

    return-void
.end method
