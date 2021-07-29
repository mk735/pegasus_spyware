.class final Lcom/lenovo/safecenter/safemode/WhiteContract$5;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;->showChangeContract(Lcom/lenovo/safecenter/support/Contract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/lenovo/safecenter/support/Contract;

.field final synthetic d:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 507
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 509
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/safecenter/safemode/WhiteContract;->isWhiteEdit(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const v4, 0x7f0d01eb

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 553
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 516
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 518
    const/4 v1, 0x0

    .line 520
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iget-object v5, v5, Lcom/lenovo/safecenter/safemode/WhiteContract;->a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-virtual {v5, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v1, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->updateContract(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->updateName(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v6}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 527
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateName(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateNUmber(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 536
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 538
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 544
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 545
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const-string v4, "com.lenovo.securityperson.change"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const v4, 0x7f0d01cf

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 531
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->c:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->updateName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 534
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 551
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$5;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const v4, 0x7f0d01d0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
