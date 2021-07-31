.class final Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;
.super Ljava/lang/Object;
.source "AgainstTheftPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPasswordWithJieMi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    const v5, 0x7f0d014b

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    const v5, 0x7f0d014a

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/safecenter/utils/Const;->isTariff:Z

    .line 107
    .end local v0    # "password":Ljava/lang/String;
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->c(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    .line 105
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto :goto_0
.end method
