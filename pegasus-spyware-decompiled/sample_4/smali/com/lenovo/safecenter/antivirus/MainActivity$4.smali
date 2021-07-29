.class final Lcom/lenovo/safecenter/antivirus/MainActivity$4;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 518
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 520
    :sswitch_0
    sput-boolean v2, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 521
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->c(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->notifyDataSetChanged()V

    .line 522
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->d(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 523
    const-string v0, "virus_state"

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v1, 0x7f0d02d7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 527
    :cond_1
    const-string v0, "virus_state"

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v1, 0x7f0d02d8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 536
    :sswitch_1
    const-string v0, "virus_state"

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v1, 0x7f0d02d9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 540
    :cond_2
    sput-boolean v2, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 541
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->c(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->notifyDataSetChanged()V

    .line 542
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->d(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 545
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$4;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->setNetShow()V

    goto/16 :goto_0

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
