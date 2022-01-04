.class final Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;
.super Landroid/os/Handler;
.source "FlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->b(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a(Lcom/lenovo/safecenter/floatwindow/view/FlowView;J)J

    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->e(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->d(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
