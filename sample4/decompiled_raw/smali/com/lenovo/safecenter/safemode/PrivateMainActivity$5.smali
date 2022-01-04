.class final Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;
.super Ljava/lang/Object;
.source "PrivateMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/PrivateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v6, 0x7f04000e

    .line 319
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "newPwd":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Z

    .line 324
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "pwd"

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v4, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->f(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 357
    :goto_1
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    const v5, 0x7f0d053e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 339
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->c:Landroid/widget/TextView;

    const v5, 0x7f0d0058

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 344
    .local v3, "shake":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 348
    .end local v3    # "shake":Landroid/view/animation/Animation;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->d:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 352
    .restart local v3    # "shake":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->a:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;->c:Landroid/widget/TextView;

    const v5, 0x7f0d0057

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
