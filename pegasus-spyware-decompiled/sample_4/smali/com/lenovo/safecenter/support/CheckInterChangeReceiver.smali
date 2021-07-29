.class public Lcom/lenovo/safecenter/support/CheckInterChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckInterChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.securityperson.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getScurityPerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    .line 19
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    .line 21
    const-string v0, "CheckInterChangeReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.blackperson.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getScurityPerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    .line 25
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    .line 26
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getWhitePerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    .line 27
    const-string v0, "CheckInterChangeReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.netperson.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getNetBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->netBlackPerson:Ljava/util/List;

    .line 31
    const-string v0, "CheckInterChangeReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.whiteperson.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    .line 35
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getWhitePerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    .line 36
    const-string v0, "CheckInterChangeReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lenovo.antispam.blackperson..provider.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getWhitePerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    .line 40
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/SafeCenter;->getLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    .line 41
    const-string v0, "CheckInterChangeReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
