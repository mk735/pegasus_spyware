.class final Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->g(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->a:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteLogItemsforTable(Ljava/lang/String;Ljava/util/List;)V

    .line 313
    invoke-static {}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$7;->b:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    return-void
.end method
