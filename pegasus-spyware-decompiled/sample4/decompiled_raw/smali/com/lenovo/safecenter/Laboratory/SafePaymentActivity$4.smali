.class final Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;
.super Landroid/os/Handler;
.source "SafePaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    .local v1, "m":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 203
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 206
    .end local v1    # "m":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->k:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 207
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    const-string v3, "safeinput"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "i":I
    if-eq v0, v6, :cond_0

    .line 210
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safeinputmethod_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "safeinput"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    const v5, 0x7f0d0220

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    const v5, 0x7f0d054f

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d00f2

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0553

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safeinputmethod_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    const v3, 0x7f0d0552

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
