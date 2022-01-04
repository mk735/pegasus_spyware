.class final Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;
.super Landroid/content/BroadcastReceiver;
.source "LeSafeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 439
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 441
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "urlPkgName":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "stringArray":[Ljava/lang/String;
    aget-object v2, v3, v6

    .line 444
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->g(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->b(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;->onInstallComplete(Z)V

    .line 446
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->a(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 448
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 450
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$4;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->i(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "stringArray":[Ljava/lang/String;
    .end local v4    # "urlPkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method
