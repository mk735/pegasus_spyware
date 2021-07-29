.class final Lcom/lenovo/safecenter/utils/DialogUtil$9;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->showPwdDialog(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->d:Landroid/widget/TextView;

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

    .line 87
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "newPwd":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    const-string v4, "action_modify_password_use_pre_password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    const-string v4, "action_modify_password_use_pre_password"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->startSettingPasswordActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->a()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 159
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    const-string v4, "com.lenovo.safecenter.privatezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/WflUtils;->jumpPrivatezoneOrDownloadpage(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->a()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    const-string v4, "com.lenovo.safecenter.LENOVO_APPLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/WflUtils;->jumpAppLockOrDownloadpage(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->a()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    const-string v4, "com.lenovo.intent.action.kidmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/WflUtils;->jumpKidModeOrDownloadpage(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->a()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->a()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    goto :goto_0

    .line 121
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 122
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->d:Landroid/widget/TextView;

    const v4, 0x7f0d0058

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 126
    .local v2, "shake":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 128
    .end local v2    # "shake":Landroid/view/animation/Animation;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->c:Ljava/lang/String;

    const-string v4, "com.lenovo.safecenter.privatezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    const-string v3, "pwd"

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    const-class v4, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v3, "pwd"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v3, 0x800000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->a()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "i":Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->b:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 154
    .restart local v2    # "shake":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->a:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$9;->d:Landroid/widget/TextView;

    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
