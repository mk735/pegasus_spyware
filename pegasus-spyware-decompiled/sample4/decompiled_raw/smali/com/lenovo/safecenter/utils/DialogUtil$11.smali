.class final Lcom/lenovo/safecenter/utils/DialogUtil$11;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->showPasswordQuestionDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 209
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->b()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 210
    return-void
.end method
