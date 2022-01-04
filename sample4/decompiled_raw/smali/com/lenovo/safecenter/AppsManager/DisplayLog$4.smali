.class final Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;
.super Ljava/lang/Thread;
.source "DisplayLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/DisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;I)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    iput p2, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->a:I

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    const-string v1, "safe_log_tariff"

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getLog(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a(Ljava/util/List;)Ljava/util/List;

    .line 274
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    const-string v1, "safe_log_privacy"

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getLog(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a(Ljava/util/List;)Ljava/util/List;

    .line 278
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$4;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    :cond_1
    return-void
.end method
