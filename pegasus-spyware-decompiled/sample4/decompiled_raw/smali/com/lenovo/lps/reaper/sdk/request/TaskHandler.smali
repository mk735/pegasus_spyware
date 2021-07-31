.class public Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;
.super Ljava/lang/Object;
.source "TaskHandler.java"


# static fields
.field private static b:Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->b:Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v1, 0xa

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x3e8

    invoke-direct {v6, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->b:Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v1

    const-string v1, "TaskHandler"

    const-string v2, "Too Many Task At a Time. Please Wait..."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TaskHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
