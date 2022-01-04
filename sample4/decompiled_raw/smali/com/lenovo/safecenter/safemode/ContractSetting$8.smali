.class final Lcom/lenovo/safecenter/safemode/ContractSetting$8;
.super Ljava/lang/Object;
.source "ContractSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;->showChangeNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/ContractSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->a:Landroid/widget/EditText;

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

    .line 806
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getWordCount(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 810
    const-string v0, "changeNametitle"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 813
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    const v1, 0x7f0d01cf

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 814
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 825
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    const v1, 0x7f0d05ad

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$8;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    const v1, 0x7f0d01d0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
