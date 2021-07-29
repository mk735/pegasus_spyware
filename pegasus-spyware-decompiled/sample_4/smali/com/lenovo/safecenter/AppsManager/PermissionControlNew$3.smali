.class final Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;
.super Ljava/lang/Thread;
.source "PermissionControlNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "database":Lcom/lenovo/safecenter/database/AppDatabase;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_1

    .line 114
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    const-string v2, "safe_log_privacy"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getTopThreeLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;Ljava/util/List;)Ljava/util/List;

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->g(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    const-string v2, "privacy"

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getTrustedApps(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;I)I

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->h(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->h(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    const-string v2, "safe_log_privacy"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getTopThreeLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
