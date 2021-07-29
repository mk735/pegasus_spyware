.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$14;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$14;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownLoadComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 895
    return-void
.end method

.method public final onDownLoadException(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$14;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceQueryLab(Landroid/content/Context;)V

    .line 889
    return-void
.end method

.method public final onInstallComplete(Z)V
    .locals 0
    .param p1, "succeed"    # Z

    .prologue
    .line 882
    return-void
.end method

.method public final onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
    .locals 1
    .param p1, "resultion"    # Ljava/lang/String;
    .param p2, "lfui"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    .prologue
    .line 872
    const-string v0, "SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$14;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceQueryLab(Landroid/content/Context;)V

    .line 876
    :cond_0
    return-void
.end method
