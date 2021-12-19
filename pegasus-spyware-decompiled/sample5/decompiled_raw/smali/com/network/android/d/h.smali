.class final Lcom/network/android/d/h;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "text"

    const-string v1, "content"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msg_id"

    const-string v1, "msg_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "thread_id"

    const-string v1, "thread"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sender"

    const-string v1, "sender_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "participants"

    const-string v1, "recipient_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    const-string v1, "created"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "senderName"

    const-string v1, "s.name"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "senderUserId"

    const-string v1, "s.username"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "receiverName"

    const-string v1, "r.name"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "receiverId"

    const-string v1, "r.username"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
