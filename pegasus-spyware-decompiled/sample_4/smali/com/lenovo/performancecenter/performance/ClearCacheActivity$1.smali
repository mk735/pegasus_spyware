.class final Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;
.super Ljava/lang/Object;
.source "ClearCacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-virtual {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "appDataInfo":Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-virtual {v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->getCacheInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;Ljava/util/List;)Ljava/util/List;

    .line 109
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
