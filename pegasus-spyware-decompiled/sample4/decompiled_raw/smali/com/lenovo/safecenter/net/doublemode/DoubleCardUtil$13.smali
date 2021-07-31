.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingFloatDialog(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;I)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->d:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;

    iput p5, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 362
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "number2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->c:Landroid/app/Activity;

    const v5, 0x7f0d03c0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 381
    :goto_0
    return-void

    .line 368
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    const-string v1, "-1"

    .line 371
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    const-string v2, "-1"

    .line 374
    :cond_2
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 375
    .local v3, "number3":[Ljava/lang/Float;
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->d:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;

    iget v5, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->e:I

    invoke-interface {v4, v5, v3}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;->onSettingFloatNumberDialogOK(I[Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v3    # "number3":[Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 378
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;->c:Landroid/app/Activity;

    const v5, 0x7f0d04d9

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
