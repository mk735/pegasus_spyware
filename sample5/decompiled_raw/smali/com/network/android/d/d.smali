.class final Lcom/network/android/d/d;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "text"

    const-string v1, "message"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msg_id"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "thread_id"

    const-string v1, "chat_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sender"

    const-string v1, "user_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    const-string v1, "created_at"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "type"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "senderUserId"

    const-string v1, "user_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "participants"

    const-string v1, "c.members"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
