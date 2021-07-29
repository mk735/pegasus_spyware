.class public Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;
.super Ljava/lang/Object;
.source "BackupDiffInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public neverBackup:Z

.field public opAdd:I

.field public opDelete:I

.field public opUpdate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->neverBackup:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isNeverBackup()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->neverBackup:Z

    return v0
.end method

.method public setNeverBackup(Z)V
    .locals 0
    .param p1, "everBackup"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->neverBackup:Z

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "neverBackup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->neverBackup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ",add:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opAdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ",del:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opDelete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ",update:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opUpdate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->neverBackup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget v0, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opAdd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opDelete:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
