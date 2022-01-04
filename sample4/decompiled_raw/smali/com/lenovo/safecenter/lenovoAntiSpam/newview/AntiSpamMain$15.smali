.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;
.super Ljava/lang/Thread;
.source "AntiSpamMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->report()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 859
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->reportHarssLog()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 860
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/SafeLog;

    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    .line 861
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/SafeLog;

    const-string v4, "safe_log_harass"

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateSafeLogUpload(Lcom/lenovo/safecenter/support/SafeLog;Ljava/lang/String;)V

    .line 862
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 863
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 864
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 873
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 866
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 867
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 868
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
