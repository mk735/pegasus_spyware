.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;
.super Ljava/lang/Object;
.source "ManLocalWhiteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->showAddDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 293
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "checknumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->iswhite(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->isBlack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertWritePerson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    .end local v0    # "checknumber":Ljava/lang/String;
    :goto_1
    return-void

    .line 307
    .restart local v0    # "checknumber":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertWritePerson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d0297

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d0298

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 323
    .end local v0    # "checknumber":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d01ea

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 328
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d01e9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
