.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;
.super Ljava/lang/Thread;
.source "ForbiddenApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->openChildMode(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-wide/16 v1, 0xfa0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    :goto_1
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
