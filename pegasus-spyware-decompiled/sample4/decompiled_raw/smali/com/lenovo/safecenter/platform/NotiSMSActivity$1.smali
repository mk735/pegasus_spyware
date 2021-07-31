.class final Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;
.super Landroid/os/Handler;
.source "NotiSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/NotiSMSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    const v1, 0x7f0d013b

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    const v1, 0x7f0d013c

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    goto :goto_0

    .line 65
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    .line 66
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    const v2, 0x7f0d0178

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 70
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    const v2, 0x7f0d04dc

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    const v2, 0x7f0d04dd

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->c(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    const v2, 0x7f0d00fe

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->a(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->b(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
