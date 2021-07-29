.class final Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;
.super Ljava/lang/Thread;
.source "installJudgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->doinbg(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 279
    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->Virus_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pkgname"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->d(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    monitor-exit v2

    .line 300
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 294
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->b(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z

    .line 296
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->d(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->init(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$2;->b:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->d(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->appInstall(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
