.class final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$1;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->setNetworkStatus(Landroid/content/Context;)V

    .line 83
    return-void
.end method
