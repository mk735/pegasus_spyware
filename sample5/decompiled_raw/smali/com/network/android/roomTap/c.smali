.class final Lcom/network/android/roomTap/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/network/android/roomTap/a;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/c;->b:Lcom/network/android/roomTap/a;

    iput-object p2, p0, Lcom/network/android/roomTap/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/network/android/roomTap/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e(Landroid/content/Context;)V

    return-void
.end method
