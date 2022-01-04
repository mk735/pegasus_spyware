.class final Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo$1;
.super Ljava/lang/Object;
.source "BackupDiffInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 38
    new-instance v1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->setNeverBackup(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opAdd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opDelete:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opUpdate:I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 38
    new-array v0, p1, [Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;

    return-object v0
.end method
