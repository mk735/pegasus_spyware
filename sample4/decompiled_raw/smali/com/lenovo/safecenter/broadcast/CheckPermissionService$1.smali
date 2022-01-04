.class final Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;
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
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->isAppFirstInit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->adSwitch(Landroid/content/Context;Z)Z

    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-static {v0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->a(Lcom/lenovo/safecenter/broadcast/CheckPermissionService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->initWhiteListUid(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/CheckPermissionService$1;->a:Lcom/lenovo/safecenter/broadcast/CheckPermissionService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/CheckPermissionService;->stopSelf()V

    .line 73
    return-void
.end method
