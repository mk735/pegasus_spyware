.class final Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;
.super Ljava/lang/Object;
.source "FlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 108
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 111
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->b(Lcom/lenovo/safecenter/floatwindow/view/FlowView;J)J

    .line 112
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "rate":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->b(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method
