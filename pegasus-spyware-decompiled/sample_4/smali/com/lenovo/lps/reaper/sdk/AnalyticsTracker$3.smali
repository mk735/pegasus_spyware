.class final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;
.super Ljava/lang/Thread;
.source "AnalyticsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackInstalledApps(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Z)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    iput-boolean p2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 590
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 592
    .local v4, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 594
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "permissionString":Ljava/lang/String;
    const/4 v3, 0x1

    .line 596
    .local v3, "isSystemApp":Z
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    .line 597
    const/4 v3, 0x0

    .line 602
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    iget-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->a:Z

    if-eqz v6, :cond_3

    .line 603
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const/4 v7, 0x1

    const-string v8, "appVersionCode"

    iget v9, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v7, "__APPINFO__"

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v5, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    .end local v3    # "isSystemApp":Z
    .end local v5    # "permissionString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AnalyticsTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TrackApp is Error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "isSystemApp":Z
    .restart local v5    # "permissionString":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 599
    const/4 v3, 0x0

    goto :goto_1

    .line 608
    :cond_3
    if-nez v3, :cond_0

    .line 609
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const/4 v7, 0x1

    const-string v8, "appVersionCode"

    iget v9, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v7, "__APPINFO__"

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v5, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 617
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "isSystemApp":Z
    .end local v5    # "permissionString":Ljava/lang/String;
    :cond_4
    return-void
.end method
