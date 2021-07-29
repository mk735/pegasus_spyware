.class final Lcom/lenovo/safecenter/support/SafeCenterService$4;
.super Ljava/lang/Thread;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;
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
    .line 585
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 588
    :try_start_0
    new-instance v2, Lcom/lenovo/safecenter/support/InjectHelper;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/InjectHelper;-><init>()V

    .line 589
    .local v2, "helper":Lcom/lenovo/safecenter/support/InjectHelper;
    const-string v4, "safecenter.system13"

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/support/InjectHelper;->ConnectToServer(Ljava/lang/String;)Z

    move-result v3

    .line 590
    .local v3, "systemServiceRun":Z
    const-string v4, "server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safecenter oncreate safecenter.system13:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    if-nez v3, :cond_3

    .line 593
    new-instance v1, Ljava/io/File;

    const-string v4, "/system/libsystemhook-13.so"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "file1":Ljava/io/File;
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/libsystemhook-13.so exit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 597
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->updateHookLibsFromAssets(Landroid/content/Context;)V

    .line 598
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/support/CMDHelper;->updateHookLibs(Landroid/content/Context;)Z

    .line 601
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 602
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->updateHookLibsFromAssets(Landroid/content/Context;)V

    .line 603
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/support/CMDHelper;->updateHookLibs(Landroid/content/Context;)Z

    .line 605
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/support/InjectHelper;->injectSafecenterService(Landroid/content/Context;)V

    .line 615
    .end local v1    # "file1":Ljava/io/File;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4, v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;Lcom/lenovo/safecenter/support/InjectHelper;)V

    .line 620
    .end local v2    # "helper":Lcom/lenovo/safecenter/support/InjectHelper;
    .end local v3    # "systemServiceRun":Z
    :goto_1
    return-void

    .line 609
    .restart local v1    # "file1":Ljava/io/File;
    .restart local v2    # "helper":Lcom/lenovo/safecenter/support/InjectHelper;
    .restart local v3    # "systemServiceRun":Z
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/support/InjectHelper;->injectSafecenterService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    .end local v1    # "file1":Ljava/io/File;
    .end local v2    # "helper":Lcom/lenovo/safecenter/support/InjectHelper;
    .end local v3    # "systemServiceRun":Z
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "helper":Lcom/lenovo/safecenter/support/InjectHelper;
    .restart local v3    # "systemServiceRun":Z
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$4;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SafeCenterService;->a(Lcom/lenovo/safecenter/support/SafeCenterService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/support/InjectHelper;->injectSafecenterService(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
