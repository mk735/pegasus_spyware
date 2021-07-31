.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;
.super Landroid/content/BroadcastReceiver;
.source "AntiSpamMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 164
    const-string v0, "onReceive"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const-string v0, "onReceive"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->initData(I)V

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->updateStatus()V

    .line 175
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->setHarassSet()V

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->initData(I)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.clearlogs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->updateStatus()V

    goto :goto_1
.end method
