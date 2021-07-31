.class public abstract Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;
.super Landroid/os/Binder;
.source "ICustomerWhiteListService.java"

# interfaces
.implements Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.lenovo.performancecenter.framework.ICustomerWhiteListService"

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.lenovo.performancecenter.framework.ICustomerWhiteListService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string v2, "com.lenovo.performancecenter.framework.ICustomerWhiteListService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "com.lenovo.performancecenter.framework.ICustomerWhiteListService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;->getCustomerWhiteList()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
