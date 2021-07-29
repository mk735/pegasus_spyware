.class public Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;
.super Landroid/app/TabActivity;
.source "ReaperTabActivity.java"


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

.field private b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 11
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    .line 13
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getFirstActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 22
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setFirstActivity(Landroid/app/Activity;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->add(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->remove(Landroid/app/Activity;)Z

    .line 43
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getFirstActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->a:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setFirstActivity(Landroid/app/Activity;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 36
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/ReaperTabActivity;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 31
    return-void
.end method
