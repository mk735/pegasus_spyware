.class final Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;
.super Landroid/os/Handler;
.source "SwitcherContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0200b8

    const v2, 0x7f02009b

    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d06f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v3, v4, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V

    goto :goto_0

    .line 197
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v3, v3, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V

    goto/16 :goto_0

    .line 202
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v3, v4, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V

    goto/16 :goto_0

    .line 207
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v3, v3, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V

    goto/16 :goto_0

    .line 217
    :cond_0
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 230
    :pswitch_8
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)Z

    goto/16 :goto_0

    .line 219
    :pswitch_9
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)Z

    .line 220
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v1, v4, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V

    goto/16 :goto_0

    .line 224
    :pswitch_a
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)Z

    .line 225
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v1, v3, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 190
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 217
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
