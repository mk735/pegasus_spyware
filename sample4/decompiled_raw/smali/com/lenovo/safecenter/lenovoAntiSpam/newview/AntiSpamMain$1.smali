.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;
.super Landroid/os/Handler;
.source "AntiSpamMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->showReport_success()V

    .line 96
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->notifyDataSetChanged()V

    goto :goto_1

    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const v2, 0x7f0d013c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->showReport_fail()V

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
