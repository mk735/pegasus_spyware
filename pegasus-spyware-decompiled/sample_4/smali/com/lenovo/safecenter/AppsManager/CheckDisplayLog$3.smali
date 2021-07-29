.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;
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
    .line 295
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 297
    new-instance v6, Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {v6, v12}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 298
    .local v6, "appDatabase":Lcom/lenovo/safecenter/database/AppDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v10, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 300
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/support/SafeLog;

    .line 301
    .local v9, "safelLog":Lcom/lenovo/safecenter/support/SafeLog;
    iget v12, v9, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 302
    const-string v0, "address"

    .line 303
    .local v0, "ADDRESS":Ljava/lang/String;
    const-string v2, "date"

    .line 304
    .local v2, "DATE":Ljava/lang/String;
    const-string v3, "read"

    .line 305
    .local v3, "READ":Ljava/lang/String;
    const-string v4, "status"

    .line 306
    .local v4, "STATUS":Ljava/lang/String;
    const-string v5, "type"

    .line 307
    .local v5, "TYPE":Ljava/lang/String;
    const-string v1, "body"

    .line 308
    .local v1, "BODY":Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v12, v9, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v12, v9, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    iget-object v12, v9, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v11, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "content://sms"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 316
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 321
    .end local v0    # "ADDRESS":Ljava/lang/String;
    .end local v1    # "BODY":Ljava/lang/String;
    .end local v2    # "DATE":Ljava/lang/String;
    .end local v3    # "READ":Ljava/lang/String;
    .end local v4    # "STATUS":Ljava/lang/String;
    .end local v5    # "TYPE":Ljava/lang/String;
    .end local v9    # "safelLog":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 323
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 325
    const-string v12, "safe_log_harass"

    invoke-virtual {v6, v12, v10}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteLogItemsforTable(Ljava/lang/String;Ljava/util/List;)V

    .line 327
    :cond_2
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 328
    .local v8, "msg":Landroid/os/Message;
    const/4 v12, 0x3

    iput v12, v8, Landroid/os/Message;->what:I

    .line 329
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_4

    .line 333
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 334
    .restart local v8    # "msg":Landroid/os/Message;
    const/4 v12, 0x4

    iput v12, v8, Landroid/os/Message;->what:I

    .line 335
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    .end local v8    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method
