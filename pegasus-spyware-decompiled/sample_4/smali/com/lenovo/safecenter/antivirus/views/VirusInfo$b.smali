.class final Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "VirusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 290
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->b(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 291
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "pStats"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 295
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$b;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->b(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method
