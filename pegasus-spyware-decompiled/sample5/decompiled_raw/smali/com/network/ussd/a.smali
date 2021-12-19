.class final Lcom/network/ussd/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/network/ussd/CDUSSDService;


# direct methods
.method constructor <init>(Lcom/network/ussd/CDUSSDService;)V
    .locals 0

    iput-object p1, p0, Lcom/network/ussd/a;->a:Lcom/network/ussd/CDUSSDService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/network/ussd/a;->a:Lcom/network/ussd/CDUSSDService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/network/ussd/CDUSSDService;->access$002(Lcom/network/ussd/CDUSSDService;Z)Z

    const-string v0, "CDUSSDService ussdactivate ussd listener"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/network/ussd/a;->a:Lcom/network/ussd/CDUSSDService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/network/ussd/CDUSSDService;->access$002(Lcom/network/ussd/CDUSSDService;Z)Z

    const-string v0, "CDUSSDService deactivate ussd listener"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
