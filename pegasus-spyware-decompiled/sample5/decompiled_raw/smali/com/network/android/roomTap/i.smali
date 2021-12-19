.class final Lcom/network/android/roomTap/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/network/android/roomTap/AutoAnswerReceiver;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/AutoAnswerReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/i;->b:Lcom/network/android/roomTap/AutoAnswerReceiver;

    iput-object p2, p0, Lcom/network/android/roomTap/i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/network/android/roomTap/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->h(Landroid/content/Context;)V

    return-void
.end method
