.class final Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->updateVirus(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$1;->a:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a(I)I

    .line 122
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/CheckResult;

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$1;->a:Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    iput-object v2, v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCheckStarted()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
