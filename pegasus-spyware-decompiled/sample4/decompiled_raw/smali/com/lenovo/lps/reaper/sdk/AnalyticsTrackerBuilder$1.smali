.class final Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;
.super Ljava/lang/Object;
.source "AnalyticsTrackerBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeOthers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v1, v1, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;-><init>(Lcom/lenovo/lps/reaper/sdk/config/Configuration;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->run()V

    .line 145
    return-void
.end method
