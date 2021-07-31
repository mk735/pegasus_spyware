.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;
.super Landroid/os/Handler;
.source "LeSafeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 164
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .local v1, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 170
    .end local v1    # "m":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 176
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d04a4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->a(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->c(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 188
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->d(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d04bd

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 193
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d05e2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 196
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
