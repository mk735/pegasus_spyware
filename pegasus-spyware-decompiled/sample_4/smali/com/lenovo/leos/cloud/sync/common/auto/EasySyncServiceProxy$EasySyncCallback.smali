.class public interface abstract Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;
.super Ljava/lang/Object;
.source "EasySyncServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EasySyncCallback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onFinish(Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;)V
.end method
