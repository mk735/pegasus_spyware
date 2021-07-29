.class final Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;
.super Ljava/lang/Thread;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/DialogActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->openChildMode(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "plan_mode_preference"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-wide/16 v1, 0xfa0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :goto_1
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
