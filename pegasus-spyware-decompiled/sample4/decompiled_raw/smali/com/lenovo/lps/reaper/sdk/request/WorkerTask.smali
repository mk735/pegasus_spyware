.class public final Lcom/lenovo/lps/reaper/sdk/request/WorkerTask;
.super Ljava/lang/Object;
.source "WorkerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/lenovo/lps/reaper/sdk/api/DispatchCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/lenovo/lps/reaper/sdk/request/WorkerTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/request/WorkerTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/api/DispatchCallback;)V
    .locals 0
    .param p1, "dispatchCallback"    # Lcom/lenovo/lps/reaper/sdk/api/DispatchCallback;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/WorkerTask;->b:Lcom/lenovo/lps/reaper/sdk/api/DispatchCallback;

    .line 28
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/request/WorkerTask;->b:Lcom/lenovo/lps/reaper/sdk/api/DispatchCallback;

    invoke-interface {v1}, Lcom/lenovo/lps/reaper/sdk/api/DispatchCallback;->dispatch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/request/WorkerTask;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when report events to server. "

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
.end method
