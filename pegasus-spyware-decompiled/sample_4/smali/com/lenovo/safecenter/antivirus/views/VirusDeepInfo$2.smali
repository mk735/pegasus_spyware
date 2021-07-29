.class final Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;
.super Ljava/lang/Object;
.source "VirusDeepInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->a(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->b(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->removePackageActivity(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->c(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->deleteApkFromSD(Ljava/lang/String;)V

    goto :goto_0
.end method
