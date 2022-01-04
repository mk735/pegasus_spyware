.class public final Ltms/bb;
.super Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/bb$c;,
        Ltms/bb$d;,
        Ltms/bb$b;,
        Ltms/bb$a;,
        Ltms/bb$e;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;


# instance fields
.field private b:Ltms/bb$e;

.field private c:Landroid/content/ContentResolver;

.field private d:Ltms/bb$c;

.field private e:Landroid/content/Context;

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v3, "number"

    aput-object v3, v2, v0

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "type"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "duration"

    aput-object v4, v2, v3

    const-string v3, "date"

    aput-object v3, v2, v5

    iput-object v2, p0, Ltms/bb;->f:[Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v3, "address"

    aput-object v3, v2, v0

    const-string v3, "type"

    aput-object v3, v2, v6

    const-string v3, "body"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "person"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    iput-object v2, p0, Ltms/bb;->g:[Ljava/lang/String;

    iput-object p1, p0, Ltms/bb;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v5, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ltms/bb$b;

    invoke-direct {v0, p0}, Ltms/bb$b;-><init>(Ltms/bb;)V

    :goto_1
    iput-object v0, p0, Ltms/bb;->b:Ltms/bb$e;

    new-instance v0, Ltms/bb$c;

    invoke-direct {v0, p0}, Ltms/bb$c;-><init>(Ltms/bb;)V

    iput-object v0, p0, Ltms/bb;->d:Ltms/bb$c;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ltms/bb$a;

    invoke-direct {v0, p0}, Ltms/bb$a;-><init>(Ltms/bb;)V

    goto :goto_1
.end method

.method static synthetic a(Ltms/bb;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 2

    sget-object v0, Ltms/bb;->a:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    if-nez v0, :cond_1

    const-class v1, Ltms/bb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltms/bb;->a:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    if-nez v0, :cond_0

    new-instance v0, Ltms/bb;

    invoke-direct {v0, p0}, Ltms/bb;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltms/bb;->a:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ltms/bb;->a:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/database/Cursor;)Z
    .locals 1

    invoke-static {p0}, Ltms/bb;->e(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltms/bb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/bb;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Landroid/database/Cursor;)V
    .locals 0

    invoke-static {p0}, Ltms/bb;->f(Landroid/database/Cursor;)V

    return-void
.end method

.method private static c(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    return-object v0
.end method

.method static synthetic c(Ltms/bb;)Ltms/bb$e;
    .locals 1

    iget-object v0, p0, Ltms/bb;->b:Ltms/bb$e;

    return-object v0
.end method

.method private static d(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 4

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ -]+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    return-object v0
.end method

.method private static e(Landroid/database/Cursor;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ltms/bb$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltms/bb$d;-><init>(B)V

    iget-object v0, p0, Ltms/bb;->d:Ltms/bb$c;

    invoke-virtual {v0, p1}, Ltms/bb$c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getAllCallLog()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Ltms/bb;->f:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Ltms/bb;->e(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltms/ag;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ltms/bb;->d(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ltms/bb;->f(Landroid/database/Cursor;)V

    return-object v6
.end method

.method public final getAllContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/bb;->b:Ltms/bb$e;

    invoke-interface {v0}, Ltms/bb$e;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLastCallLog()Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Ltms/bb;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ltms/bb;->e(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ltms/bb;->d(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Ltms/bb;->f(Landroid/database/Cursor;)V

    :cond_1
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string v0, "null"

    :goto_1
    iput-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    :cond_2
    return-object v6

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    invoke-static {v6}, Ltms/bb;->f(Landroid/database/Cursor;)V

    :cond_3
    throw v0

    :cond_4
    iget-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public final getLastInBoxSms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 7

    const/4 v4, 0x0

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=1 AND read="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Ltms/bb;->g:[Ljava/lang/String;

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Ltms/bb;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ltms/bb;->c(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    sub-long/2addr v2, v5

    if-ltz p1, :cond_1

    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-ltz v2, :cond_0

    move-object v4, v0

    :cond_0
    :goto_0
    invoke-static {v1}, Ltms/bb;->f(Landroid/database/Cursor;)V

    return-object v4

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method public final getLastOutBoxSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 7

    const/4 v4, 0x0

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type=2"

    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Ltms/bb;->g:[Ljava/lang/String;

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Ltms/bb;->e(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ltms/bb;->c(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    iget-wide v2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v2, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1}, Ltms/bb;->f(Landroid/database/Cursor;)V

    return-object v4

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method public final getSimContact()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "name"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "number"

    aput-object v1, v2, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ltms/bb;->e(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->id:I

    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iput-boolean v7, v1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->isSimContact:Z

    iget-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0}, Ltms/bb;->f(Landroid/database/Cursor;)V

    move-object v0, v6

    goto :goto_1
.end method

.method public final insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Ltms/bb;->getLastInBoxSms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "address"

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "body"

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    iget-wide v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "read"

    iget v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "type"

    iget v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z
    .locals 4

    iget-object v0, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 4

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Ltms/bb;->c:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
