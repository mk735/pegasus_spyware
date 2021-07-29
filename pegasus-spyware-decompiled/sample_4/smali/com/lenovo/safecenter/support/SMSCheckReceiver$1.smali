.class final Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;
.super Landroid/os/Handler;
.source "SMSCheckReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SMSCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isLocked:Z

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locked"

    sget-boolean v2, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isLocked:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/MyUtils;->lockedScreen(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v0, "TrafficCorrectCenter"

    const-string v1, "touch delau handler msg 3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "error"

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setPluginPhoneNumberData(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "test1"

    const-string v1, "kill : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;-><init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;->start()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
