.class final Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;
.super Ljava/lang/Thread;
.source "CheckPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 115
    .local v3, "uid":I
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "pkgname"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->b(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "replacing"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 118
    .local v2, "replacing":Z
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    iget-object v5, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v5}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v2, v3, v1}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;Landroid/content/Context;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$3;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->stopSelf()V

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
