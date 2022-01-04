.class final Ltms/dt$a;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/dt$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Ltms/dt;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Looper;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Ltms/dt$b;


# direct methods
.method private constructor <init>(Ltms/dt;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Ltms/dt$a;->a:Ltms/dt;

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Ltms/dt$a$a;

    invoke-direct {v0, p0, v2}, Ltms/dt$a$a;-><init>(Ltms/dt$a;B)V

    iput-object v0, p0, Ltms/dt$a;->e:Ljava/lang/Runnable;

    new-instance v0, Ltms/dt$b;

    iget-object v1, p0, Ltms/dt$a;->a:Ltms/dt;

    invoke-direct {v0, v1, v2}, Ltms/dt$b;-><init>(Ltms/dt;B)V

    iput-object v0, p0, Ltms/dt$a;->f:Ltms/dt$b;

    return-void
.end method

.method synthetic constructor <init>(Ltms/dt;B)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/dt$a;-><init>(Ltms/dt;)V

    return-void
.end method

.method static synthetic a(Ltms/dt$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Ltms/dt$a;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Ltms/dt$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ltms/dt$a;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/dt$a;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Ltms/dt$a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Ltms/dt$a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Ltms/dt$a;->c:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltms/dt$a;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltms/dt$a;->d:Landroid/os/Handler;

    iget-object v0, p0, Ltms/dt$a;->f:Ltms/dt$b;

    iget-object v1, p0, Ltms/dt$a;->a:Ltms/dt;

    invoke-static {v1}, Ltms/dt;->c(Ltms/dt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltms/dt$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final onDestory()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Ltms/dt$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Ltms/dt$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ltms/dt$a;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Ltms/dt$a;->f:Ltms/dt$b;

    iget-object v1, p0, Ltms/dt$a;->a:Ltms/dt;

    invoke-static {v1}, Ltms/dt;->c(Ltms/dt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltms/dt$b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    iget-object v0, p0, Ltms/dt$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Ltms/dt$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ltms/dt$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Ltms/dt$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
