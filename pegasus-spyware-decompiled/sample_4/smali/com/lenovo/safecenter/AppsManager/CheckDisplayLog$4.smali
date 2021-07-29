.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;
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
    .line 348
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 350
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {v0, v5}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, "appDatabase":Lcom/lenovo/safecenter/database/AppDatabase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v4, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SafeLog;

    .line 354
    .local v3, "safelLog":Lcom/lenovo/safecenter/support/SafeLog;
    iget v5, v3, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 355
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 359
    .end local v3    # "safelLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 361
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 363
    :cond_2
    const-string v5, "safe_log_harass"

    invoke-virtual {v0, v5, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteLogItemsforTable(Ljava/lang/String;Ljava/util/List;)V

    .line 368
    :goto_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 369
    .local v2, "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 370
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 374
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 375
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 376
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    return-void

    .line 366
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteLogItemsforTable(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method
