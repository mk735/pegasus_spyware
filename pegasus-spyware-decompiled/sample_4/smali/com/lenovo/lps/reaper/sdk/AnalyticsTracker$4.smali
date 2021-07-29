.class final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$4;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$4;->b:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$4;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 825
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-static {v0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Ljava/lang/Throwable;)V

    .line 826
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$4;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 827
    return-void
.end method
