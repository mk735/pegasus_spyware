.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;
.super Ljava/lang/Thread;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 454
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->n(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget v3, v3, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v3, v3, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->unInstall(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 456
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 457
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget v2, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 459
    iput v4, v0, Landroid/os/Message;->what:I

    .line 460
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 461
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 467
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget v5, v5, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
