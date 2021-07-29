.class final Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;
.super Ljava/lang/Thread;
.source "SwitcherContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 562
    const-wide/16 v1, 0x640

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 563
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
