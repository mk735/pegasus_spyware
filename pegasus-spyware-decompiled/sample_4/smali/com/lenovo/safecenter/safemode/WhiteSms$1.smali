.class final Lcom/lenovo/safecenter/safemode/WhiteSms$1;
.super Landroid/os/Handler;
.source "WhiteSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/WhiteSms;->initData()V

    .line 56
    const-string v1, "SofeModeMain"

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 57
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteSms;->a:Landroid/app/NotificationManager;

    sget v2, Lcom/lenovo/safecenter/utils/Constant;->SMS_NOTI_ID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
