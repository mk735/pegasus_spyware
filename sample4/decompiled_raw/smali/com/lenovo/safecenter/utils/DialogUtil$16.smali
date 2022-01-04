.class final Lcom/lenovo/safecenter/utils/DialogUtil$16;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;I)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$16;->a:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    iput p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$16;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/DialogUtil$16;->a:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    iget v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$16;->b:I

    invoke-interface {v0, v1}, Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;->onWarnDialogOk(I)V

    .line 323
    return-void
.end method
