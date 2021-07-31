.class final Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$3;
.super Ljava/lang/Object;
.source "UpdateVersionActivity.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$3;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownLoadComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 513
    return-void
.end method

.method public final onDownLoadException(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 507
    return-void
.end method

.method public final onInstallComplete(Z)V
    .locals 0
    .param p1, "succeed"    # Z

    .prologue
    .line 502
    return-void
.end method

.method public final onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
    .locals 0
    .param p1, "resultion"    # Ljava/lang/String;
    .param p2, "lfui"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    .prologue
    .line 496
    return-void
.end method
