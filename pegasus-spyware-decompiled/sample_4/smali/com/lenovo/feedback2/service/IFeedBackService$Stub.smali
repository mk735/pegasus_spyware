.class public abstract Lcom/lenovo/feedback2/service/IFeedBackService$Stub;
.super Landroid/os/Binder;
.source "IFeedBackService.java"

# interfaces
.implements Lcom/lenovo/feedback2/service/IFeedBackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/service/IFeedBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/feedback2/service/IFeedBackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/feedback2/service/IFeedBackService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/feedback2/service/IFeedBackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lenovo/feedback2/service/IFeedBackService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Lcom/lenovo/feedback2/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/feedback2/message/Message;

    .line 55
    .local v0, "_arg0":Lcom/lenovo/feedback2/message/Message;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/feedback2/service/IFeedBackService$Stub;->send(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;

    move-result-object v3

    .line 56
    .local v3, "_result":Lcom/lenovo/feedback2/message/Message;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v3, p3, v4}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    :goto_2
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v0, p3, v4}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/lenovo/feedback2/message/Message;
    .end local v3    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lenovo/feedback2/message/Message;
    goto :goto_1

    .line 62
    .restart local v3    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Lcom/lenovo/feedback2/message/Message;
    .end local v3    # "_result":Lcom/lenovo/feedback2/message/Message;
    :sswitch_2
    const-string v5, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/feedback2/agent/IFeedBackAgent;

    move-result-object v2

    .line 82
    .local v2, "_arg2":Lcom/lenovo/feedback2/agent/IFeedBackAgent;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/feedback2/service/IFeedBackService$Stub;->setAgentCallBack(ILjava/lang/String;Lcom/lenovo/feedback2/agent/IFeedBackAgent;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/lenovo/feedback2/agent/IFeedBackAgent;
    :sswitch_3
    const-string v5, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    sget-object v5, Lcom/lenovo/feedback2/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/feedback2/message/Message;

    .line 100
    .local v2, "_arg2":Lcom/lenovo/feedback2/message/Message;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/feedback2/service/IFeedBackService$Stub;->callAgent(ILjava/lang/String;Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;

    move-result-object v3

    .line 101
    .restart local v3    # "_result":Lcom/lenovo/feedback2/message/Message;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v3, :cond_4

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v3, p3, v4}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    :goto_4
    if-eqz v2, :cond_5

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v2, p3, v4}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 98
    .end local v2    # "_arg2":Lcom/lenovo/feedback2/message/Message;
    .end local v3    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lenovo/feedback2/message/Message;
    goto :goto_3

    .line 107
    .restart local v3    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 114
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
