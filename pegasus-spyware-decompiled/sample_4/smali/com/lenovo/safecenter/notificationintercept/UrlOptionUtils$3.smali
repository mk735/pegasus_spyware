.class final Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$3;
.super Ljava/lang/Thread;
.source "UrlOptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->resumeURL(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$3;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 83
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$3;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->resumeURLOpti(Landroid/content/Context;)Z

    move-result v1

    .line 84
    .local v1, "execute":Z
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$3;->b:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 85
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 86
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "replace"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 90
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$3;->b:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
