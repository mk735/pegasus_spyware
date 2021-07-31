.class final Lcom/lenovo/safecenter/utils/DialogUtil$10;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->showPasswordQuestionDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    iput p3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v5, 0x7f04000e

    const/4 v4, 0x0

    .line 216
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 218
    .local v0, "newAnser":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    const v3, 0x7f0d0560

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 223
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 226
    .local v1, "shake":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    .end local v1    # "shake":Landroid/view/animation/Animation;
    :goto_1
    return-void

    .line 216
    .end local v0    # "newAnser":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    .restart local v0    # "newAnser":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPasswordAnswer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    const v3, 0x7f0d0568

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 233
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 236
    .restart local v1    # "shake":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 238
    .end local v1    # "shake":Landroid/view/animation/Animation;
    :cond_2
    iget v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->c:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 252
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$10;->b:Landroid/content/Context;

    const-string v3, "action_modify_password_use_answer"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->startSettingPasswordActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->b()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
