.class public Lcom/lenovo/lps/sus/control/SUSReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSReceiver;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/lenovo/lps/sus/control/SUSReceiver;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.lenovo.lps.sus.ACTION_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagename"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lenovo/lps/sus/c/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v2, Lcom/lenovo/lps/sus/control/SUSReceiver;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/lenovo/lps/sus/control/SUSReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "SUS"

    const-string v1, "SUSReceiver sendMessage SUS_INSTALLAPK_EVENT"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
