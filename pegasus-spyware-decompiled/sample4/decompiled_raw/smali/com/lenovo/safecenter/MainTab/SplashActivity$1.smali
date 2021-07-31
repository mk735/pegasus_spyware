.class final Lcom/lenovo/safecenter/MainTab/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/SplashActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->a(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V

    .line 134
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v1, "firstBoot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b(Lcom/lenovo/safecenter/MainTab/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->c(Lcom/lenovo/safecenter/MainTab/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->c(Lcom/lenovo/safecenter/MainTab/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->initApplication(Landroid/content/Context;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b(Lcom/lenovo/safecenter/MainTab/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
