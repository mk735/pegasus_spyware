.class public interface abstract Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService;
.super Ljava/lang/Object;
.source "ILesyncService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/sync/common/auto/ILesyncService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getContactDiff()Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
