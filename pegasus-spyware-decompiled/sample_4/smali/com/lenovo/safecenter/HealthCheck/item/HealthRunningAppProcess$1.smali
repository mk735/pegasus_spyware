.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;
.super Ljava/lang/Object;
.source "HealthRunningAppProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    new-instance v1, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;)Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->b(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;)Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->getAllRunningAppInfo(Landroid/os/Message;)[I

    move-result-object v0

    return-object v0
.end method
