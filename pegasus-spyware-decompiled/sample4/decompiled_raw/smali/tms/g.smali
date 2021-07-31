.class public final Ltms/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/tmsecure/common/DataEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/tencent/tmsecure/common/DataEntity;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(Landroid/os/Parcel;Ltms/g;)V

    return-object v0
.end method

.method public final a(I)[Lcom/tencent/tmsecure/common/DataEntity;
    .locals 1

    new-array v0, p1, [Lcom/tencent/tmsecure/common/DataEntity;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltms/g;->a(Landroid/os/Parcel;)Lcom/tencent/tmsecure/common/DataEntity;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltms/g;->a(I)[Lcom/tencent/tmsecure/common/DataEntity;

    move-result-object v0

    return-object v0
.end method
