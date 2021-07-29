.class public interface abstract Lcom/tencent/tmsecure/module/permission/IFirewallService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/permission/IFirewallService$Proxy;,
        Lcom/tencent/tmsecure/module/permission/IFirewallService$Stub;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "tms_firewall"

.field public static final b:Ljava/lang/String; = "com.tencent.tmsecure.IFirewallService"

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3


# virtual methods
.method public abstract isNetEnable(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNetEnable(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNetEnable(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
