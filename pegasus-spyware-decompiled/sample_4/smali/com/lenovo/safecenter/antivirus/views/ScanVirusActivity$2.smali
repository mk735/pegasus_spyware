.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;
.super Ljava/lang/Object;
.source "ScanVirusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from_healthcheck"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->finish()V

    .line 254
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const-class v5, Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->uninstall(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->finish()V

    goto :goto_0

    .line 264
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
