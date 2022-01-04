.class final Lcom/network/android/monitor/observer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Lcom/network/android/monitor/observer/a;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/a;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/monitor/observer/b;->b:Lcom/network/android/monitor/observer/a;

    iput-object p2, p0, Lcom/network/android/monitor/observer/b;->a:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/network/android/monitor/observer/b;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/network/a/a;->a(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidCalendarWatcher Map Calendar start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    :try_start_2
    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AndroidCalendarWatcher readCalendar  start sleep chank: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2, v0}, Lcom/network/a/a;->a(Landroid/database/Cursor;Ljava/lang/StringBuffer;)V

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AndroidCalendarWatcher Map Calendar position:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDeleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/network/android/monitor/observer/b;->b:Lcom/network/android/monitor/observer/a;

    invoke-static {v4}, Lcom/network/android/monitor/observer/a;->a(Lcom/network/android/monitor/observer/a;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidCalendarWatcher  start postDelayed Exception- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_1

    :cond_4
    const-string v0, "AndroidCalendarWatcher  Map Calendar end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/monitor/observer/b;->b:Lcom/network/android/monitor/observer/a;

    invoke-static {v0}, Lcom/network/android/monitor/observer/a;->b(Lcom/network/android/monitor/observer/a;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const-string v0, "AndroidCalendarWatcher  readCalendar finally - cursor was closed"

    :goto_2
    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CalendarWatcher start Exception- "

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

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    const-string v0, "AndroidCalendarWatcher  readCalendar finally - cursor was closed"

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_3
    throw v0

    :cond_7
    const-string v1, "AndroidCalendarWatcher  readCalendar finally - cursor was closed"

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v0, "AndroidCalendarWatcher  readCalendar finally - cursor was closed"

    goto :goto_2
.end method
