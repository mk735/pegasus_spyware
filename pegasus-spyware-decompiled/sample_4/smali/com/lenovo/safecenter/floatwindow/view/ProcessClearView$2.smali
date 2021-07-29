.class final Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;
.super Landroid/os/Handler;
.source "ProcessClearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 195
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionClickOneKeyClearInShortcutSwitch()V

    .line 199
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->d(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->g(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Lcom/lenovo/safecenter/floatwindow/util/Tools;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->f(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d06fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "mem_clear_before_size":I
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->h(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)I

    move-result v3

    sub-int v0, v1, v3

    .line 206
    .local v0, "clear_after_size":I
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->g(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Lcom/lenovo/safecenter/floatwindow/util/Tools;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->i(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getUeageRate1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 207
    .local v2, "uate":I
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->j(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0701

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->h(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d06fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->l(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)I

    move-result v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->showClearAnimation(III)V

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
