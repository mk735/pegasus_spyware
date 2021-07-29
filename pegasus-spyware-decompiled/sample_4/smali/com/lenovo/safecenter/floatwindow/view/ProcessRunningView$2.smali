.class final Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;
.super Ljava/lang/Thread;
.source "ProcessRunningView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;Ljava/util/List;)Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->f(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;)Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    .line 123
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->f(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
