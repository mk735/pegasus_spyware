.class final Lcom/lenovo/safecenter/safemode/HandActivity$2;
.super Ljava/lang/Object;
.source "HandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/HandActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/HandActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/HandActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->c(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->c(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    const v4, 0x7f0d01e9

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 190
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->c(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "number":Ljava/lang/String;
    const-string v3, "match"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->b(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getWhiteContract(Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v3

    if-nez v3, :cond_3

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->d(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->d(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->d(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_2
    new-instance v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 169
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->b(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertContract(Lcom/lenovo/safecenter/support/Contract;)V

    .line 173
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    const-string v4, "com.lenovo.securityperson.change"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    const v4, 0x7f0d00ef

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 175
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/safemode/HandActivity;->initCopyDel(Lcom/lenovo/safecenter/support/Contract;)V

    .line 176
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->finish()V

    goto/16 :goto_0

    .line 181
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    const v4, 0x7f0d01eb

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/HandActivity$2;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    const v4, 0x7f0d01ea

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
