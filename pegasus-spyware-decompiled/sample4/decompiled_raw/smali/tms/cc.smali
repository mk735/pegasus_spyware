.class final Ltms/cc;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ltms/cs$a;


# direct methods
.method constructor <init>(Ltms/cs$a;)V
    .locals 0

    iput-object p1, p0, Ltms/cc;->a:Ltms/cs$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Ltms/cc;->a:Ltms/cs$a;

    invoke-static {v0}, Ltms/cs$a;->a(Ltms/cs$a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v1, p0, Ltms/cc;->a:Ltms/cs$a;

    invoke-static {v1}, Ltms/cs$a;->b(Ltms/cs$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ltms/cc;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/cc;->a:Ltms/cs$a;

    invoke-static {v1}, Ltms/cs$a;->c(Ltms/cs$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    if-nez v0, :cond_4

    const-string v0, "null"

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ltms/cc;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
