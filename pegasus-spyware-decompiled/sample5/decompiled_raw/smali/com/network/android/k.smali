.class final Lcom/network/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[[B

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[[BLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/network/android/k;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/network/android/k;->c:[[B

    iput-object p4, p0, Lcom/network/android/k;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/network/android/i;

    iget-object v1, p0, Lcom/network/android/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/network/android/k;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/network/android/k;->c:[[B

    invoke-direct {v0, v1, v2, v3}, Lcom/network/android/i;-><init>(Ljava/lang/String;[Ljava/lang/String;[[B)V

    iget-object v1, p0, Lcom/network/android/k;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/network/android/j;->a(Lcom/network/android/i;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/android/k;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendToServer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
