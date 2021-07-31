.class public final Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
.super Ltms/ea;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Ltms/ea",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltms/ea;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getAllTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/ea;->getAllTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getFailedTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/ea;->getFailedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getFinishedTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/ea;->getFinishedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPausedTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/ea;->getPausedTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getRunningTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/ea;->getRunningTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getWaitingTasks()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Ltms/ea;->getWaitingTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/ea;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    return-void
.end method

.method public final bridge synthetic setDownloadDirPath(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/ea;->setDownloadDirPath(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic setNetworkLoadTaskDao(Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/ea;->setNetworkLoadTaskDao(Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;)V

    return-void
.end method

.method public final bridge synthetic setRunningTaskCountLimit(B)V
    .locals 0

    invoke-super {p0, p1}, Ltms/ea;->setRunningTaskCountLimit(B)V

    return-void
.end method

.method public final bridge synthetic unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V
    .locals 0

    invoke-super {p0, p1}, Ltms/ea;->unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    return-void
.end method
