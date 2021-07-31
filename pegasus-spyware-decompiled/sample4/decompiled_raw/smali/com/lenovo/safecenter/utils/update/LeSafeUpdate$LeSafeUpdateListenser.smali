.class public interface abstract Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;
.super Ljava/lang/Object;
.source "LeSafeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeSafeUpdateListenser"
.end annotation


# virtual methods
.method public abstract onDownLoadComplete(Ljava/lang/String;)V
.end method

.method public abstract onDownLoadException(I)V
.end method

.method public abstract onInstallComplete(Z)V
.end method

.method public abstract onQueryResp(Ljava/lang/String;Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;)V
.end method
