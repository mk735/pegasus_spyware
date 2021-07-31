.class final Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;
.super Landroid/os/Handler;
.source "ProcessRunningView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->b(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->c(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->b(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->d(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->b(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->clear_view()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
