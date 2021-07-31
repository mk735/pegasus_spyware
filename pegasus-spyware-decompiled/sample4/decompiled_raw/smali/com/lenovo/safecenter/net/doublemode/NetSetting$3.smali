.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;
.super Ljava/lang/Object;
.source "NetSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->m(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 518
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->n(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)I

    goto :goto_0

    .line 522
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->m(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->m(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 526
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->n(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 527
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)I

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->n(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->n(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 534
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->m(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 535
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)I

    goto/16 :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x7f090425
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
