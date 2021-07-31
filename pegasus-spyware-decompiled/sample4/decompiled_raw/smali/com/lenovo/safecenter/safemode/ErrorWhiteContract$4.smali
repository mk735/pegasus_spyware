.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->showAddDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 149
    .local v0, "conAdd":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const-string v3, "com.lenovo.securityperson.change"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->initDate()V

    .line 158
    new-instance v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4$1;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4$1;->start()V

    .line 177
    .end local v0    # "conAdd":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const v3, 0x7f0d01ea

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const v3, 0x7f0d01e9

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
