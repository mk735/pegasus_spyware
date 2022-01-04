.class final Lcom/tencent/lbsapi/core/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/lbsapi/core/QLBSEngine;


# direct methods
.method constructor <init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->c(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->k(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->l(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->k(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->l(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->m(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->d(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    iget-object v1, v1, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/i;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->a(Lcom/tencent/lbsapi/core/QLBSEngine;Z)Z

    return-void
.end method
