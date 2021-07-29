.class final Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;
.super Landroid/os/Handler;
.source "SafeInputMethodBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;->a:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 258
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 260
    :pswitch_0
    const-string v4, "ydp"

    const-string v5, "in handler"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->i()Landroid/view/WindowManager;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;->a:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    invoke-static {v6}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 263
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->i()Landroid/view/WindowManager;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h()Landroid/widget/EditText;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 265
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;->a:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v7, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 268
    :pswitch_1
    new-instance v2, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;->a:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 269
    .local v2, "t":Landroid/widget/Toast;
    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;->a:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    invoke-static {v4}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 270
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03011c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 271
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0904b4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 272
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0d0221

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 273
    const/16 v4, 0x31

    invoke-virtual {v2, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 275
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
