.class final Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;
.super Ljava/lang/Object;
.source "NotiSMSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/NotiSMSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->setBackValue(Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->setBackValue(Ljava/lang/String;I)V

    .line 225
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/support/SafeCenterService;->setBackValue(Ljava/lang/String;I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->g(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    new-instance v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;-><init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->start()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x7f090443
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
