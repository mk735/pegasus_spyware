.class public final Lcom/network/android/monitor/observer/l;
.super Lcom/network/android/monitor/observer/r;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private e:Landroid/database/ContentObserver;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/network/android/monitor/observer/l;->b:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/network/android/monitor/observer/l;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/network/android/monitor/observer/r;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/network/android/monitor/observer/l;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/network/android/monitor/observer/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/network/android/monitor/observer/l;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/network/android/monitor/observer/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/network/android/monitor/observer/l;->g:J

    return-wide p1
.end method

.method static synthetic b(Lcom/network/android/monitor/observer/l;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/monitor/observer/l;->h:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/network/android/monitor/a/a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/android/monitor/a/a;)V

    check-cast p1, Lcom/network/e/a/a;

    :try_start_0
    iget-object v0, p0, Lcom/network/android/monitor/observer/l;->e:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/network/android/monitor/observer/m;

    invoke-direct {v1, p0, p1}, Lcom/network/android/monitor/observer/m;-><init>(Lcom/network/android/monitor/observer/l;Lcom/network/e/a/a;)V

    iput-object v1, p0, Lcom/network/android/monitor/observer/l;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.email.provider//"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/network/android/monitor/observer/l;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get mail registerContentObserver - "

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

.method public final a(Lcom/network/e/a/a;)V
    .locals 0

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/network/android/monitor/observer/l;->b:[Ljava/lang/String;

    return-object v0
.end method
