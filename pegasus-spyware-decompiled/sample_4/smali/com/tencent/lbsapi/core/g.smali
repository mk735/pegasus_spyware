.class final Lcom/tencent/lbsapi/core/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/lbsapi/core/QLBSEngine;


# direct methods
.method constructor <init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->b(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->c(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0, v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->a(Lcom/tencent/lbsapi/core/QLBSEngine;Z)Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->d(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    iget-object v1, v1, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->e(Lcom/tencent/lbsapi/core/QLBSEngine;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->f(Lcom/tencent/lbsapi/core/QLBSEngine;)I

    move-result v0

    const v1, 0x35a4e900

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->g(Lcom/tencent/lbsapi/core/QLBSEngine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->h(Lcom/tencent/lbsapi/core/QLBSEngine;)Lcom/tencent/lbsapi/QLBSNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->h(Lcom/tencent/lbsapi/core/QLBSEngine;)Lcom/tencent/lbsapi/QLBSNotification;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->i(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->d(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    iget-object v1, v1, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->j(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->h(Lcom/tencent/lbsapi/core/QLBSEngine;)Lcom/tencent/lbsapi/QLBSNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->h(Lcom/tencent/lbsapi/core/QLBSEngine;)Lcom/tencent/lbsapi/QLBSNotification;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/g;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-static {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->i(Lcom/tencent/lbsapi/core/QLBSEngine;)Z

    goto :goto_0
.end method
