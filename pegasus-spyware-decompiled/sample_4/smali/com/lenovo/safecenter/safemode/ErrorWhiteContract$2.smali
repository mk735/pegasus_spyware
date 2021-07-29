.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->showChangeContract()V
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
    .line 355
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->b:Landroid/widget/EditText;

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

    .line 358
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 369
    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 370
    sget-object v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 372
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const v3, 0x7f0d01cf

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 378
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;->c:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const v3, 0x7f0d01d0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
