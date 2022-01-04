.class final Lcom/lenovo/safecenter/antivirus/views/VirusInfo$2;
.super Ljava/lang/Object;
.source "VirusInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$2;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->removePackageActivity(Ljava/lang/String;)V

    .line 95
    return-void
.end method
