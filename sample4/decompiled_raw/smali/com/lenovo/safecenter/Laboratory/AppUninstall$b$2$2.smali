.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;
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
    .line 471
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 473
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 474
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget v2, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 476
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 477
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 478
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    return-void
.end method
