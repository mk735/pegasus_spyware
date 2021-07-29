.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;
.super Ljava/lang/Thread;
.source "GuestModeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/support/CMDHelper;->disableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
