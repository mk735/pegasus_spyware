.class final Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;
.super Landroid/os/Handler;
.source "WhiteSmsShowByNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 62
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 64
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->initData()V

    .line 67
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateSmsStatus(Ljava/lang/String;I)V

    .line 68
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 77
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 78
    .local v1, "nmanager":Landroid/app/NotificationManager;
    sget v2, Lcom/lenovo/safecenter/utils/Constant;->SMS_NOTI_ID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 70
    .end local v1    # "nmanager":Landroid/app/NotificationManager;
    :cond_2
    const-string v2, "WhiteSms"

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    const-string v2, "WhiteSms"

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/WhiteSms;

    .line 73
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/WhiteSms;
    iget-object v2, v0, Lcom/lenovo/safecenter/safemode/WhiteSms;->hand:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 81
    .end local v0    # "activity":Lcom/lenovo/safecenter/safemode/WhiteSms;
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
