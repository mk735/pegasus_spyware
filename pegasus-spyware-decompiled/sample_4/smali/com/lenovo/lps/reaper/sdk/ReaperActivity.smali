.class public Lcom/lenovo/lps/reaper/sdk/ReaperActivity;
.super Landroid/app/Activity;
.source "ReaperActivity.java"


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

.field private b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    .line 12
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getFirstActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setFirstActivity(Landroid/app/Activity;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->add(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 41
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->remove(Landroid/app/Activity;)Z

    .line 42
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getFirstActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setFirstActivity(Landroid/app/Activity;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 29
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 30
    return-void
.end method
