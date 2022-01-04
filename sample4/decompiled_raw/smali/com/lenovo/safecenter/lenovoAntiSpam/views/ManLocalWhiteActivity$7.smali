.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;
.super Ljava/lang/Object;
.source "ManLocalWhiteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->showEditDialog()V
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
    .line 358
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 360
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 362
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "checknumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->iswhiteEdit(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->isBlack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v2, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->updateWritePerson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setName(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->notifyDataSetChanged()V

    .line 385
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const-string v2, "com.lenovo.antispam.whiteperson.change"

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    .end local v0    # "checknumber":Ljava/lang/String;
    :goto_1
    return-void

    .line 379
    .restart local v0    # "checknumber":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    iget-object v2, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v3, v5, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->updateWritePerson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setName(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d0297

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d0298

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 400
    .end local v0    # "checknumber":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d01ea

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 405
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const v2, 0x7f0d01e9

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
