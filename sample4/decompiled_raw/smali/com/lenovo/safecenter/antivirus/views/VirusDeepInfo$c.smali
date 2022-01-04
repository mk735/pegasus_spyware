.class final Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;
.super Landroid/content/BroadcastReceiver;
.source "VirusDeepInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;->b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;->a:Landroid/content/Context;

    .line 167
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.antivirus.delete.sdfile.complete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "filePath"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;->b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->c(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "sucess"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, "sucess":Z
    if-eqz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$c;->b:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->finish()V

    .line 183
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "sucess":Z
    :cond_0
    return-void
.end method
