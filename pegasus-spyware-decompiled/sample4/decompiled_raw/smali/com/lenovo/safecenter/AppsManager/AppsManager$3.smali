.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$3;
.super Ljava/lang/Thread;
.source "AppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppsManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->j(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->i(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppPers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;Ljava/util/List;)Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->j(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->i(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getTrustedApps(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;I)I

    .line 222
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    return-void
.end method
