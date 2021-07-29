.class final Lcom/lenovo/install/InstallProgress$1;
.super Ljava/lang/Thread;
.source "InstallProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/install/InstallProgress;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallProgress;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallProgress;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/install/InstallProgress$1;->a:Lcom/lenovo/install/InstallProgress;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    sput-boolean v4, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isInstall:Z

    .line 174
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress$1;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v1, p0, Lcom/lenovo/install/InstallProgress$1;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$1;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$1;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->installAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/install/InstallProgress;->a(Lcom/lenovo/install/InstallProgress;Z)Z

    .line 175
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress$1;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v0}, Lcom/lenovo/install/InstallProgress;->i(Lcom/lenovo/install/InstallProgress;)Lcom/lenovo/install/InstallProgress$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/install/InstallProgress$a;->sendEmptyMessage(I)Z

    .line 176
    return-void
.end method
