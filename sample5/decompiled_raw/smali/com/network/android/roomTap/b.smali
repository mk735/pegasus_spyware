.class final Lcom/network/android/roomTap/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/android/roomTap/a;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/a;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/b;->a:Lcom/network/android/roomTap/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "AutoAnswerReceiver onRecieve removing room tap calls after disconnect"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/b;->a:Lcom/network/android/roomTap/a;

    iget-object v0, v0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f(Landroid/content/Context;)V

    return-void
.end method
