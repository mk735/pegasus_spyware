.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;
.super Ljava/lang/Thread;
.source "CheckDisplayLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 513
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 514
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->e(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->loadHarassLog(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 515
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 516
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 517
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    :goto_0
    return-void

    .line 518
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 519
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->e(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->loadHarassLog(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 520
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 521
    .restart local v0    # "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 522
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 524
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->e(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->p(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->loadLogs(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 525
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 526
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 527
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
