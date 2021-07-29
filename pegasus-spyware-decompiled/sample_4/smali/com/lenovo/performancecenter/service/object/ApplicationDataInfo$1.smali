.class final Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 3
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-static {v0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->a(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-static {v0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->b(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I

    .line 214
    const-string v0, "ClearCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pStats.packageName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listSize == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-static {v2}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-static {v2}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "ClearCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pStats succeeded == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listSize == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-static {v2}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->c(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$1;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-static {v2}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->d(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
