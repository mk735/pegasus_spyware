.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog2(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:I

.field final synthetic e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/EditText;ILcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->c:Landroid/widget/EditText;

    iput p4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    iput-object p5, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "cardPostion":I
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    const v3, 0x7f0d07a5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    const v3, 0x7f0d07a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const/4 v0, 0x2

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    iget v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    if-ne v2, v5, :cond_2

    .line 197
    const-string v1, "-1"

    .line 198
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    invoke-interface {v2, v3, v4, v0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;->onSettingNumberDialogOK(III)V

    .line 220
    :goto_0
    return-void

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    const v4, 0x7f0d03c0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 206
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 207
    iget v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    if-ne v2, v5, :cond_4

    .line 208
    const-string v1, "-1"

    .line 209
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    invoke-interface {v2, v3, v4, v0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;->onSettingNumberDialogOK(III)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->a:Landroid/app/Activity;

    const v4, 0x7f0d03b3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    :cond_5
    const-string v2, "doublecard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cardpostion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;->d:I

    invoke-interface {v2, v3, v4, v0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;->onSettingNumberDialogOK(III)V

    goto :goto_0
.end method
