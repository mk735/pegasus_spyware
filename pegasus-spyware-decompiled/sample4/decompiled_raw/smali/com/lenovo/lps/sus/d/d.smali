.class final Lcom/lenovo/lps/sus/d/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/d/c;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v1}, Lcom/lenovo/lps/sus/d/c;->a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->x()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SUS"

    const-string v2, "notifyUpdate"

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v1}, Lcom/lenovo/lps/sus/d/c;->a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/sus/control/am;->a(I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.lenovo.lps.sus.ACTION_UPDATE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "filename"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v3}, Lcom/lenovo/lps/sus/d/c;->b(Lcom/lenovo/lps/sus/d/c;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v0}, Lcom/lenovo/lps/sus/d/c;->b(Lcom/lenovo/lps/sus/d/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v3, "packagename"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v0}, Lcom/lenovo/lps/sus/d/c;->b(Lcom/lenovo/lps/sus/d/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v0}, Lcom/lenovo/lps/sus/d/c;->b(Lcom/lenovo/lps/sus/d/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v0}, Lcom/lenovo/lps/sus/d/c;->a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v0}, Lcom/lenovo/lps/sus/d/c;->a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/control/am;->b()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v1}, Lcom/lenovo/lps/sus/d/c;->a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/sus/d/d;->a:Lcom/lenovo/lps/sus/d/c;

    invoke-static {v1}, Lcom/lenovo/lps/sus/d/c;->a(Lcom/lenovo/lps/sus/d/c;)Lcom/lenovo/lps/sus/control/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/sus/control/am;->a(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
