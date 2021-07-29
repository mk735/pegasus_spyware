.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingCheckBoxDialog(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ljava/lang/String;Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->a:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    iput-object p6, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 284
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 285
    .local v0, "checked1":Z
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 286
    .local v1, "checked2":Z
    if-eqz v1, :cond_0

    .line 287
    const-string v2, "-1"

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->d:Landroid/app/Activity;

    const v5, 0x7f0d07a6

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v7, v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog2(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;ILjava/lang/String;)V

    .line 292
    :cond_0
    if-eqz v0, :cond_1

    .line 293
    const-string v2, "-1"

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->d:Landroid/app/Activity;

    const v5, 0x7f0d07a5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v7, v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog2(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;ILjava/lang/String;)V

    .line 298
    :cond_1
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    .line 299
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn2(Z)V

    .line 300
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;->e:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;

    const/4 v3, 0x5

    invoke-interface {v2, v6, v3, v6}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;->onSettingNumberDialogOK(III)V

    .line 301
    return-void
.end method
