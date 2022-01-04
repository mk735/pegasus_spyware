.class final Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;
.super Ljava/lang/Object;
.source "NotiSMSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->c:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->c:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->c:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->removePackageActivity(Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$1;->c:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->finish()V

    goto :goto_0
.end method
