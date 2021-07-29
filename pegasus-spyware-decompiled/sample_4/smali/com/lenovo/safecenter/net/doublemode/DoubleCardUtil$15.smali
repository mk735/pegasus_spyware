.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showDailog(Landroid/app/Activity;ILcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;II)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->c:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    iput p4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->d:I

    iput p5, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 522
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const-string v0, "-1"

    .line 535
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->c:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->d:I

    iget v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->e:I

    invoke-interface {v1, v2, v3, v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;->onSettingNumberDialogOK(III)V

    .line 537
    return-void

    .line 526
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;->b:Landroid/app/Activity;

    const v3, 0x7f0d03b3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 531
    const-string v0, "-1"

    goto :goto_0
.end method
