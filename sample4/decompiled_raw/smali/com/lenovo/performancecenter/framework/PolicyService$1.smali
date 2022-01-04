.class final Lcom/lenovo/performancecenter/framework/PolicyService$1;
.super Landroid/os/Handler;
.source "PolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/framework/PolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/framework/PolicyService;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/framework/PolicyService;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/PolicyService$1;->a:Lcom/lenovo/performancecenter/framework/PolicyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService$1;->a:Lcom/lenovo/performancecenter/framework/PolicyService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/framework/PolicyService;->a(Lcom/lenovo/performancecenter/framework/PolicyService;II)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
