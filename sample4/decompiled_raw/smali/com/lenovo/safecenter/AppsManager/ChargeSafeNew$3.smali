.class final Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;
.super Ljava/lang/Thread;
.source "ChargeSafeNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "database":Lcom/lenovo/safecenter/database/AppDatabase;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    const-string v2, "safe_log_tariff"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getTopThreeLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;Ljava/util/List;)Ljava/util/List;

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->g(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    const-string v2, "sendmessage"

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getTrustedApps(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;I)I

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->h(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->h(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    const-string v2, "safe_log_tariff"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getTopThreeLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
