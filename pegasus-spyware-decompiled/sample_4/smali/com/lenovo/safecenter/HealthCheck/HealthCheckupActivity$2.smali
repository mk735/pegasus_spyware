.class final Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;
.super Ljava/lang/Object;
.source "HealthCheckupActivity.java"

# interfaces
.implements Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 234
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFinished action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public final onOneItemProcess(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 3
    .param p1, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 217
    :cond_2
    iget-object v0, p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x2

    iget-object v1, p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public final onProgressChanged(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I

    .line 185
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 187
    return-void
.end method

.method public final onResult(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 1
    .param p1, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->i(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->addData(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    goto :goto_0
.end method

.method public final onScoreChanged(I)V
    .locals 3
    .param p1, "score"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->b(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I

    .line 192
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 193
    return-void
.end method

.method public final onStarted(II)V
    .locals 3
    .param p1, "maxProgress"    # I
    .param p2, "action"    # I

    .prologue
    .line 203
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->d(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I

    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/16 v0, 0x9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 206
    return-void
.end method

.method public final onStatusChanged(I)V
    .locals 3
    .param p1, "statusId"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->c(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;I)I

    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 199
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "isIndeterminate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->j(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0
.end method
