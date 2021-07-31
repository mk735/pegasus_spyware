.class final Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "NotiSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;->a:Landroid/content/Context;

    .line 217
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "pname":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->a(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->b(Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;)Z

    .line 225
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;->finish()V

    .line 227
    :cond_0
    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->removeConfig(Ljava/lang/String;Landroid/content/Context;)V

    .line 229
    .end local v0    # "pname":Ljava/lang/String;
    :cond_1
    return-void
.end method
