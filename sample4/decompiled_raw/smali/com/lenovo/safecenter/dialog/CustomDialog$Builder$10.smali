.class final Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
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
    .line 713
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;->b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;->b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-static {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;->b:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-static {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 721
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singleChoiceItemsCheckListener onItemClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    return-void
.end method
