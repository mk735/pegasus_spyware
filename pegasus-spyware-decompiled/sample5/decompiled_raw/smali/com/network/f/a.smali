.class public final Lcom/network/f/a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/a;


# static fields
.field public static b:Z

.field public static c:I

.field public static final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private static e:I

.field private static f:I

.field private static g:I


# instance fields
.field public a:I

.field private h:La/a/a/a/a/b;

.field private i:Ljava/lang/String;

.field private j:La/a/a/a/a/d;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:La/a/a/a/a/e;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/content/Context;

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput v0, Lcom/network/f/a;->e:I

    const/4 v0, 0x4

    sput v0, Lcom/network/f/a;->f:I

    const/16 v0, 0x8

    sput v0, Lcom/network/f/a;->g:I

    sput-boolean v1, Lcom/network/f/a;->b:Z

    sput v1, Lcom/network/f/a;->c:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/network/f/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/network/f/a;->a:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/network/f/a;->r:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/network/f/a;->s:I

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerPushListener New brokerUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clientId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topicName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/network/f/a;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/network/f/a;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/network/f/a;->l:I

    iput-object p2, p0, Lcom/network/f/a;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/network/f/a;->o:Ljava/lang/String;

    iput-object p5, p0, Lcom/network/f/a;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/network/f/a;->q:Landroid/content/Context;

    invoke-static {}, Lcom/network/b/b;->E()I

    move-result v0

    iput v0, p0, Lcom/network/f/a;->r:I

    iget v0, p0, Lcom/network/f/a;->r:I

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/network/f/a;->s:I

    iget v0, p0, Lcom/network/f/a;->s:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/network/f/a;->s:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerPushListener keepAlive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/network/f/a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerPushListener keepAliveMinutes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/network/f/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, La/a/a/a/a/d;

    invoke-direct {v0}, La/a/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/network/f/a;->j:La/a/a/a/a/d;

    iget-object v0, p0, Lcom/network/f/a;->j:La/a/a/a/a/d;

    invoke-virtual {v0}, La/a/a/a/a/d;->j()V

    iget-object v0, p0, Lcom/network/f/a;->j:La/a/a/a/a/d;

    iget-object v1, p0, Lcom/network/f/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, La/a/a/a/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/f/a;->j:La/a/a/a/a/d;

    iget-object v1, p0, Lcom/network/f/a;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/d;->a([C)V

    iget v0, p0, Lcom/network/f/a;->r:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/network/f/a;->j:La/a/a/a/a/d;

    invoke-virtual {v1, v0}, La/a/a/a/a/d;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener keepAliveInterval "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "/data/data/com.network.android/network_cache/"

    new-instance v1, La/a/a/a/a/e;

    invoke-direct {v1, v0}, La/a/a/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/network/f/a;->n:La/a/a/a/a/e;

    invoke-direct {p0}, Lcom/network/f/a;->b()V

    iget-object v0, p0, Lcom/network/f/a;->k:Ljava/lang/String;

    iget v1, p0, Lcom/network/f/a;->l:I

    invoke-direct {p0, v0, v1}, Lcom/network/f/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener - "

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

.method private a(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/network/b/b;->F()I

    move-result v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "subscribeUntilSuccess start. times to try to connect: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v1, "subscribeUntilSuccess setting minutesPastFromLastConnectionFailure to 0"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput v1, Lcom/network/f/a;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_5

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "subscribeUntilSuccess attemt number: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "ServerPushListener subscribe start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/f/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subscribe ServerPushListener subscription lock is locked. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "subscribeUntilSuccess successfully connected. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/f/a;->b:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    if-nez v0, :cond_1

    const-string v0, "subscribe ServerPushListener serverpushListener is null. returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    const/16 v4, 0x67

    :try_start_5
    const-string v5, "MOSQ_ERR_CONN_REFUSED"

    invoke-static {v3, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPushListener subscribe - exception in subscribe. disconnecting and getting a new object. \n\n exception data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "ServerPushListener - deleteOldConnectionObject start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {p0}, Lcom/network/f/a;->a()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-direct {p0}, Lcom/network/f/a;->b()V

    :goto_3
    const-string v0, "subscribe finished. unlocking lock and returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/f/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPushListener - subscribeUntilSuccess exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ServerPushListener subscribe Connected to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/network/f/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    iget-object v3, p0, Lcom/network/f/a;->j:La/a/a/a/a/d;

    invoke-virtual {v0, v3}, La/a/a/a/a/b;->a(La/a/a/a/a/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ServerPushListener subscribe Subscribing to topic \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" qos "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/f/a;->q:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "ServerPushListener subscribe subscribe no internet connection. unlocking lock and returning"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/f/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    invoke-virtual {v0, p1, p2}, La/a/a/a/a/b;->a(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPushListener deleteOldConnectionObject- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-direct {p0}, Lcom/network/f/a;->b()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/network/f/a;->b()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "subscribeUntilSuccess failed subscribing on attemp: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener - subscribeUntilSuccess exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_5
    sput-boolean v6, Lcom/network/f/a;->b:Z

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "isMqttAllowed starting"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isMqttAllowed we are not supposed to use mqtt. returning false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/network/b/b;->b()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMqttAllowedAccordingToPhoneConnection allowedConnection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget v3, Lcom/network/f/a;->e:I

    and-int/2addr v3, v0

    sget v4, Lcom/network/f/a;->e:I

    if-ne v3, v4, :cond_3

    move v7, v1

    :goto_1
    sget v3, Lcom/network/f/a;->f:I

    and-int/2addr v3, v0

    sget v4, Lcom/network/f/a;->f:I

    if-ne v3, v4, :cond_4

    move v6, v1

    :goto_2
    sget v3, Lcom/network/f/a;->g:I

    and-int/2addr v0, v3

    sget v3, Lcom/network/f/a;->g:I

    if-ne v0, v3, :cond_5

    move v5, v1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isMqttAllowed isAllowedOnCellular: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isMqttAllowed isAllowedOnRoaming: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isMqttAllowed isAllowedOnWifi: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v8

    array-length v9, v8

    move v4, v2

    move v0, v2

    move v3, v2

    :goto_4
    if-ge v4, v9, :cond_6

    aget-object v10, v8, v4

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WIFI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v3, "isMqttAllowed phone is connected via wifi"

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v3, v1

    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MOBILE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v0, "isMqttAllowed phone is connected via cellular"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    move v7, v2

    goto/16 :goto_1

    :cond_4
    move v6, v2

    goto/16 :goto_2

    :cond_5
    move v5, v2

    goto/16 :goto_3

    :cond_6
    if-nez v7, :cond_7

    if-eqz v3, :cond_7

    const-string v0, "isMqttAllowed wifi not allowed returning false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_7
    if-nez v6, :cond_8

    if-eqz v0, :cond_8

    const-string v0, "isMqttAllowed cellular not allowed returning false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_8
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_9

    invoke-static {v0}, Lcom/network/android/j;->a(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v7, :cond_a

    if-eqz v3, :cond_a

    const-string v0, "isMqttAllowed roaming not allowed  but we are connected on wifi and it is allowed"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_9
    const-string v0, "isMqttAllowed finished. returning true"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isMqttAllowed exception - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    goto/16 :goto_0

    :cond_a
    :try_start_1
    const-string v0, "isMqttAllowed roaming not allowed  returning false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto/16 :goto_0
.end method

.method private b()V
    .locals 4

    const-string v0, "ServerPushListener - createNewConnectionObject start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, La/a/a/a/a/b;

    iget-object v1, p0, Lcom/network/f/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/network/f/a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/network/f/a;->n:La/a/a/a/a/e;

    invoke-direct {v0, v1, v2, v3}, La/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/c;)V

    iput-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    invoke-virtual {v0, p0}, La/a/a/a/a/b;->a(La/a/a/a/a/a;)V

    const-string v0, "ServerPushListener - createNewConnectionObject end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener createNewConnectionObject - "

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


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "ServerPushListener - removeConnection start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    iget-object v1, p0, Lcom/network/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, La/a/a/a/a/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/network/f/a;->h:La/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/b;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener removeConnection- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener removeConnection- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(La/a/a/a/a/h;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerPushListener deliveryComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, La/a/a/a/a/h;->a()La/a/a/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener deliveryComplete - "

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

.method public final a(La/a/a/a/a/n;La/a/a/a/a/j;)V
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/network/f/a;->a:I

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, La/a/a/a/a/j;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener !!!messageArrived!!!  Topic:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Message:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  QoS:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, La/a/a/a/a/j;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/network/f/a;->q:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/a/b;->a([BLandroid/content/Context;ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/network/f/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/a/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerPushListener messageArrived exception! - "

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

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ServerPushListener connectionLost"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerPushListener connectionLost - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/network/f/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/f/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServerPushListener connectionLost trying to reconnect"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/f/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/media/CoreReceiver;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
