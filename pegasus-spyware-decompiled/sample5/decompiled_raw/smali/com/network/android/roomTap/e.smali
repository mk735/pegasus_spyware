.class final Lcom/network/android/roomTap/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Disconnect calling disconnectWithAireplaneMode"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->h()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Disconnect phone is not ofhook, calling roleBack..."

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e(Landroid/content/Context;)V

    goto :goto_0
.end method
