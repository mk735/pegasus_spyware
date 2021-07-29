.class final Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;
.super Ljava/lang/Object;
.source "AnalyticsTrackerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # J

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;->a:Ljava/lang/String;

    .line 156
    iput-wide p2, p0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;->b:J

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;->b:J

    return-wide v0
.end method
