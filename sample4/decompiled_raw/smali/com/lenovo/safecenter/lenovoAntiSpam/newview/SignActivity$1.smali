.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;
.super Landroid/os/Handler;
.source "SignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;-><init>()V

    .line 58
    .local v0, "ss":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setId(I)V

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->notifyDataSetChanged()V

    .line 72
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 74
    .end local v0    # "ss":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    const v4, 0x7f0d0756

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
