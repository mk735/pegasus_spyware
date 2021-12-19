.class final Lcom/network/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/network/android/b;


# direct methods
.method constructor <init>(Lcom/network/android/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/d;->b:Lcom/network/android/b;

    iput-object p2, p0, Lcom/network/android/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/network/android/d;->b:Lcom/network/android/b;

    iget-object v0, v0, Lcom/network/android/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/network/android/d;->b:Lcom/network/android/b;

    iget-object v1, v1, Lcom/network/android/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/network/android/d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/network/android/AndroidCallDirectWatcher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
