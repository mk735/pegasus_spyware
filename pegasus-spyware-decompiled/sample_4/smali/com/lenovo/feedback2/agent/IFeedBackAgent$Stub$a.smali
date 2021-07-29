.class final Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub$a;
.super Ljava/lang/Object;
.source "IFeedBackAgent.java"

# interfaces
.implements Lcom/lenovo/feedback2/agent/IFeedBackAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub$a;->a:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final received(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .locals 6
    .param p1, "message"    # Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.lenovo.feedback2.agent.IFeedBackAgent"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_1

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/lenovo/feedback2/agent/IFeedBackAgent$Stub$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    sget-object v3, Lcom/lenovo/feedback2/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/feedback2/message/Message;

    .line 114
    .local v2, "_result":Lcom/lenovo/feedback2/message/Message;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Lcom/lenovo/feedback2/message/Message;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    return-object v2

    .line 104
    .end local v2    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw v3

    .line 112
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/lenovo/feedback2/message/Message;
    goto :goto_1
.end method
