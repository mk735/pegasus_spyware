.class final Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;
.super Landroid/os/Handler;
.source "NotificationTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "replace"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 107
    .local v1, "exSuccess":Z
    if-eqz v1, :cond_1

    .line 108
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 109
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->writeSwitch(Landroid/content/Context;Z)V

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->b(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->b(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->c(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 108
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
