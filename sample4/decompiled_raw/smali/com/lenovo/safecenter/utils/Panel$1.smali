.class final Lcom/lenovo/safecenter/utils/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x7d0

    const/4 v3, 0x1

    .line 399
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    :goto_0
    return v3

    .line 404
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 405
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 406
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/Panel;->b(Lcom/lenovo/safecenter/utils/Panel;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/utils/Panel;->bringToFront()V

    .line 411
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/Panel;->c(Lcom/lenovo/safecenter/utils/Panel;)Landroid/view/GestureDetector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    if-ne v0, v3, :cond_2

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 416
    .local v1, "now":J
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3, v1, v2}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;J)J

    .line 417
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v1

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/Panel;->b(Lcom/lenovo/safecenter/utils/Panel;J)J

    .line 418
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->d(Lcom/lenovo/safecenter/utils/Panel;)Z

    .line 419
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$1;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->f(Lcom/lenovo/safecenter/utils/Panel;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 426
    .end local v1    # "now":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
