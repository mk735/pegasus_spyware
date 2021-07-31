.class final Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;
.super Ljava/lang/Object;
.source "WisdomSpeedPreferenceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 112
    move-object v0, p2

    check-cast v0, Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;

    .line 113
    .local v0, "binder":Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;->getService()Lcom/lenovo/performancecenter/framework/PolicyService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Lcom/lenovo/performancecenter/framework/PolicyService;)Lcom/lenovo/performancecenter/framework/PolicyService;

    .line 114
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->c(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)Z

    .line 115
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->c(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)Z

    .line 120
    return-void
.end method
