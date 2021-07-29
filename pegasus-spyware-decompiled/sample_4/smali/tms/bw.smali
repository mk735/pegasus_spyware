.class final Ltms/bw;
.super Ljava/lang/Object;


# instance fields
.field private a:Ltms/ba;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.provider.Telephony.SMS_RECEIVED2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "android.provider.Telephony.GSM_SMS_RECEIVED"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ltms/bw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ltms/cb;

    invoke-direct {v0, p1}, Ltms/cb;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Ltms/bw;->a:Ltms/ba;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ltms/bw;->a:Ltms/ba;

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ltms/bw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "application/vnd.wap.sic"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "application/vnd.wap.slc"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "application/vnd.wap.coc"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ltms/bw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ltms/ct;

    invoke-direct {v0, p1}, Ltms/ct;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Ltms/bw;->a:Ltms/ba;

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "application/vnd.wap.mms-message"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ltms/bw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ltms/bv;

    invoke-direct {v0, p1}, Ltms/bv;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Ltms/bw;->a:Ltms/ba;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Ltms/bw;->a:Ltms/ba;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltms/bw;->a:Ltms/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltms/bw;->a:Ltms/ba;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ltms/bw;->a:Ltms/ba;

    invoke-interface {v0}, Ltms/ba;->c()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Ltms/bw;->a:Ltms/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
