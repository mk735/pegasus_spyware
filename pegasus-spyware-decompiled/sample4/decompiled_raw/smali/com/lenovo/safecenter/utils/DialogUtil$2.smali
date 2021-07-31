.class final Lcom/lenovo/safecenter/utils/DialogUtil$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->createAutoUpdateRatechoice(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;I)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$2;->a:Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

    iput p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/DialogUtil$2;->a:Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

    iget v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$2;->b:I

    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;->onSettingNumberDialogOK(II)V

    .line 359
    return-void
.end method
