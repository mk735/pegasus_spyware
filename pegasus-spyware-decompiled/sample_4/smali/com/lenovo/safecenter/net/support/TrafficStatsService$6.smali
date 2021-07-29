.class final Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;
.super Ljava/lang/Thread;
.source "TrafficStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/support/TrafficStatsService;->openPhoneFirstRun(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2857
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v0

    .line 2858
    .local v0, "trafficStatsService":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refresh()V

    .line 2859
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$6;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lesafe_net_first_run_flag"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2860
    return-void
.end method
