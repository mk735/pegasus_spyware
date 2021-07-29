.class final Lcom/lenovo/safecenter/broadcast/LockScreenService$2;
.super Landroid/os/Handler;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/broadcast/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/LockScreenService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/LockScreenService;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$2;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 174
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 176
    :pswitch_0
    sget-object v2, Lcom/lenovo/safecenter/broadcast/LockScreenService;->e:Landroid/view/WindowManager;

    sget-object v3, Lcom/lenovo/safecenter/broadcast/LockScreenService;->f:Landroid/view/View;

    sget-object v4, Lcom/lenovo/safecenter/broadcast/LockScreenService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    sget-object v2, Lcom/lenovo/safecenter/broadcast/LockScreenService;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 181
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$2;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 182
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lcom/lenovo/safecenter/broadcast/LockScreenService;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 183
    sget-object v2, Lcom/lenovo/safecenter/broadcast/LockScreenService;->e:Landroid/view/WindowManager;

    sget-object v3, Lcom/lenovo/safecenter/broadcast/LockScreenService;->f:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 184
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/broadcast/LockScreenService;->i:Z

    .line 185
    sget-object v2, Lcom/lenovo/safecenter/broadcast/LockScreenService;->c:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove view error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
