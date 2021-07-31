.class final Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->updateVirus(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;->b:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;

    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/UpdateInfo;
    .param p2, "arg1"    # I

    .prologue
    .line 147
    const-string v0, "demo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public final onUpdateCanceled()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 1
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/UpdateInfo;
    .param p2, "arg1"    # I

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a(I)I

    .line 154
    return-void
.end method

.method public final onUpdateFinished()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a(I)I

    .line 158
    const-string v0, "virus_state"

    const-string v1, "3"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;->b:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;->b:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;

    .line 163
    :cond_0
    return-void
.end method

.method public final onUpdateStarted()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
