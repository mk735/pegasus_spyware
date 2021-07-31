.class final Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;
.super Landroid/os/Handler;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 68
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 75
    .end local v0    # "m":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangeGuestModeSuccess()V

    .line 76
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "guest_mode_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0176

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    const v4, 0x7f0d0025

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto/16 :goto_0

    .line 98
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangeChildModeFail()V

    .line 99
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->c(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->d(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->e(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 105
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
