.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->c:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;

    iput p4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 114
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "number2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const-string v0, "-1"

    .line 128
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    const-string v1, "-1"

    .line 139
    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 140
    .local v2, "number3":[I
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->c:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;

    iget v4, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;->d:I

    invoke-interface {v3, v2, v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;->onSettingNumberDialogOK([II)V

    .line 142
    return-void

    .line 119
    .end local v2    # "number3":[I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 124
    const-string v0, "-1"

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 136
    const-string v1, "-1"

    goto :goto_1
.end method
