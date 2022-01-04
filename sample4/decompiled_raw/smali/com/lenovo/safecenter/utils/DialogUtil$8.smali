.class final Lcom/lenovo/safecenter/utils/DialogUtil$8;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->createSettingNumberDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;I)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->c:Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

    iput p4, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 470
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->b:Landroid/content/Context;

    const v3, 0x7f0d03c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 485
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->b:Landroid/content/Context;

    const v3, 0x7f0d03b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->c:Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

    iget v2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$8;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;->onSettingNumberDialogOK(II)V

    goto :goto_0
.end method
