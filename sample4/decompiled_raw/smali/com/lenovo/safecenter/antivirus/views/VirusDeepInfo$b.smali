.class final Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "VirusDeepInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 339
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->d(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 340
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "pStats"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 344
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo$b;->a:Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;->d(Lcom/lenovo/safecenter/antivirus/views/VirusDeepInfo;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method
