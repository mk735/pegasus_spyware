.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;
.super Landroid/os/Handler;
.source "AgainstTheftSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 487
    :pswitch_0
    sput-boolean v1, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->sendMail:Z

    .line 488
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a()V

    .line 489
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 497
    :pswitch_1
    sput-boolean v1, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->sendMail:Z

    .line 498
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a()V

    .line 499
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00cc

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 503
    :pswitch_2
    sput-boolean v4, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->sendMail:Z

    .line 504
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a()V

    .line 505
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d022b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
