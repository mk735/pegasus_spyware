.class final Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field final synthetic b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;Lcom/lenovo/safecenter/dialog/CustomDialog;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;->b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;->b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-static {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->e(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 618
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;->b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-static {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->f(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 620
    :cond_0
    return-void
.end method
