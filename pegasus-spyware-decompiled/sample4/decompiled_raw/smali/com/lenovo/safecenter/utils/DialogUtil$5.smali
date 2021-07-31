.class final Lcom/lenovo/safecenter/utils/DialogUtil$5;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->NoticeDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;


# direct methods
.method constructor <init>(ILandroid/content/Context;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)V
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->a:I

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->c:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 374
    iget v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->a:I

    packed-switch v1, :pswitch_data_0

    .line 385
    :goto_0
    :pswitch_0
    return-void

    .line 376
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->b:Landroid/content/Context;

    const-class v2, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.AgainstTheftSet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 384
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$5;->c:Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;->onWarnDialogOk(I)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
