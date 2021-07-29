.class final Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;
.super Ljava/lang/Thread;
.source "NotiSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/NotiSMSActivity;->onResume()V
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
    .line 115
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->b(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->a(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 119
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->d(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)I

    .line 124
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 136
    :cond_1
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->getBackValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 132
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->f(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/support/SafeCenterService;->setBackValue(Ljava/lang/String;I)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$2;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->finish()V

    goto :goto_1
.end method
