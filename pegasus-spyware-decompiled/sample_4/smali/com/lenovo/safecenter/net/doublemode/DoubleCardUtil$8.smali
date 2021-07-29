.class final Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;
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
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;->a:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;

    iput p2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 146
    const/4 v1, 0x0

    new-array v0, v1, [I

    .line 147
    .local v0, "number3":[I
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;->a:Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;

    iget v2, p0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;->b:I

    invoke-interface {v1, v0, v2}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;->onSettingNumberDialogCancel([II)V

    .line 148
    return-void
.end method
