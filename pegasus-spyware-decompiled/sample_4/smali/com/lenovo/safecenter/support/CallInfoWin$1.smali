.class final Lcom/lenovo/safecenter/support/CallInfoWin$1;
.super Landroid/os/Handler;
.source "CallInfoWin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/CallInfoWin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/CallInfoWin;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/CallInfoWin;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CallInfoWin$1;->a:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$1;->a:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CallInfoWin;->a(Lcom/lenovo/safecenter/support/CallInfoWin;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$1;->a:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CallInfoWin;->a(Lcom/lenovo/safecenter/support/CallInfoWin;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$1;->a:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CallInfoWin;->a(Lcom/lenovo/safecenter/support/CallInfoWin;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    :cond_0
    return-void
.end method
