.class public interface abstract Lcom/tencent/tmsecure/module/permission/IDummyService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/permission/IDummyService$Proxy;,
        Lcom/tencent/tmsecure/module/permission/IDummyService$Stub;
    }
.end annotation


# static fields
.field public static final a:I = 0x132b534

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = -0x1

.field public static final k:I = 0x1e61

.field public static final l:I = 0x22b8

.field public static final m:I = 0x270f

.field public static final n:I = 0x457


# virtual methods
.method public abstract addPermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pingDummyService(ILjava/lang/String;)I
.end method

.method public abstract removePermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDummyServiceCallback(Lcom/tencent/tmsecure/module/permission/IDummyServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePermissionTable(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
