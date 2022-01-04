.class final Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;
.super Ljava/lang/Object;
.source "IFeedBackService.java"

# interfaces
.implements Lcom/lenovo/feedback2/service/IFeedBackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/service/IFeedBackService$Stub;
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
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;->a:Landroid/os/IBinder;

    .line 127
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final callAgent(ILjava/lang/String;Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .locals 6
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 197
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    if-eqz p3, :cond_1

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    sget-object v3, Lcom/lenovo/feedback2/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/feedback2/message/Message;

    .line 215
    .local v2, "_result":Lcom/lenovo/feedback2/message/Message;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p3, v1}, Lcom/lenovo/feedback2/message/Message;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-object v2

    .line 205
    .end local v2    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v3

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v3

    .line 213
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/lenovo/feedback2/message/Message;
    goto :goto_1
.end method

.method public final send(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    .locals 6
    .param p1, "message"    # Lcom/lenovo/feedback2/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    if-eqz p1, :cond_1

    .line 148
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/lenovo/feedback2/message/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_0
    iget-object v3, p0, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    sget-object v3, Lcom/lenovo/feedback2/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/feedback2/message/Message;

    .line 162
    .local v2, "_result":Lcom/lenovo/feedback2/message/Message;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {p1, v1}, Lcom/lenovo/feedback2/message/Message;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    return-object v2

    .line 152
    .end local v2    # "_result":Lcom/lenovo/feedback2/message/Message;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v3

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v3

    .line 160
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/lenovo/feedback2/message/Message;
    goto :goto_1
.end method

.method public final setAgentCallBack(ILjava/lang/String;Lcom/lenovo/feedback2/agent/IFeedBackAgent;)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/lenovo/feedback2/agent/IFeedBackAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lenovo.feedback2.service.IFeedBackService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/lenovo/feedback2/agent/IFeedBackAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 182
    iget-object v2, p0, Lcom/lenovo/feedback2/service/IFeedBackService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    return-void

    .line 181
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v2
.end method
