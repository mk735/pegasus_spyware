.class final Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$1;
.super Ljava/lang/Object;
.source "LeSafeUpdate.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$1;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownLoadComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method

.method public final onDownLoadException(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 87
    return-void
.end method

.method public final onInstallComplete(Z)V
    .locals 0
    .param p1, "succeed"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public final onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
    .locals 0
    .param p1, "resultion"    # Ljava/lang/String;
    .param p2, "lfui"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    .prologue
    .line 75
    return-void
.end method
