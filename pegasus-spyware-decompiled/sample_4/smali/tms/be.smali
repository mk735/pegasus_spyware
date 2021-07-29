.class final Ltms/be;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ltms/bn$b;

.field private b:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Ltms/bn$b;)V
    .locals 2

    iput-object p1, p0, Ltms/be;->a:Ltms/bn$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iget-object v0, p0, Ltms/be;->a:Ltms/bn$b;

    invoke-static {v0}, Ltms/bn$b;->a(Ltms/bn$b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ltms/be;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Ltms/be;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ltms/bf;

    invoke-direct {v1, p0, v0}, Ltms/bf;-><init>(Ltms/be;Ljava/lang/String;)V

    invoke-virtual {v1}, Ltms/bf;->start()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ltms/be;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
