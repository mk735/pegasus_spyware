.class final Lcom/lenovo/safecenter/MainTab/CallNotifyActivity$2;
.super Landroid/os/Handler;
.source "CallNotifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/CallNotifyActivity$2;->a:Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/CallNotifyActivity$2;->a:Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 124
    .end local v0    # "m":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/CallNotifyActivity$2;->a:Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
