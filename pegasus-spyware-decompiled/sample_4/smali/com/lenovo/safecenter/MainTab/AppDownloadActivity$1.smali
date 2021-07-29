.class final Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$1;
.super Landroid/os/Handler;
.source "AppDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$1;->a:Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$1;->a:Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
