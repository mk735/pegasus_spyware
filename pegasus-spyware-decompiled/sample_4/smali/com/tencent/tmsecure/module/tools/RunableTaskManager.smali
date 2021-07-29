.class public final Lcom/tencent/tmsecure/module/tools/RunableTaskManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTask(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Ltms/gv;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gv;->a(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gv;

    invoke-direct {v0}, Ltms/gv;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Ltms/gv;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Ltms/gv;

    invoke-virtual {v0, p1}, Ltms/gv;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Ltms/gv;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
