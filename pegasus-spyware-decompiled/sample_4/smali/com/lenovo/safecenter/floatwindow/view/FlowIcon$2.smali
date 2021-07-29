.class final Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;
.super Landroid/os/Handler;
.source "FlowIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;Z)Z

    .line 126
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;Z)Z

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->d(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->setOnclickContent()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)I

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
