.class final Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;
.super Ljava/lang/Object;
.source "ClearCacheActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 115
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;

    .line 120
    .local v0, "appInfo":Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;
    iget-object v4, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->pkgName:Ljava/lang/String;

    .line 121
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    iget-wide v1, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appCacheSize:J

    .line 123
    .local v1, "cacheSize":J
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-virtual {v6}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->clearSeperateCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->d(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->notifyDataSetChanged()V

    .line 127
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6e05\u7406\u201c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u201d\u7f13\u5b58"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->cacheSize:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v7}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v6, v7, v8}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;J)J

    .line 129
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    .end local v1    # "cacheSize":J
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 132
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-virtual {v6, v3}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
