.class final Lcom/lenovo/safecenter/utils/DialogUtil$6;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->NoticePositiveDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;


# direct methods
.method constructor <init>(ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)V
    .locals 0

    .prologue
    .line 417
    iput p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$6;->a:I

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$6;->b:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 420
    iget v0, p0, Lcom/lenovo/safecenter/utils/DialogUtil$6;->a:I

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/DialogUtil$6;->b:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;->onWarnDialogOk(I)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
