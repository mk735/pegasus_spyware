.class final Lcom/network/android/roomTap/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/network/android/roomTap/AutoAnswerReceiver;


# direct methods
.method constructor <init>(Lcom/network/android/roomTap/AutoAnswerReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/roomTap/d;->b:Lcom/network/android/roomTap/AutoAnswerReceiver;

    iput-object p2, p0, Lcom/network/android/roomTap/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/network/android/roomTap/d;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "answerCallITelephonyFirst - checking if phone still ringing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "answerCallITelephonyFirst failed. answering with headset hook"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/roomTap/d;->b:Lcom/network/android/roomTap/AutoAnswerReceiver;

    iget-object v0, p0, Lcom/network/android/roomTap/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->c(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
