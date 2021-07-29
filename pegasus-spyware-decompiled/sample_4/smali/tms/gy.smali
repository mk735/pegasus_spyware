.class public final Ltms/gy;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final a:Ljava/lang/String; = "UpdateManagerImpl"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/tencent/tmsecure/module/update/IUpdateObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/gy;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltms/gy;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 5

    iget-object v2, p0, Ltms/gy;->f:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ltms/gy;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    if-ne v1, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/update/IUpdateObserver;->onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->getFileNameByFlag(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltms/gy;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ltms/gy;->b:Landroid/content/Context;

    iget-object v3, p0, Ltms/gy;->c:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method private static b(ILcom/tencent/tmsecure/module/update/ICheckListener;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckEvent(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v1, p0, Ltms/gy;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/gy;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ILcom/tencent/tmsecure/module/update/ICheckListener;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v3, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;

    invoke-direct {v3, p2}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;-><init>(Lcom/tencent/tmsecure/module/update/ICheckListener;)V

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckStarted()V

    invoke-static {p1}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->prepareCheckFlag(I)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ltms/f;->a()Ltms/f;

    move-result-object v0

    invoke-virtual {v0}, Ltms/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/update/CheckResult;-><init>()V

    const-string v1, "\u63d0\u793a"

    iput-object v1, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mTitle:Ljava/lang/String;

    const-string v1, "TMS\u6a21\u5757\u5df2\u7ecf\u8fc7\u671f\uff0c\u8bf7\u8054\u7cfb\u4f9b\u5e94\u5546"

    iput-object v1, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckCanceled()V

    invoke-static {v2, v3}, Ltms/gy;->b(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    array-length v8, v7

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_7

    aget v9, v7, v1

    and-int v0, v9, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-ne v9, v0, :cond_4

    iget-object v0, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-direct {p0, v9}, Ltms/gy;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_2

    new-instance v0, LQQPIM/ConfInfo;

    invoke-direct {v0}, LQQPIM/ConfInfo;-><init>()V

    invoke-static {v9}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->getFileNameByFlag(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, LQQPIM/ConfInfo;->filename:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, v0, LQQPIM/ConfInfo;->checksum:Ljava/lang/String;

    iput v2, v0, LQQPIM/ConfInfo;->timestamp:I

    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    if-ne v9, v0, :cond_5

    iget-object v0, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-direct {p0, v9}, Ltms/gy;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    invoke-direct {p0, v9}, Ltms/gy;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getLocationConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-direct {p0, v9}, Ltms/gy;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v4, p0, Ltms/gy;->e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v4, v6, v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getConfigV3CPT(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ConfSrc;

    if-eqz v0, :cond_8

    new-instance v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/update/UpdateInfo;-><init>()V

    iget v7, v0, LQQPIM/ConfSrc;->isincreupdate:I

    if-nez v7, :cond_9

    invoke-virtual {v0}, LQQPIM/ConfSrc;->getFilename()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0}, LQQPIM/ConfSrc;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->getFlagByFileName(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    iput v2, v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;->type:I

    invoke-virtual {v0}, LQQPIM/ConfSrc;->getUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, LQQPIM/ConfSrc;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".patch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    goto :goto_4

    :cond_a
    invoke-static {v4, v3}, Ltms/gy;->b(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    goto/16 :goto_0

    :cond_b
    new-instance v2, Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/update/CheckResult;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/TipInfo;

    if-eqz v0, :cond_c

    iget-object v1, v0, LQQPIM/TipInfo;->strTitle:Ljava/lang/String;

    :goto_5
    iput-object v1, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, v0, LQQPIM/TipInfo;->strTips:Ljava/lang/String;

    :goto_6
    iput-object v0, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    iput-object v5, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const-string v0, "update_test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, ""

    goto :goto_5

    :cond_d
    const-string v0, ""

    goto :goto_6
.end method

.method public final a(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V
    .locals 4

    iget-object v1, p0, Ltms/gy;->f:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Ltms/gy;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;",
            "Lcom/tencent/tmsecure/module/update/IUpdateListener;",
            ")V"
        }
    .end annotation

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v5, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

    invoke-direct {v5, p2}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;-><init>(Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateStarted()V

    invoke-static {}, Ltms/f;->a()Ltms/f;

    move-result-object v0

    invoke-virtual {v0}, Ltms/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateFinished()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateCanceled()V

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateFinished()V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v2, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v10, :cond_6

    const/16 v1, 0x32

    invoke-virtual {v5, v0, v1}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    :goto_2
    iget v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    if-ne v1, v11, :cond_9

    iget-object v1, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-direct {p0, v11}, Ltms/gy;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, LQQPIM/VirusClientInfo;->setEngine_version(I)V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Ltms/gy;->e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v4, v1, v7, v8}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getVirusInfos(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/VirusServerInfo;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, LQQPIM/VirusServerInfo;->getBUpdate()Z

    move-result v7

    if-eqz v7, :cond_7

    move v1, v4

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Ltms/gy;->a(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V

    iget-object v0, p0, Ltms/gy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateCanceled()V

    :cond_5
    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateFinished()V

    goto/16 :goto_0

    :cond_6
    int-to-float v1, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v5, v0, v1}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    invoke-direct {p0, v11}, Ltms/gy;->b(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-static {v9, v7, v1, v8}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->updateBase(Landroid/content/Context;Ljava/lang/String;LQQPIM/VirusServerInfo;Ljava/util/List;)I

    :cond_8
    move v1, v4

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ltms/z;

    iget-object v4, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Ltms/z;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ltms/gy;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltms/z;->a(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ltms/z;->b(Ljava/lang/String;)V

    new-instance v4, Ltms/fp;

    invoke-direct {v4, p0, v5, v0, v6}, Ltms/fp;-><init>(Ltms/gy;Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;Lcom/tencent/tmsecure/module/update/UpdateInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v4}, Ltms/z;->a(Ltms/x$a;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?m=def"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Ltms/z;->a(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tccdb/TelNumberLocator;->getDefault(Landroid/content/Context;)Lcom/tencent/tccdb/TelNumberLocator;

    move-result-object v4

    iget-object v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v1, LQQPIM/ConfSrc;

    iget v7, v1, LQQPIM/ConfSrc;->isincreupdate:I

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ltms/gy;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, LQQPIM/ConfSrc;->getIuchecksum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/tencent/tccdb/TelNumberLocator;->patchLocation(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v4}, Lcom/tencent/tccdb/TelNumberLocator;->reload()V

    goto/16 :goto_4

    :cond_b
    move v1, v3

    goto/16 :goto_3
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltms/gy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Ltms/gy;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/gy;->c:Ljava/lang/String;

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iput-object v0, p0, Ltms/gy;->e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    return-void
.end method
