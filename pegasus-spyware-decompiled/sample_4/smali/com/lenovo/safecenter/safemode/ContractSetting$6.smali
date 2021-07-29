.class final Lcom/lenovo/safecenter/safemode/ContractSetting$6;
.super Ljava/lang/Object;
.source "ContractSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;->showChangeNotifyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/lenovo/safecenter/safemode/ContractSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/EditText;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->a:Landroid/widget/EditText;

    iput p3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->b:I

    iput-object p4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->c:Landroid/widget/EditText;

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

    .line 728
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 730
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 732
    const-string v0, "callnotifytitle"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 733
    const-string v0, "callnotifycontent"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 740
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 741
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    const v1, 0x7f0d01cf

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    :goto_1
    return-void

    .line 734
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->b:I

    if-nez v0, :cond_0

    .line 736
    const-string v0, "smsnotifytitle"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 737
    const-string v0, "smsnotifycontent"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$6;->d:Lcom/lenovo/safecenter/safemode/ContractSetting;

    const v1, 0x7f0d01d0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
