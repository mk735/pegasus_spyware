.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;
.super Landroid/os/Handler;
.source "DownSysService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;)Z

    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    const-string v1, "systime"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->setUpdateIntent(Ljava/lang/String;II)V

    .line 22
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->stopSelf()V

    goto :goto_0

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;)Z

    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->setQueryIntent(I)V

    .line 29
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSysService;->stopSelf()V

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
