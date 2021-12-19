.class final Lcom/network/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/android/b;


# direct methods
.method constructor <init>(Lcom/network/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/c;->a:Lcom/network/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/network/android/c;->a:Lcom/network/android/b;

    iget-object v0, v0, Lcom/network/android/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f(Landroid/content/Context;)V

    return-void
.end method
