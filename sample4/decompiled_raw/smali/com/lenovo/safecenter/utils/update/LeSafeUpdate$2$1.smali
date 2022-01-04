.class final Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;
.super Ljava/lang/Thread;
.source "LeSafeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v2, v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->canExecute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->f(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v2, v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->g(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->copyApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d:Z

    .line 286
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.lenovo.safecenter/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v2, v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v2, v2, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->g(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/support/CMDHelper;->installAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d:Z

    .line 299
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->c(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$2$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
