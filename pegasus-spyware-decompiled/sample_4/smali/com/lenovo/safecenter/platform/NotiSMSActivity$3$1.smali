.class final Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;
.super Ljava/lang/Thread;
.source "NotiSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 251
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->h(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v1, v1, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->i(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v3, v3, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->j(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v4, v4, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->k(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v5, v5, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->h(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->formatReportTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v5, v5, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->l(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->m(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/lenovo/safecenter/support/HttpUtils;->reportTariffLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->n(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v1, v1, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->i(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp_isupload(Ljava/lang/String;I)V

    .line 255
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v1, v1, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3$1;->a:Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;

    iget-object v1, v1, Lcom/lenovo/safecenter/platform/NotiSMSActivity$3;->c:Lcom/lenovo/safecenter/platform/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/NotiSMSActivity;->e(Lcom/lenovo/safecenter/platform/NotiSMSActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
