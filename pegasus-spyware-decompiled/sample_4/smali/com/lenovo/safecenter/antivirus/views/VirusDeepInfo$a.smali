.class final Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;
.super Landroid/content/BroadcastReceiver;
.source "VirusDeepInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;->b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;->a:Landroid/content/Context;

    .line 148
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;->b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->b(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$a;->b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->finish()V

    .line 159
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
