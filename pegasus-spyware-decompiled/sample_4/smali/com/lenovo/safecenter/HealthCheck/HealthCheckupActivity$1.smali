.class final Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;
.super Landroid/os/Handler;
.source "HealthCheckupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->d(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_5
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->e(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    goto :goto_0

    .line 139
    :pswitch_6
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->f(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    goto :goto_0

    .line 142
    :pswitch_7
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    .local v0, "healthState":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    .end local v0    # "healthState":Landroid/widget/TextView;
    :pswitch_8
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->g(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->h(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    .line 149
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->i(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->refresh()V

    goto :goto_0

    .line 152
    :pswitch_9
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
