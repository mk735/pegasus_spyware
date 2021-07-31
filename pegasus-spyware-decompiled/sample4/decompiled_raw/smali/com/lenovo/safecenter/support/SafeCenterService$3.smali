.class final Lcom/lenovo/safecenter/support/SafeCenterService$3;
.super Ljava/lang/Thread;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SafeCenterService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$3;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :try_start_0
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/support/SafeCenterService$3;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .end local v0    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .local v1, "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :try_start_1
    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getFilterMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 570
    .end local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .restart local v0    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 567
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    throw v3

    .end local v0    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .restart local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .restart local v0    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    goto :goto_2

    .line 564
    .end local v0    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .restart local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    .restart local v0    # "database":Lcom/lenovo/safecenter/database/AppDatabase;
    goto :goto_1
.end method
