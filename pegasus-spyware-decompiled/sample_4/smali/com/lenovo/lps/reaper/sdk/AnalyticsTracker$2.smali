.class final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/api/Event;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Lcom/lenovo/lps/reaper/sdk/api/Event;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->a:Lcom/lenovo/lps/reaper/sdk/api/Event;

    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->checkTimestamp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "AnalyticsTracker"

    const-string v2, "add configuration update task."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;-><init>(Lcom/lenovo/lps/reaper/sdk/config/Configuration;)V

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->run()V

    .line 290
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->needSend()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->a:Lcom/lenovo/lps/reaper/sdk/api/Event;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->addEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 296
    const-string v1, "__INITIAL__"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occurd in trackEvent.addTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;->c:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
