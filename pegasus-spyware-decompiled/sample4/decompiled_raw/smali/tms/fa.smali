.class public final Ltms/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/tmsecure/module/permission/PermissionTableItem;",
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
.method public final a(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 1

    invoke-static {p1}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)[Lcom/tencent/tmsecure/module/permission/PermissionTableItem;
    .locals 1

    new-array v0, p1, [Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltms/fa;->a(Landroid/os/Parcel;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ltms/fa;->a(I)[Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    return-object v0
.end method
