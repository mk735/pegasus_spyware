.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;
.super Ljava/lang/Object;
.source "ManLocalBlackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->showReportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 345
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->report(Ljava/lang/String;I)V

    .line 347
    return-void
.end method
