.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$1;
.super Landroid/os/Handler;
.source "SpamConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    const v1, 0x7f0d0503

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->finish()V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
