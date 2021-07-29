.class final Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;
.super Ljava/lang/Object;
.source "LeSafeDownLoadApk.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownLoadComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/Const;->updateAPK:Z

    .line 155
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->d(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_apk_path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSafeDownLoadApk DownLoadComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->stopSelf()V

    .line 162
    return-void
.end method

.method public final onDownLoadException(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 142
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSafeDownLoadApk onDownLoadException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->g(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/Const;->updateAPK:Z

    .line 147
    const-string v0, "ydp"

    const-string v1, "onDownLoadException haveUpdateFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->stopSelf()V

    .line 150
    return-void
.end method

.method public final onInstallComplete(Z)V
    .locals 0
    .param p1, "succeed"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public final onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
    .locals 3
    .param p1, "resultion"    # Ljava/lang/String;
    .param p2, "lfui"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    .prologue
    .line 123
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSafeDownLoadApk resultion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->g(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/Const;->updateAPK:Z

    .line 128
    const-string v0, "ydp"

    const-string v1, "onQueryResp haveUpdateFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->stopSelf()V

    .line 132
    :cond_1
    return-void
.end method
