.class final Lcom/lenovo/safecenter/floatwindow/view/FlowView$3;
.super Ljava/lang/Thread;
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
    .line 237
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$3;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 241
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a(J)J

    .line 242
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 245
    :cond_1
    invoke-static {}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c()Ljava/lang/Thread;

    .line 249
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$3;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$3;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
