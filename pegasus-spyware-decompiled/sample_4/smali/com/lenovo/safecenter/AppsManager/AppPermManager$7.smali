.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;
.super Ljava/lang/Thread;
.source "AppPermManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    .line 860
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/support/SafeLog;

    .line 861
    .local v7, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v9, v7, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    .line 862
    .local v9, "type":Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    iget-object v3, v7, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    iget-object v4, v7, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->formatReportTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    iget-object v6, v7, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/lenovo/safecenter/support/HttpUtils;->reportTariffLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 865
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 866
    .local v8, "msg":Landroid/os/Message;
    iput v10, v8, Landroid/os/Message;->arg1:I

    .line 867
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 885
    :goto_0
    return-void

    .line 869
    .end local v8    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 870
    .restart local v8    # "msg":Landroid/os/Message;
    iput v12, v8, Landroid/os/Message;->arg1:I

    .line 871
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 874
    .end local v8    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    iget-object v3, v7, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    iget-object v4, v7, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->formatReportTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/support/HttpUtils;->reportPermissionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 876
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 877
    .restart local v8    # "msg":Landroid/os/Message;
    iput v10, v8, Landroid/os/Message;->arg1:I

    .line 878
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 880
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 881
    .restart local v8    # "msg":Landroid/os/Message;
    iput v12, v8, Landroid/os/Message;->arg1:I

    .line 882
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
