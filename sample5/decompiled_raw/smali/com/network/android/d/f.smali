.class final Lcom/network/android/d/f;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "text"

    const-string v1, "body_xml"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msg_id"

    const-string v1, "msg_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "thread_id"

    const-string v1, "convo_id"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    const-string v1, "timestamp"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "senderName"

    const-string v1, "from_dispname"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "senderUserId"

    const-string v1, "author"

    invoke-virtual {p0, v0, v1}, Lcom/network/android/d/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
