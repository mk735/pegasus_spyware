.class public final Ltms/gi;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static final m:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

.field private d:Ltms/ex;

.field private e:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

.field private f:[B

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dcim"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "weibo"

    aput-object v2, v0, v1

    sput-object v0, Ltms/gi;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Ltms/gi;->f:[B

    iput-boolean v1, p0, Ltms/gi;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltms/gi;->i:Ljava/lang/Object;

    iput-boolean v1, p0, Ltms/gi;->j:Z

    iput-boolean v1, p0, Ltms/gi;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltms/gi;->l:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LQQPIM/VirusClientInfo;->getTimestamp()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    const-string v0, "B"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "A"

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanStarted()V

    :cond_0
    invoke-virtual {p0}, Ltms/gi;->a()V

    iget-object v1, p0, Ltms/gi;->f:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ltms/gi;->g:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Ltms/gi;->b(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-direct {p0, v0, p2}, Ltms/gi;->c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p2, v0}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ltms/gi;->b()V

    iget-object v1, p0, Ltms/gi;->f:[B

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Ltms/gi;->g:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method private a(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Ltms/gi;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4, v1, p1}, Ltms/v;->a(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Ltms/gi;->m:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V
    .locals 3

    iget-object v1, p0, Ltms/gi;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/gi;->h:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanPaused()V

    :cond_0
    iget-object v0, p0, Ltms/gi;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanContinue()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/gi;->h:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "QScannerManangerImpl"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Ltms/gi;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ltms/gi;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ltms/gi;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ltms/gi;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/gi;->k:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanFinished(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/AnalyseInfo;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v5, v1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v5, v5, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget-object v5, v1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v5, v5, LQQPIM/FeatureKey;->fileSize:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->safeType:I

    if-eqz v4, :cond_1

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->safeType:I

    iput v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->handleAdvice:I

    iput v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v4, v4, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v4, v4, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v4, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->virusID:I

    iput v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v1, v1, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v1, v1, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getUploadFileInfo()LQQPIM/UploadFileInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v6, v6, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget-object v6, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v6, v6, LQQPIM/FeatureKey;->fileSize:I

    if-ne v5, v6, :cond_1

    new-instance v5, Ltms/aa;

    iget-object v6, p0, Ltms/gi;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Ltms/aa;-><init>(Landroid/content/Context;)V

    const-string v6, "http://uploadserver.3g.qq.com"

    invoke-virtual {v5, v6}, Ltms/aa;->a(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Ltms/aa;->a(Ljava/lang/String;LQQPIM/UploadFileInfo;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getActionLevel()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, LQQPIM/SoftActionConfig;

    iget-object v4, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v0, v0, LQQPIM/AnalyseInfo;->actionLevel:I

    invoke-direct {v3, v4, v0}, LQQPIM/SoftActionConfig;-><init>(LQQPIM/FeatureKey;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Ltms/gi;->a:Landroid/content/Context;

    const-string v2, "label_sa_cfg"

    const-string v3, "sa_cfg.dat"

    invoke-static {v0, v1, v2, v3}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v2, v18

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, v18

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Ltms/gi;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v8

    :goto_2
    if-nez v8, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ltms/gi;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x49

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v7, 0x2

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ltms/gi;->d:Ltms/ex;

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Ltms/ex;->a(Ljava/lang/String;Ljava/lang/String;JI)Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_3

    if-nez v2, :cond_c

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Ltms/gi;->c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    invoke-virtual {v2, v8}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->scanApk(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Ltms/gi;->e:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->checkCert(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_e

    const/4 v3, 0x0

    :goto_8
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->getApkkey()Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getCertMd5()Ljava/lang/String;

    move-result-object v2

    :goto_9
    iput-object v2, v8, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltms/gi;->d:Ltms/ex;

    invoke-virtual {v2, v8, v3}, Ltms/ex;->a(Lcom/tencent/tmsecure/module/qscanner/ApkKey;Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    move-object v2, v3

    :cond_7
    if-eqz v2, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_9

    iget v3, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-eqz v3, :cond_8

    iget v3, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    :cond_8
    add-int/lit8 v3, v17, 0x1

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    :cond_9
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    const-wide/16 v4, 0x14

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    const-wide/16 v4, 0x14

    sub-long v2, v4, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ltms/gi;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v8, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v2

    goto :goto_5

    :cond_c
    new-instance v8, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersionCode()I

    move-result v13

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v3

    long-to-int v14, v3

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_6

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_e
    new-instance v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;-><init>()V

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getSoftName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getVersionCode()I

    move-result v4

    iput v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v4, v4, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    iput v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v4, v4, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    iput v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    iput v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iput v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    iput v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    goto/16 :goto_8

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_10
    iget v3, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v17, 0x1

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    goto/16 :goto_a

    :cond_11
    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method private b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Ltms/gi;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Ltms/gi;->j:Z

    if-ne v2, v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Ltms/gi;->k:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanCanceled()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Ltms/gi;->k:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    invoke-direct {p0, p2}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Ltms/f;->a()Ltms/f;

    move-result-object v0

    invoke-virtual {v0}, Ltms/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TMS licence expired! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onCloudScan()V

    :cond_3
    invoke-direct {p0, p2}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-nez v7, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v9, LQQPIM/SoftFeature;

    invoke-direct {v9}, LQQPIM/SoftFeature;-><init>()V

    new-instance v0, LQQPIM/FeatureKey;

    iget-object v1, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v2, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v3, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget v4, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v5, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget v6, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {v9, v8}, LQQPIM/SoftFeature;->setRequestType(I)V

    iget v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-ne v0, v8, :cond_5

    move v0, v8

    :goto_3
    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setIsBuildIn(Z)V

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    iget v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setLocalSafeType(I)V

    iget v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setLocalVirusID(I)V

    iget-object v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setLocalVirusName(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v10, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v0

    invoke-direct {p0, p2}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_7

    invoke-static {p1, v1}, Ltms/gi;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v1}, Ltms/gi;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object v0, p0, Ltms/gi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltms/p;->a(Landroid/content/Context;)Ltms/p;

    move-result-object v0

    invoke-virtual {v0}, Ltms/p;->a()V

    invoke-direct {p0, v1}, Ltms/gi;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onCloudScanError(I)V

    goto/16 :goto_0
.end method

.method private g()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltms/gi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ltms/gi;->e:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/gi;->e:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->getApkClass(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ltms/gi;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltms/gi;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Ltms/gi;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltms/gi;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanStarted()V

    :cond_0
    invoke-virtual {p0}, Ltms/gi;->a()V

    iget-object v1, p0, Ltms/gi;->f:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ltms/gi;->g:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Ltms/gi;->c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ltms/gi;->b()V

    iget-object v1, p0, Ltms/gi;->f:[B

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Ltms/gi;->g:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public final a(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, p2, p3}, Ltms/gi;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Ltms/gi;->d:Ltms/ex;

    if-nez v0, :cond_0

    invoke-static {}, Ltms/ex;->a()Ltms/ex;

    move-result-object v0

    iput-object v0, p0, Ltms/gi;->d:Ltms/ex;

    :cond_0
    iget-object v0, p0, Ltms/gi;->c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltms/gi;->a:Landroid/content/Context;

    const-string v1, "qv_base.amf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    iget-object v2, p0, Ltms/gi;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ltms/gi;->c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    :cond_1
    iget-object v0, p0, Ltms/gi;->e:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    iget-object v1, p0, Ltms/gi;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/gi;->e:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    :cond_2
    return-void
.end method

.method public final b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ltms/gi;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p3}, Ltms/gi;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0, p1, p2}, Ltms/gi;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, p2, p3}, Ltms/gi;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ltms/gi;->f:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ltms/gi;->g:Z

    if-eqz v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    invoke-static {}, Ltms/ex;->b()V

    iput-object v2, p0, Ltms/gi;->d:Ltms/ex;

    iget-object v0, p0, Ltms/gi;->c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/gi;->c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->finalize()V

    iput-object v2, p0, Ltms/gi;->c:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v6, "/proc/mounts"

    invoke-direct {v1, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    if-nez v3, :cond_2

    move v1, v4

    :goto_1
    if-eqz v1, :cond_0

    const-string v1, "\\s+"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v0, v3}, Ltms/gi;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    :try_start_4
    const-string v1, "vfat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "exfat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/mnt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "fuse"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const-string v1, "/dev/block/vold"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "/mnt/secure"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/mnt/asec"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/mnt/obb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/dev/mapper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "tmpfs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v5

    goto/16 :goto_1

    :cond_4
    move v1, v4

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_7
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v2, v3

    goto/16 :goto_2
.end method

.method public final d()V
    .locals 2

    iget-object v1, p0, Ltms/gi;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltms/gi;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()V
    .locals 2

    iget-object v1, p0, Ltms/gi;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/gi;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-object v1, p0, Ltms/gi;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltms/gi;->j:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ltms/gi;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Ltms/gi;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Ltms/gi;->b()V

    return-void
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Ltms/gi;->a:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Ltms/gi;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
