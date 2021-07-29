.class public Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;
.super Landroid/os/Handler;
.source "RotateScanHealthScoreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "aja"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;)V
    .locals 0
    .param p2, "paramRotateScanAniView"    # Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;->a:Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "paramMessage"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;->a:Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a(Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;->a:Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b(Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
