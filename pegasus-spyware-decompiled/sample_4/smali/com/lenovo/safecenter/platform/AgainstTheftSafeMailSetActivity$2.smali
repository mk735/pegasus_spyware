.class final Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;
.super Ljava/lang/Object;
.source "AgainstTheftSafeMailSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00a9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->finish()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->isMailNO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setSafeMail(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->finish()V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->finish()V

    .line 76
    :cond_3
    :goto_0
    return-void

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V

    goto :goto_0
.end method
