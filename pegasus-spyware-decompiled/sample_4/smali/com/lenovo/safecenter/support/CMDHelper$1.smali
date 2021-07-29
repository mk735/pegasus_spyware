.class final Lcom/lenovo/safecenter/support/CMDHelper$1;
.super Ljava/lang/Thread;
.source "CMDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/CMDHelper;->unInstall(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pm uninstall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "cmd":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 754
    .local v4, "result":Z
    if-eqz v4, :cond_2

    .line 755
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 756
    iget-object v5, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/support/CMDHelper;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 757
    iget-object v5, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 759
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 760
    iget-object v5, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 774
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 764
    .restart local v2    # "i":I
    :cond_0
    const-wide/16 v5, 0x2710

    :try_start_0
    invoke-static {v5, v6}, Lcom/lenovo/safecenter/support/CMDHelper$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 770
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v5, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 772
    .end local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->c:Landroid/os/Handler;

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CMDHelper$1;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
