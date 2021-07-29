.class final Lcom/lenovo/safecenter/shortcut/ClearnView$1;
.super Landroid/os/Handler;
.source "ClearnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/shortcut/ClearnView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$1;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$1;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Lcom/lenovo/safecenter/shortcut/ClearnView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$1;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$1;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/shortcut/ViewManager;->removeView(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    :cond_0
    return-void
.end method
